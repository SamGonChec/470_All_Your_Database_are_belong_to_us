
<?php
require_once 'includes/dbinclude.php';

try {
	$displayMovies = 'CALL GetMovies();';
	$query = $query = mysqli_query($connection,$displayMovies);
} catch (PDOException $exception) {
	die("Could not connect to the database $dbname :" . $exception->getMessage());
}

?>
<!DOCTYPE html>

<head>
	<link href="style/pageStyles.css" rel="stylesheet">
</head>

<body>
	<ul>
		<li><a href="home.php">Home</a></li>
		<li><a href="movies.php">Movies</a></li>
		<li><a href="actors.php">Actors</a></li>
		<li><a href="ratings.php">Ratings</a></li>
		<li><a href="insertActor.php">Submit an Actor</a></li>
		<li><a href="searched.php">Search</a></li>
	</ul>
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
		<tbody>
			<?php while ($row = mysqli_fetch_array($query)) : ?>
				<tr>
					<td><?php echo htmlspecialchars($row['movie_title']) ?></td>
					<td><?php echo htmlspecialchars($row['genre']) ?></td>
					<td><?php echo htmlspecialchars($row['movie_description']) ?></td>
					<td><?php echo htmlspecialchars($row['director_name']) ?></td>
					<td><?php echo htmlspecialchars($row['year_published']) ?></td>
					<td><?php echo htmlspecialchars($row['movie_duration']) ?></td>
				</tr>
			<?php endwhile; ?>
		</tbody>

	</table>
</body>
</html>