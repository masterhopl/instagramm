<!-- это чек пхп -->
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<style type="text/css">
	button{
		margin: 3px;
	}

	</style>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
	<title></title>
</head>
<body>
	<?php $connect = mysqli_connect('127.0.0.1', 'root', '', 'ghg');
	$query1 = mysqli_query($connect, "SELECT * FROM game3 INNER JOIN game2 ON game3.user_id = game2.id");
	$query2 = mysqli_query($connect, "SELECT * FROM game2 WHERE id = '" . $_GET['id'] . "' ");
	$logo1 = $query2->fetch_assoc();
	?>
<form method="POST" action="insert.php">
			<button>
				добавить пост
			</button>
			<input placeholder="заголовок" name="header">
			<input placeholder="текcт" name="text">
			<?php echo '<input name="id" value="' . $logo1['id'] . '"> '; ?>
</form>
<?php echo 'Добро пожаловать ' . $logo1['fio'] ?>
	<?php for($i = 0; $i < $query1->num_rows; $i++) { ?>
	<div>
		<div>
			<?php $logo = $query1->fetch_assoc(); echo '<h7>' . $logo['email'] . '</h7>'; ?>
		</div>
		<div>
			<?php  echo '<h5>' . $logo['header'] . '</h5>'; ?>
		</div>
		<div>
			<?php  echo '<h5>' . $logo['text'] . '</h5>'; ?>
		</div>
	</div>	
	<?php } ?>

</body>
</html>
