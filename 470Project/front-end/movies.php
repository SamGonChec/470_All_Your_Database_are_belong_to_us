
<?php 
require_once 'includes/dbinclude.php';

try{
	$conn = new PDO("mysql:host=$dbhost;dbname=$dbname", $username, $password);
	/*$displayMovies = 'select movie_title, movie_description, movie_director_id, year_published, movie_duration
							from movies';*/
	/*$displayMovies ='select movie_title, movie_description, director_name, year_published, movie_duration
						from movies
						INNER JOIN directors ON movies.movie_director_id = directors.director_id;';*/
	$displayMovies = 'select movie_id, movie_title, genre_name, movie_description, director_name, year_published, movie_duration,GROUP_CONCAT(genre_name) AS genre
						from movies
						INNER JOIN directors ON movies.movie_director_id = directors.director_id
						INNER JOIN movie_genre ON movies.movie_id = movie_genre.movie_id_fk
						INNER JOIN genres ON movie_genre.genre_id_fk = genres.genre_id
						GROUP BY movie_id;';
	$query = $conn->query($displayMovies);
	$query->setFetchMode(PDO::FETCH_ASSOC);
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

<th>Movie Genre</th>
<th>Movie Description</th>
<th>Movie Director</th>
<th>Year</th>
<th>Duration</th>
<th>Rate Movie</th>
</tr>
</thead>
<tbody>
<?php  foreach ($query->fetchAll() as $row ):?>
<tr>
<td><?php echo htmlspecialchars($row['movie_title'])?></td>
<td><?php echo htmlspecialchars($row['genre'])?></td>
<td><?php echo htmlspecialchars($row['movie_description'])?></td>
<td><?php echo htmlspecialchars($row['director_name'])?></td>
<td><?php echo htmlspecialchars($row['year_published'])?></td>
<td><?php echo htmlspecialchars($row['movie_duration'])?></td>
<td>
	<form><input type="text" id=<?php $row['movie_id'] ?> name="rating" size="2" maxlength="2"><br><br></form>
	<input type="submit" value="Submit">
</td>
  
</tr>
<?php endforeach; ?>
</tbody>

</table>
</body>
</html>
