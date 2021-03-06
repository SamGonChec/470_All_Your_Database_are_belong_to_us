<?php
	require_once 'includes/dbinclude.php';
		$displayMovies = 'select movie_title, genre_name, movie_description, director_name, year_published, movie_duration,GROUP_CONCAT(genre_name) AS genre
						from movies
						INNER JOIN directors ON movies.movie_director_id = directors.director_id
						INNER JOIN movie_genre ON movies.movie_id = movie_genre.movie_id_fk
						INNER JOIN genres ON movie_genre.genre_id_fk = genres.genre_id
						GROUP BY movie_id;';

	$query = mysqli_query($connection, $displayMovies);
	$queryOutput = mysqli_num_rows($query);
?>

<!DOCTYPE html>
<head>
<link href="style/pageStyles.css" rel="stylesheet">
<title>Search Our Database</title>
</head>
<body>
<?php require_once 'includes/navBar.php'?>
<h1>Welcome to the search page</h1>

<form method="POST" action="searched.php">
	<input type="text" name="search" placeholder="Search">
	<button class=".button" type="submit" name="submit">Submit</button>
</form>

<?php
		if (isset($_POST['submit'])) {
		$search = mysqli_real_escape_string($connection, $_POST['search']);
		$displayMovies = "SELECT movie_title, genre_name, movie_description, director_name, year_published, movie_duration, GROUP_CONCAT(genre_name) AS genre FROM movies
		INNER JOIN directors ON movies.movie_director_id = directors.director_id
		INNER JOIN movie_genre ON movies.movie_id = movie_genre.movie_id_fk
		INNER JOIN genres ON movie_genre.genre_id_fk = genres.genre_id
		WHERE movie_title LIKE '%$search%' OR genre_name LIKE '%$search%' OR movie_description LIKE '%$search%' OR director_name LIKE '%$search%'
		OR year_published LIKE '%$search%' OR movie_duration LIKE '%$search%' GROUP BY movie_id;";
		$query = mysqli_query($connection, $displayMovies);
		$queryOutput = mysqli_num_rows($query);
		$searchedInfo = '';
		echo "Results of searching for: $search";
		if ($queryOutput > 0){
			$searchedInfo .= "<table class='table table-bordered' align='left'>
					<thead>
					<tr>
					<th>Movie Title</th>
					<th>Movie Genre</th>
					<th>Movie Description</th>
					<th>Movie Director</th>
					<th>Year</th>
					<th>Duration</th>
					</tr>
					</thead>";
			while ($row = mysqli_fetch_assoc($query)){
				$searchedInfo .= "
					<tr>
					<td>".$row['movie_title']."</td>
					<td>".$row['genre']."</td>
					<td>".$row['movie_description']."</td>
					<td>".$row['director_name']."</td>
					<td>".$row['year_published']."</td>
					<td>".$row['movie_duration']."</td>
					</tr>
					";
			}
			$searchedInfo .= "</table>";
			echo $searchedInfo;
		}
		else{
			echo "No matching results.";
		}
	}
	?>