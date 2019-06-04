<?php $connect = mysqli_connect('127.0.0.1', 'root', '', 'ghg');
$query = mysqli_query($connect, "INSERT INTO game2 (email, fio, login, password) VALUES ('". $_POST['email'] ."', '". $_POST['fio'] ."', '". $_POST['login'] ."', '". $_POST['password'] ."')");
mail($_POST['email'], 'Здраствуйте', "'Вы успешно зарегистрировались на instagramm ваш емаил ".$_POST['email']."'");
header('Location: http://insta/login.php'); ?>
