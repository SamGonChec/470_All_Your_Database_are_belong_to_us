
<?php
require_once 'includes/dbinclude.php';

try {
	$displayActors = 'CALL GetActors();';
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
	<script src="scripts/dynamicRows.js"></script>
	<title>Actors</title>
</head>

<body>
	<?php require_once 'includes/navBar.php'?>
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
				<?php $i = 0; ?>
				<tr onclick="additionalInfo('<?php echo $i?>');">
					<td><?php echo htmlspecialchars($row['actor_fname']) ?></td>
					<td><?php echo htmlspecialchars($row['actor_lname']) ?></td>
					<td><?php echo htmlspecialchars($row['actor_dob']) ?></td>
					<td><?php echo htmlspecialchars($row['actor_dob_city']) ?></td>
					<td><?php echo htmlspecialchars($row['actor_dob_country']) ?></td>
					<!--<td><?php echo htmlspecialchars($row['movie_duration']) ?></td>-->
				</tr>
				<!-- <tr id="<?php echo $i?>" >
					<td><?php echo htmlspecialchars($row['actor_fname']) ?></td>
				</tr> -->
				<?php $i++ ?>
			<?php endwhile; ?>
		</tbody>

	</table>
</body>

</html>
