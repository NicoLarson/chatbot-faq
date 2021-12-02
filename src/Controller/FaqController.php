<?php

require_once '../src/Model/Manager.php';
require_once '../src/Model/Faq.php';

class FaqController
{
    public function chatbot()
    {
        $db = new Manager;
        $tableauFaq = [];
        $response = $db->selectQuestionResponse();
        while ($data = $response->fetch()) {
            $faq = new Faq;
            $faq->question = $data['f_question'];
            $faq->reponse = $data['f_reponse'];
            array_push($tableauFaq, $faq);
        }

        $dataJSON = json_encode($tableauFaq);
        $file = '../public/asset/data.JSON';
        file_put_contents($file, $dataJSON);

        require '../templates/chatbotView.php';
    }
}
