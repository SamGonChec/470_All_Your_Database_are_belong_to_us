
<?php
require_once 'includes/dbinclude.php';

try {
	$displayRatings = 'CALL GetRatings();';
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
	<title>Ratings</title>
</head>

<body>
<?php require_once 'includes/navBar.php'?>
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