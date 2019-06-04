<!-- это рег пхп -->
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
	<title>fas</title>
</head>
<body>
	<img src="images/2.png" style="width: 30%; height: 30%">
<div class="row">
	<div class="col-5">

	<img src="images/1.PNG">
</div>
<div class="col-5">
	<form action="reg.php" method="POST">
		<input placeholder="емаил" type="" name="email">
		<input placeholder="имя и фамилия" type="" name="fio">
		<input placeholder="имя пользователя" type="" name="login">
		<input placeholder="пароль" type="" name="password">
		<button>Зарегистрироваться</button>
	</form>
</div>
<div>
	<a href="login.php">Войти</a>
</div>
</div>

</body>
</html>