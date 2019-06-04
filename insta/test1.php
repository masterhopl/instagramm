<?php $connect = mysqli_connect('127.0.0.1', 'root', '', 'ghg');
$query = mysqli_query($connect,"SELECT * FROM game2 where login = '".$_POST['login']."' AND password = '".$_POST['password']."'");
$user=$query->fetch_assoc();
		if ($query->num_rows == 0) {
			header("Locayion: http://insta/login.php");
		}else{
			header("Location: http://insta/check.php?id=" . $user['id'] . "");
		}
?>

