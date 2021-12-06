<?php

require_once '../src/Model/Manager.php';
require_once '../src/Model/Faq.php';

class FaqController
{
    public function chatbot()
    {
        $db = new Manager;
        $tableauFaq = [];

        // Récupération des données
        $response = $db->selectQuestionResponse();

        // Conversion de données en objets
        while ($data = $response->fetch()) {
            $faq = new Faq;
            $faq->question = $data['f_question'];
            $faq->reponse = $data['f_reponse'];
            array_push($tableauFaq, $faq);
        }

        // Conversion de tableau d'objets en JSON
        $dataJSON = json_encode($tableauFaq);

        // Écriture dans le fichier data.JSON
        $file = '../public/asset/data.JSON';
        file_put_contents($file, $dataJSON);

        require '../templates/chatbotView.php';
    }
}
