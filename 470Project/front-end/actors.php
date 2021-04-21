<?php
require_once 'includes/dbinclude.php';

try {
	//$conn = new PDO("mysql:host=$dbhost;dbname=$dbname", $username, $password);
	/*$displayMovies = 'select movie_title, movie_description, movie_director_id, year_published, movie_duration
							from movies';*/
	$displayActors = 'select actor_fname, actor_lname, actor_dob, actor_dob_city, actor_dob_country
						from actors';
	//$displayActors = 'select * from actors where actor_name like "%James%";';			
	// $query = $conn->query($displayActors);
	// $query->setFetchMode(PDO::FETCH_ASSOC);
	$query = mysqli_query($connection,$displayActors);
	if(!$query) {
		echo mysqli_error($connection);
		exit();
		}
} catch (PDOException $exception) {
	die("Could not connect to the database $dbname :" . $exception->getMessage());
}

?>
<html>

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
				<!--<th>Movie Genre</th>-->
				<th>First Name</th>
				<th>Last Name</th>
				<th>Date Of Birth</th>
				<th>City</th>
				<th>Country</th>
			</tr>
		</thead>
		<tbody>
			<?php while ($row = mysqli_fetch_array($query)) : ?>
				<tr>
					<td><?php echo htmlspecialchars($row['actor_fname']) ?></td>
					<td><?php echo htmlspecialchars($row['actor_lname']) ?></td>
					<td><?php echo htmlspecialchars($row['actor_dob']) ?></td>
					<td><?php echo htmlspecialchars($row['actor_dob_city']) ?></td>
					<td><?php echo htmlspecialchars($row['actor_dob_country']) ?></td>
					<!--<td><?php echo htmlspecialchars($row['movie_duration']) ?></td>-->
				</tr>
			<?php endwhile; ?>
		</tbody>

	</table>
</body>

</html>