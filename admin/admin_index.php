<?php
	require_once('phpscripts/config.php');
	confirm_logged_in();

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
    <link rel="stylesheet" href="../css/foundation.css" />
		<link rel="stylesheet" href="../css/app.css"/>
</head>
<body>

	<div class="grid-x grid-padding-x">
		<div class="small-12 cell">
			<h2 class="UserName">WELCOME  &nbsp;<?php echo $_SESSION['username'];  ?>!!</h2>
			<h3 class="Greets">Enjoy the latest movies.</h3>
		</div>
		<div class="small-12 cell">
			<a class="float-left signIn2" href="admin_addmovie.php">Add movies</a>
			<a class="float-right signIn2" href="phpscripts/caller.php?caller_id=logout">Sign Out</a>
		</div>


	</div>

		<div class="movieCon">
			<?php


				if(!is_string($getMovies)){
					while($row = mysqli_fetch_array($getMovies)){
						echo "<img class=\"setter\" src=\"../images/{$row['movies_cover']}\" alt=\"{$row['movies_title']}\">
							<h2 class=\"titleMov\">NAME : {$row['movies_title']}</h2>
							<p class=\"titleYear\">YEAR : {$row['movies_year']}</p>
							<a class=\"signIn3\" href=\"../details.php?id={$row['movies_id']}\">More Details About  {$row['movies_title']}...</a><br><br>
						";
					}
				}else{
					echo "<p class=\"error\">{$getMovies}</p>";
				}

			?>
		</div>








	<script src="js/vendor/jquery.js"></script>
	<script src="js/vendor/what-input.js"></script>
	<script src="js/vendor/foundation.min.js"></script>
	<script>
	      $(document).foundation();
	</script>
</body>
</html>
