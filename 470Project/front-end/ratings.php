<?php
require_once 'includes/dbinclude.php';

try {
	$displayRatings = 'SELECT movie_title, teen_rating, adult_rating, elder_rating, men_rating, women_rating
						from ratings
						INNER JOIN movies ON ratings.movie_id_fk = movies.movie_id;';
	$query = $query = mysqli_query($connection,$displayRatings);
	if(!$query) {
		echo mysqli_error($connection);
		exit();
		}
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
		<li><a href="search.php">Search</a></li>
	</ul>
	<table class="table table-bordered" align="center">
		<thead>
			<tr>
				<th>Movie Title</th>
				<th>Teen Ratings</th>
				<th>Adult Ratings</th>
				<th>Elder Ratings</th>
				<th>Men Ratings</th>
				<th>Women Ratings</th>
			</tr>
		</thead>
		<tbody>
			<?php while ($row = mysqli_fetch_array($query)) : ?>
				<tr>
					<td><?php echo htmlspecialchars($row['movie_title']) ?></td>
					<td><?php echo htmlspecialchars($row['teen_rating']) ?></td>
					<td><?php echo htmlspecialchars($row['adult_rating']) ?></td>
					<td><?php echo htmlspecialchars($row['elder_rating']) ?></td>
					<td><?php echo htmlspecialchars($row['men_rating']) ?></td>
					<td><?php echo htmlspecialchars($row['women_rating']) ?></td>
				</tr>
			<?php endwhile; ?>
		</tbody>

	</table>
</body>

</html>