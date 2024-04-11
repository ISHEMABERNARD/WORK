<!DOCTYPE html>
<html>
<head>
	<title>Home| Login Page</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class="container">
	<div class="header">
		<h2>Login Here</h2>
	</div>
	<div class="content">
		<form method="post" action="">
			<ul>
				<li><label>User Name:</label></li>
				<li><input type="text" name="uname"></li>
				<li><label>Password</label></li>
				<li><input type="Password" name="password"></li>
				<li><button name="btn">Log in</button></li>
				<li><a href="create.php">Have no account? Create Account</a></li>
				<li><label>
					<?php
					if (isset($_POST["btn"])) {
					$connect= mysqli_connect("localhost","root","","school");
					$username = $_POST["uname"];
					$password = $_POST["password"];
				
					$result = mysqli_query($connect,"SELECT * FROM student WHERE username='$username' AND password='$password'");
					if (mysqli_num_rows($result) ==1) {
						$_SESSION['mysession']=$username;
						header("location:homepage.php");
					}else{
						echo "Wrong User name or Password";
					}
				}
				?>
				</label></li>
			</ul>
		</form>
	</div>
</div>
</body>
</html>
