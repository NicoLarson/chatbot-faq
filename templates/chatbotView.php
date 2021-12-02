<?php
ob_start();
?>

<?php
var_dump($test) ?>
<fieldset>
    <legend>Chatbot</legend>
    <div id="conversation">
    </div>
    <br />
    <p id="suggestion"></p>
    <form action="#" method="post" id="conv">
        <input type="text" name="nom" id="nom" size="6" placeholder="Nom">
        <input type="text" name="message" id="message" size="27" placeholder="Message">
        <button type="button"><i class="far fa-comment-dots"></i></button>
    </form>
</fieldset>
<?php
$content = ob_get_clean();
require '../templates/base.php';
?>