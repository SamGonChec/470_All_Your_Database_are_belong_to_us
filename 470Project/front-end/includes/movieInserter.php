<?php
    include_once 'dbinclude.php';

    $movie_title = mysqli_real_escape_string($connection,$_POST['movie_title']);
    $movie_description = mysqli_real_escape_string($connection,$_POST['movie_description']);
    $year_published = mysqli_real_escape_string($connection,$_POST['year_published']);
    $movie_duration = mysqli_real_escape_string($connection,$_POST['movie_duration']);
    $movie_director_id = mysqli_real_escape_string($connection,$_POST['director_id']);
    $genre_id = mysqli_real_escape_string($connection,$_POST['genre_id']);
    echo $movie_director_id;
    $insertMovie = "CALL insertMovie('$movie_title','$movie_description',$movie_director_id,$year_published,$movie_duration,$genre_id)";
    $query = mysqli_query($connection,$insertMovie);
	if(!$query) {
		echo mysqli_error($connection);
        
		exit();
	}
    $insertGenre = "INSERT INTO movie_genre(movie_id_fk, genre_id_fk) VALUES ()"
?>