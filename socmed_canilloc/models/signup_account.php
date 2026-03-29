<?php
session_start();
include '../db/dbconnect.php';

$email = $con->real_escape_string($_POST['email']);
$firstname = $con->real_escape_string($_POST['firstname']);
$lastname = $con->real_escape_string($_POST['lastname']);
$password = ($_POST['password']);
$conpass = ($_POST['conpass']);

if($password !== $conpass){
    header("Location: ../signup.php?error=password_mismatch");
    exit;
}
$hash = password_hash($password, PASSWORD_DEFAULT);

$sql = "INSERT INTO account (email, firstname, lastname, password) 
        VALUES ('$email', '$firstname', '$lastname', '$hash')";

if($con->query($sql) === TRUE){

    $aid = $con->insert_id;

    $_SESSION['aid'] = $aid;
    $_SESSION['firstname'] = $firstname;
    $_SESSION['lastname'] = $lastname;
    $_SESSION['email'] = $email;

    header("Location: ../profile.php");
    exit;
} else {
    header("Location: ../signup.php?error=insert_failed");
    exit;
}