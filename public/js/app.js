document.addEventListener("DOMContentLoaded", () => {
  const conversation = document.querySelector("#conversation");
  let nom = document.querySelector("#nom");
  const message = document.querySelector("#message");
  const btnEnvoyer = document.querySelector("main fieldset form button");
  let suggestionContent = document.querySelector("#suggestion");
  let faq;

  const xmlhttp = new XMLHttpRequest();
  xmlhttp.onload = function () {
    const myFaq = JSON.parse(this.responseText);
    faq = myFaq;
  };
  xmlhttp.open("GET", "./asset/data.JSON");
  xmlhttp.send();

  btnEnvoyer.addEventListener("click", () => {
    conversation.innerHTML += ` <p class="user-message"><span class="nom"><i class="fas fa-user"></i> ${nom.value}</span><span class="message">${message.value}</span></p>

        <p class="bot-message"><span class="nom"><i class="fas fa-robot"></i> Mr.Robot</span> <span>Que voulez vous?</span> </p>`;
  });

  //TODO: Auto suggestion
  // valider ou non un message suggéré
  
  // Un mot clée a plus de 4 charactères
  let findKeyWord = (sentence) => {
    let tab = sentence.split(" ");
    for (let i = 0; i < tab.length; i++) {
      if (tab[i].length < 4) {
        tab.splice(i,1);
      }
    }
    return tab;
  };

    // Match en fonction des mots clés
let findQuestionsByKeyWords = (keyWords, questions) =>{
return
}
  console.log(findQuestionsByKeyWords(['salaire','alert','stage'],['Comment trouver un bon salaire', 'Combien de stage et de salaire...', 'Me donner une alert quand je recois mon salaire .', 'salaire et stage']));

  let questionSuggestion = "";
  message.addEventListener("keyup", () => {
    if (message.value != "") {
      for (let i = 0; i < faq.length; i++) {
        var questionMessage = faq[i].question;
        let regex = new RegExp(".*" + message.value + ".*", "i");
        if (questionMessage.match(regex)) {
          for (let j = 0; j < faq.length; j++) {
            var questionMessage = faq[j].question;
            if (questionMessage.match(regex)) {
              suggestionContent.innerHTML += questionMessage + "<br />";
            }
          }
          break;
        } else {
          suggestionContent.innerHTML = "";
        }
      }
    } else {
      suggestionContent.innerHTML = "";
    }
  });

  //TODO: Gestion des erreurs
  // Contour rouge
  // Vide impossible
  //TODO: Reponse du robot

  //TODO: Simulation de typing (moment attente)
  // Apres ajout d'un message
});
