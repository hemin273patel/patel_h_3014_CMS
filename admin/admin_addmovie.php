<?php
	require_once('phpscripts/config.php');
	$tbl = "tbl_genre";
	$genQuery = getAll($tbl);
	// echo $genQuery;

	if(isset($_POST['submit'])){
		$cover = $_FILES['cover'];
		$title = $_POST['movietitle'];
		$year = $_POST['movieyear'];
		$runtime = $_POST['movieruntime'];
		$storyline = $_POST['moviestoryline'];
		$trailer = $_FILES['movietrailer'];
		$release = $_POST['movierelease'];
		$genre = $_POST['genList'];
		$result = addMovie($cover, $title, $year, $runtime, $storyline, $trailer, $release);
		$message = $result;
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
	<?php if(!empty($message)){ echo $message;} ?>
	<form action="admin_addmovie.php" method="post" enctype="multipart/form-data">
		<label class="logIn">Cover Image:</label>
		<input type="file" name="cover" value="">
		<br>
		<label class="logIn">Movie Title:</label>
		<input placeholder="Enter the Title" type="text" name="movietitle" value="">
		<br><br>
		<label class="logIn">Movie Year:</label>
		<input placeholder="Enter the Year" type="text" name="movieyear" value="">
		<br><br>
		<label class="logIn">Movie Runtime:</label>
		<input placeholder="Enter the Runtime" type="text" name="movieruntime" value="">
		<br><br>
		<label class="logIn">Movie Storyline:</label>
		<input placeholder="Enter the Storyline" type="text" name="moviestoryline" value="">
		<br><br>
		<label class="logIn">Movie Trailer:</label>
		<input type="file" name="movietrailer" value="">
		<br><br>
		<label class="logIn">Movie Release:</label>
		<input placeholder="Enter the Release Year" type="text" name="movierelease" value="">
		<br><br>
		<select name="genList">
			<option>Please select the movie genre</option>
			<?php while ($row = mysqli_fetch_array($genQuery)) {
				echo "<option value=\"{$row['genre_id']}\">{$row['genre_name']}</option>";
			} ?>
		</select>
		<input class="signIn" type="submit" name="submit" value="Add Movie">
	</form>


	<script src="js/vendor/jquery.js"></script>
	<script src="js/vendor/what-input.js"></script>
	<script src="js/vendor/foundation.min.js"></script>
	<script>
	      $(document).foundation();
	</script>
</body>
</html>
