<?php $connect = mysqli_connect('127.0.0.1', 'root', '', 'ghg');
$query = mysqli_query($connect, "INSERT INTO game3 (header, text, user_id) VALUES ('" . $_POST['header'] . "', '" . $_POST['text'] . "', '" . $_POST['id'] . "')");
header("Location: http://insta/check.php?id=" . $_POST['id']);
 ?>
