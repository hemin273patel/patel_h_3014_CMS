<?php
	require_once('admin/phpscripts/config.php');

	if(isset($_GET['filter'])){
		$tbl = "tbl_movies";
		$tbl2 = "tbl_genre";
		$tbl3 = "tbl_mov_genre";
		$col = "movies_id";
		$col2 = "genre_id";
		$col3 = "genre_name";
		$filter = "action";
		$getMovies = filterResults($tbl, $tbl2, $tbl3, $col, $col2, $col3, $filter);
	}else{
		$tbl = "tbl_movies";
		$getMovies = getAll($tbl);
	}
?>
<!doctype html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>MOVIEMONSTER</title>
    <link rel="stylesheet" href="css/foundation.css" />
    <link rel="stylesheet" href="css/app.css"/>
</head>
<body>
  <div class="grid-x grid-padding-x">
    <div class="small-6 cell">
      <img class="logo" src="images/logo.png" alt="logoImage">
    </div>
    <div class="small-6 cell">
      <p class="mainHead">Welcome Movie Fans.</p>
      <p class="promo">Just sign in and enjoy.</p>
    </div>
    <div class="small-12 cell">
      <p class="mainHead">Enjoy the latest movie online♪.</p>
      <a class="signIn" href="admin/admin_login.php">Sign In</a>
    </div>
    <div class="small-12 cell">
      <p class="mainHead">No Fees for Sign Up. <br>Just Enjoy <span>The Show.</span></p>
    </div>
  </div>

	<footer class="grid-x grid-padding-x">
		<div class="small-6 cell socCon">
			<a target="_blank" href="https://www.facebook.com"><img width="40" height="40" src="images/fb.png" alt="Facebook"></a>
      <a target="_blank" href="https://twitter.com/"><img width="40" height="40" src="images/twitter.png" alt="twitter"></a>
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
