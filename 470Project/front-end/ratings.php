
<?php 
require_once 'includes/dbinclude.php';

try{
	$conn = new PDO("mysql:host=$dbhost;dbname=$dbname", $username, $password);
	/*$displayMovies = 'select movie_title, movie_description, movie_director_id, year_published, movie_duration
							from movies';*/
	/*$displayMovies ='select movie_title, movie_description, director_name, year_published, movie_duration
						from movies
						INNER JOIN directors ON movies.movie_director_id = directors.director_id;';*/
	$displayRatings = 'SELECT movie_title, teen_rating, adult_rating, elder_rating, men_rating, women_rating
						from ratings
						INNER JOIN movies ON ratings.movie_id_fk = movies.movie_id;';
	$query = $conn->query($displayRatings);
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
<h1>Welcome to the ratings page</h1>
<table class="table table-bordered" align="center">
<thead>
<tr>
<!--<th>Movie Genre</th>-->
<th>Movie Title</th>
<th>Teen Ratings</th>
<th>Adult Ratings</th>
<th>Elder Ratings</th>
<th>Men Ratings</th>
<th>Women Ratings</th>
</tr>
</thead>
<tbody>
<?php while ($row = $query->fetch()): ?>
<tr>
<td><?php echo htmlspecialchars($row['movie_title'])?></td>
<td><?php echo htmlspecialchars($row['teen_rating'])?></td>
<td><?php echo htmlspecialchars($row['adult_rating'])?></td>
<td><?php echo htmlspecialchars($row['elder_rating'])?></td>
<td><?php echo htmlspecialchars($row['men_rating'])?></td>
<td><?php echo htmlspecialchars($row['women_rating'])?></td>
</tr>
<?php endwhile; ?>
</tbody>

</table>
</body>

</html>