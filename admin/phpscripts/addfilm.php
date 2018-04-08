<?php
  function addMovie($cover, $title, $year, $run, $story, $trailer, $release){
include('connect.php');
if ($cover['type'] == "image/jpg" || $cover['type'] == "image/jpeg" && $trailer['type'] == "video/mp4" || $trailer['type'] == "video/mp4") {
$targetpath = "../images/{$cover['name']}";
$targetpath2 = "../videos/{$trailer['name']}";




  if (move_uploaded_file($cover['tmp_name'], $targetpath)) {
    // echo "File transfer complete.";
    $th_copy = "../images/TH_{$cover['name']}";
    if (!copy($targetpath, $th_copy)) {
      $message = "Wrong Files";
      return $message;
    }






      if (move_uploaded_file($trailer['tmp_name2'], $targetpath2)) {
        $th_copy2 = "../videos/DM_{$trailer['name']}";
        if (!copy($targetpath2, $th_copy2)) {
          $message2 = "Not good";
          return $message2;
        }
      }








    //add to database
    $qstring = "INSERT INTO tbl_movies VALUES(NULL, '{$cover['name']}','{$title}','{$year}','{$run}','{$story}','{$trailer['name']}','{$release}')";
    // echo $qstring;
    $result = mysqli_query($link, $qstring);
    if($result){
      $qstring2 = "SELECT * FROM tbl_movies ORDER BY movies_id DESC LIMIT 1";
      $result2 = mysqli_query($link, $qstring2);
      $row = mysqli_fetch_array($result2);
      $lastID = $row['movies_id'];
      // echo $lastID;
      $qstring3 = "INSERT INTO tbl_mov_genre VALUES(NULL, {$lastID}, {$genre})";
      $result3 = mysqli_query($link, $qstring3);
    }
    redirect_to("admin_index.php");
    echo "Your movie is added to the list succesfully! Enjoy!";

  }

}

else {
  echo "no gifs please upload right format.";
}
mysqli_close($link);
  }
 ?>
