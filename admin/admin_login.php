<?php
	require_once('phpscripts/config.php');
	$ip = $_SERVER['REMOTE_ADDR'];
	//echo $ip;
	if(isset($_POST['submit'])){
		//echo "Works";
		$username = trim($_POST['username']);
		$password = trim($_POST['password']);
		if($username !== "" && $password !== ""){
			$result = logIn($username, $password, $ip);
			$message = $result;
		}else{
			$message = "Please fill out the required fields.";
		}
	}
?>
<!doctype html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>MOVIEMONSTER</title>
		<link rel="stylesheet" href="../css/foundation.css" />
		<link rel="stylesheet" href="../css/app.css"/>
</head>
<body>
	<div class="grid-x grid-padding-x">
		<div class="small-6 cell">
      <img class="logo" src="../images/logo.png" alt="logoImage">
    </div>
    <div class="small-6 cell">
      <p class="mainHead">Welcome Movie Fans.</p>
      <p class="promo">Just sign in and enjoy.</p>
    </div>

		<div class="small-6 cell float-center">
			<?php if(!empty($message)){ echo $message;} ?>
			<form action="admin_login.php" method="post">
				<label class="logIn">Username :</label>
				<input placeholder="Enter Your Username" type="text" name="username" value="">
				<br>
				<label class="logIn">Password :</label>
				<input placeholder="Enter Your Password" type="password" name="password" value="">
				<br><br>
				<input type="submit" name="submit" class="signIn" value="Enjoy It Right Now.">
			</form>
		</div>








	</div>

	<footer class="grid-x grid-padding-x">
		<div class="small-6 cell socCon">
			<a target="_blank" href="https://www.facebook.com"><img width="40" height="40" src="../images/fb.png" alt="Facebook"></a>
      <a target="_blank" href="https://twitter.com/"><img width="40" height="40" src="../images/twitter.png" alt="twitter"></a>
		</div>
		<div class="small-6 cell">
			<p class="copyright"> Copyright (c) 2018 Copyright Holder All Rights Reserved.</p>
		</div>
	</footer>










	<script src="js/vendor/jquery.js"></script>
	<script src="js/vendor/what-input.js"></script>
	<script src="js/vendor/foundation.min.js"></script>
	<script>
	      $(document).foundation();
	</script>
</body>
</html>
