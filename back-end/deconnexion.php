<?php 
session_start();
$_SESSION = [];
// renvoi vers login
header('Location: http://localhost/login.php');
?>