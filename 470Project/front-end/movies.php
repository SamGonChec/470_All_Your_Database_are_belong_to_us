
<?php
require_once 'includes/dbinclude.php';

try {
	$displayMovies = 'SELECT movie_id, movie_title, genre_name, movie_description, director_name, year_published, movie_duration,GROUP_CONCAT(genre_name) AS genre
						FROM movies
						INNER JOIN directors ON movies.movie_director_id = directors.director_id
						INNER JOIN movie_genre ON movies.movie_id = movie_genre.movie_id_fk
						INNER JOIN genres ON movie_genre.genre_id_fk = genres.genre_id
						GROUP BY movie_id;';
	$query = mysqli_query($connection,$displayMovies);
} catch (PDOException $exception) {
	die("Could not connect to the database $dbname :" . $exception->getMessage());
}
if(!$query) {
        echo mysqli_error($connection);
        exit();
        }
?>
<!DOCTYPE html>

<head>
	<link href="style/pageStyles.css" rel="stylesheet">
	<title>Movie</title>
</head>

<body>
<?php require_once 'includes/navBar.php'?>
	<table class="table table-bordered" align="center">
		<thead>
			<tr>
				<th>Movie Title</th>

				<th>Movie Genre</th>
				<th>Movie Description</th>
				<th>Movie Director</th>
				<th>Year</th>
				<th>Duration</th>
				<th>Rate Movie</th>
			</tr>
		</thead>
		<tbody>
			<?php while ($row = mysqli_fetch_array($query)) : ?>
				<tr>
					<td><?php echo htmlspecialchars($row['movie_title']) ?></td>
					<td><?php echo htmlspecialchars($row['genre']) ?></td>
					<td><?php echo htmlspecialchars($row['movie_description']) ?></td>
					<td><?php echo htmlspecialchars($row['director_name']) ?></td>
					<td><?php echo htmlspecialchars($row['year_published']) ?></td>
					<td><?php echo htmlspecialchars($row['movie_duration']) ?></td>
					<td>
						<form method="post" action="movies.php"><input type="text" name="<?php echo $row['movie_id'];?>" size="4" maxlength="4">
						<input type="submit" name="submit" value="Submit"></form>
					</td>
						<?php if(array_key_exists($row['movie_id'], $_POST)){
							$mov_id = mysqli_real_escape_string($connection,$row['movie_id']);
							$rat = mysqli_real_escape_string($connection,$_POST[$row['movie_id']]);
							$insertRating = "INSERT INTO visitor_ratings (movie_id, rating) VALUES ($mov_id, $rat);";
							$insertQuery = mysqli_query($connection,$insertRating);
							if(!$insertQuery) {
								echo mysqli_error($connection);
								
								exit();
							}
						}?>
				</tr>
			<?php endwhile; ?>
		</tbody>

	</table>
</body>
</html>
