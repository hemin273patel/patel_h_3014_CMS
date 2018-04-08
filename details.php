<?php
	require_once('admin/phpscripts/config.php');
	if(isset($_GET['id'])) {
		//get the movie
		$tbl = "tbl_movies";
		$col = "movies_id";
		$id = $_GET['id'];
		$getMovie = getSingle($tbl, $col, $id);
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

	<?php
		if(!is_string($getMovie)) {
			$row=mysqli_fetch_array($getMovie);
			echo "<img class=\"setter2\" src=\"images/{$row['movies_cover']}\" alt=\"{$row['movies_title']}\">
			<p class=\"titleMov2\">{$row['movies_title']}</p>
			<p class=\"titleMov2\">{$row['movies_year']}</p>
			<p><video class=\"VideoCont\" controls width=\"400\" height=\"400\" autoplay><source src=\"videos/{$row['movies_trailer']}\" type=\"video/mp4\"></video></p>
			<p class=\"titleMov3\">{$row['movies_storyline']}</p>
			<a class=\"signIn\" href=\"admin/admin_index.php\">Back...</a>
			";

		}else{
			echo "<p>{$getMovie}</p>";
		}

	?>

	<script src="js/vendor/jquery.js"></script>
	<script src="js/vendor/what-input.js"></script>
	<script src="js/vendor/foundation.min.js"></script>
	<script>
	      $(document).foundation();
	</script>

</body>
</html>
