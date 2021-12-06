document.addEventListener("DOMContentLoaded", () => {

  const conversation = document.querySelector("#conversation");
  const inputNom = document.querySelector("#nom");
  const inputMessage = document.querySelector("#message");
  const btnEnvoyerMessage = document.querySelector("main fieldset form button");
  const suggestionContent = document.querySelector("#suggestion");

  let faq;

  let error = 0;

  // AJAX
  const xmlhttp = new XMLHttpRequest();
  xmlhttp.onload = function () {
    const myFaq = JSON.parse(this.responseText);
    // Récupération des données du fichier data.JSON dans faq
    faq = myFaq;
  };
  xmlhttp.open("GET", "./asset/data.JSON");
  xmlhttp.send();


  let sendMessage = (message) => {
    errorChecker()
    if (error === 0) {
      conversation.innerHTML += ` <p class="user-message"><span class="nom"><i class="fas fa-user"></i> ${nom.value}</span><span class="message">${message}</span></p>
      `
      //TODO: Simulation de typing (moment attente)
      robotResponse(message, faq)

    }
    document.querySelector("#conversation p:last-child").scrollIntoView()

  }

  let robotResponse = (question, tableau) => {
    let response
    for (let i = 0; i < tableau.length; i++) {
      question == tableau[i].question ? response = tableau[i].reponse : false
    }
    if (response == undefined) {
      response = "Je ne comprend pas votre question."
    }
    conversation.innerHTML += `<p class="bot-message"><span class="nom"><i class="fas fa-robot"></i> Mr.Robot</span> <span>${response}</span> </p>`
  }

  let createLi = (text) => {
    let item = document.createElement('li')
    let paragraphe = document.createElement('p')
    let icon = document.createElement('i')
    icon.classList.add("far")
    icon.classList.add("fa-comment-dots")
    paragraphe.innerHTML = text
    item.appendChild(paragraphe)
    item.appendChild(icon)
    icon.addEventListener('click', () => {
      sendMessage(text)
      message.value = ""
      suggestionContent.innerHTML = ""
    })
    suggestionContent.appendChild(item)
  }


  let errorChecker = () => {
    if (inputNom.value == "" || inputMessage.value == "") {
      if (inputNom.value == "") {
        inputNom.className = "error"
        error = 1
      } else {
        inputNom.className = ""
      }

      if (inputMessage.value == "") {
        inputMessage.className = "error"
        error = 1
      } else {
        inputMessage.className = ""
      }
    } else {
      inputNom.className = ""
      inputMessage.className = ""
      error = 0
    }

  }

  let findKeyWords = (sentence) => {
    let tab = sentence.split(" ");
    for (let i = 0; i < tab.length; i++) {
      if (tab[i].length < 5) {
        tab.splice(i, 1);
      }
    }
    return tab;
  };

  // Match en fonction des mots clés
  let findQuestionsByKeyWords = (keyWords, faq) => {
    for (let i = 0; i < keyWords.length; i++) {
      let regex = new RegExp(".*" + keyWords[i] + ".*", "i");
      for (let j = 0; j < faq.length; j++) {
        if (faq[j].question.match(regex)) {
          createLi(faq[j].question)
          console.log(keyWords[i] + ": " + faq[j].question)
        }
      }
    }
  }

  document.addEventListener('keydown', function (event) {
    if (event.code == 'Enter') {
      sendMessage(inputMessage.value)
    }
  });

  btnEnvoyerMessage.addEventListener('click', () => {
    sendMessage(inputMessage.value)
  })

  message.addEventListener("keyup", () => {
    suggestionContent.innerHTML = ""
    let keywordsTab = findKeyWords(message.value)
    findQuestionsByKeyWords(keywordsTab, faq)

  });

});
