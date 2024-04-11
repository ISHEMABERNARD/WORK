<!DOCTYPE html>
<html>
<head>
	<title>Home | Account Page</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<div class="container">
		<div class="header"><h2>Create a New Account Here</h2></div>
		<div class="content">
			<form method="post" action="">
				<ul>
					<li><label>Trainers Names</label></li>
					<li><input type="text" name="fname"></li>
					<li><label>User Name</label></li>
					<li><input type="text" name="uname"></li>
					<li><label>Password</label></li>
					<li><input type="password" name="password"></li>
					<li><button name="btn">Create</button></li>
					<li><a href="login.php">Already have an Account? Log in Here</a></li>
					<li><label>
						<?php
                        $connect= mysqli_connect("localhost","root","","group2");
						if (isset($_POST["btn"])) {
						$fname = $_POST["fname"];
						$uname = $_POST["uname"];
						$password = $_POST["password"];

						$insert= "INSERT INTO admin (fullnames,username,password) VALUES('$fname','$uname','$password')";
						$query= mysqli_query($connect,$insert);

						}
					
						 ?>
						
					</li>

				</ul>
			</form>
		</div>
</body>
</html>
