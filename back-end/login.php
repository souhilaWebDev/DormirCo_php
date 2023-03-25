<?php 
session_start();
require('../class/verification.php');
require('../class/database.php');
require('./config.php');

$verif = new Verification();
// Verifier l'email et vérifier en base de donnée si il l'existe
$verif->Email($_POST['email']); 
// Récuperer si utilisateur existe
// init object class database
$database = new Database();
// connexion bdd
$pdo = $database->connectDb();
// create select requete
$result = $database->select($pdo, '*', 'users', ['email', $_POST['email']]);
// formalisation du résultat
$result = $result->fetchAll();
// Verfier si l'email de l'utilisateur existe 
if (count($result) <= 0) {
    $verif->setArray(["Email/Mot de passe invalide"]);
}

if (count($verif->getArray()) > 0) {
    return header('Location: '.URL.'/login.php?error='.$verif->getIndexError(0).'&email='.$_POST['email']);
    // return header('Location: http://localhost/login.php?error='.$verif->getIndexError(0).'&email='.$_POST['email']);
}

$verif->PasswordVerify($result[0]['password'], $_POST['password']);

if (count($verif->getArray()) > 0) {
    return header('Location:'.URL.'/login.php?error='.$verif->getIndexError(0).'&email='.$_POST['email']);
}


// 1 ) download le phpmailer 

// 2 ) je creer un fichier config.php

// 3 ) je créer mes identifiants gmail en cherchant mot de passe de mes applications 

// 4 ) je copie exemple de phpmailer et je creer une class avec une methode

// 5 ) je creer un email en html

// 6 ) je remplis le login afin d'envoyer un email qaund je me connecte 



$_SESSION['email'] = $_POST['email'];
// $email = Email::sendEmail($authEmail, $authPassword, "busi.travail@gmail.com", "Parainnage bousorama", "../email/email.html");

// if ($email) {
//     echo "<script>window.location.assign('/search.php')</script>";
//     return;
// }
// echo "<script>window.location.assign(".URL."'/search.php')</script>";
header('Location: '.URL.'/search.php'); 

?>