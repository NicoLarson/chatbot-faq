document.addEventListener('DOMContentLoaded', () => {

    const conversation = document.querySelector('#conversation')
    let nom = document.querySelector('#nom')
    const message = document.querySelector('#message')
    const btnEnvoyer = document.querySelector('main fieldset form button')
    let suggestion = document.querySelector("#suggestion")
    const faq = {}


    const xmlhttp = new XMLHttpRequest()
    xmlhttp.onload = function () {
        const myFaq = JSON.parse(this.responseText)
        faq = myFaq
    }
    xmlhttp.open("GET", "./asset/data.JSON")
    xmlhttp.send()


    btnEnvoyer.addEventListener('click', () => {
        conversation.innerHTML += ` <p class="user-message"><span class="nom"><i class="fas fa-user"></i> ${nom.value}</span><span class="message">${mess}</span></p>

        <p class="bot-message"><span class="nom"><i class="fas fa-robot"></i> Mr.Robot</span> <span>Que voulez vous?</span> </p>`
    })

    let mess = ""
    console.log(faq[4].question)
    message.addEventListener("keyup", () => {
        for (let i = 0; i < faq.length; i++) {
            var questionMessage = faq[i].question
            if (questionMessage.match(' ' + message.value + ' ')) {
                suggestion.innerHTML = questionMessage
                mess = questionMessage
                break
            } else {
                suggestion.innerHTML = ""
            }
        }

    })



})
