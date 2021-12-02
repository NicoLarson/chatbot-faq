<?php

require '../src/Controller/FaqController.php';

$controller = new FaqController();

if (isset($_GET['action'])) {
    if ($_GET['action'] == 'chatbot') {
        $controller->chatbot();
    }
} else {
    $controller->chatbot();
}
