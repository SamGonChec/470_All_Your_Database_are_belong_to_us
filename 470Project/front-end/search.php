
<?php
require_once 'includes/dbinclude.php';

	$displayMovies = 'select movie_title, genre_name, movie_description, director_name, year_published, movie_duration,GROUP_CONCAT(genre_name) AS genre
						from movies
						INNER JOIN directors ON movies.movie_director_id = directors.director_id
						INNER JOIN movie_genre ON movies.movie_id = movie_genre.movie_id_fk
						INNER JOIN genres ON movie_genre.genre_id_fk = genres.genre_id
						GROUP BY movie_id;';
	
	//$displayMovies = 'SELECT * FROM ';

	/*if (isset($_POST['submit'])) {
		$search = mysqli_real_escape_string($conn, $_POST['search']);
		$displayMovies = "select * from movies where movie_title like '%$search%' or genre like '%$search%' or movie_description like '%$search%' or director_name like '%$search%'
		 or year_published like '%$search%' movie_duration like '%$search%'";
		$query = mysqli_query($conn, $displayMovies);
		$queryOutput = mysqli_num_rows($query);

		if ($queryOutputs > 0){
			while ($row = mysqli_fetch_assoc($query)){
				echo "<table class='table table-bordered' align='center'>
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
					<tr>
					<td>htmlspecialchars(".$row['movie_title'].")</td>
					<td>htmlspecialchars(".$row['genre'].")</td>
					<td>htmlspecialchars(".$row['movie_description'].")</td>
					<td>htmlspecialchars(".$row['director_name'].")</td>
					<td>htmlspecialchars(".$row['year_published'].")</td>
					<td>htmlspecialchars(".$row['movie_duration'].")</td>
					</tr>
					</tbody>
					</table>";
			}
		}
		else{
			echo "No matching results.";
		}
	}*/
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
<h1>Welcome to the search page</h1>

<style>
.button {
	width: 60px;
	height: 23px;
	font-size: 15px;
}
</style>	
	
<form method="POST" action="searched.php">
	<input type="text" name="search" placeholder="Search">
	<button class="button" type="submit" name="submit">Submit</button>
</form>

<?php
		$query = mysqli_query($conn, $displayMovies) or die(mysql_error());
		$queryOutput = mysqli_num_rows($query);

		/*if ($queryOutputs > 0){
			while ($row = mysqli_fetch_assoc($query)){
				echo "<div>
				<h1>" .$row['movie_title']. "</h1>
				<p>" .$row['genre']. "</p>
				<p>" .$row['movie_description']. "</p>
				<p>" .$row['director_name']. "</p>
				<p>" .$row['year_published']. "</p>
				<p>" .$row['movie_duration']. "</p>
				</div>";
			}
		}*/

	?>

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
<?php
		while ($row = mysqli_fetch_assoc($query)) {?>
<tr>
<td><?php echo htmlspecialchars($row['movie_title'])?></td>
<td><?php echo htmlspecialchars($row['genre'])?></td>
<td><?php echo htmlspecialchars($row['movie_description'])?></td>
<td><?php echo htmlspecialchars($row['director_name'])?></td>
<td><?php echo htmlspecialchars($row['year_published'])?></td>
<td><?php echo htmlspecialchars($row['movie_duration'])?></td>
</tr>
<?php } ?>
</tbody>

</table>
</body>
</html>