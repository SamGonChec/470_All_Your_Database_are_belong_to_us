<?php
require_once 'includes/dbinclude.php';


	//$conn = new PDO("mysql:host=$dbhost;dbname=$dbname", $username, $password);
	$min = 1;
	$max = 300;
	$random = rand($min, $max);
	$displayMovies = "select rmovie_title, rmovie_description, rmovie_director, ryear_published, rmovie_duration, rmovie_genre
						from randomDailyMovie;";
	// $displayMovies = "select movie_title, genre_name, movie_description, director_name, year_published, movie_duration,GROUP_CONCAT(genre_name) AS genre
	//  					from movies LIMIT 1";
	$query = mysqli_query($connection,$displayMovies);
	if(!$query) {
		echo mysqli_error($connection);
		exit();
		}


?>
<!DOCTYPE html>

<head>
	<link href="style/pageStyles.css" rel="stylesheet">
	<title></title>
</head>

<body>
	<ul>
		<li><a href="home.php">Home</a></li>
		<li><a href="movies.php">Movies</a></li>
		<li><a href="actors.php">Actors</a></li>
		<li><a href="ratings.php">Ratings</a></li>
		<li><a href="search.php">Search</a></li>
	</ul>
	<h1>Random Movie of the Day</h1>
	<table class="table table-bordered" align="center">
	<thead>
			<tr>
				<th>Movie Title</th>
				<th>Movie Genre</th>
				<th>Movie Description</th>
				<th>Movie Director</th>
				<th>Year</th>
				<th>Duration</th>
			</tr>
		</thead>
	<?php while ($row = mysqli_fetch_array($query)) {?>
				<tr>
					<td><?php echo $row['rmovie_title'] ?></td>
					<td><?php echo $row['rmovie_genre']?></td>
					<td><?php echo $row['rmovie_description']?></td>
					<td><?php echo $row['rmovie_director'] ?></td>
					<td><?php echo $row['ryear_published'] ?></td>
					<td><?php echo $row['rmovie_duration'] ?></td>
				</tr>
			<?php } ?>
		</table>
</body>

</html>