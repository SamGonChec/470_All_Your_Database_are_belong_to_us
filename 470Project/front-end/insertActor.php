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
    <form action="includes/actorInserter.php" method="post">
    
        <input type="text" name="actor_fname" placeholder="First Name">
        <input type="text" name="actor_lname" placeholder="Last Name">
        <input type="text" name="actor_dob" placeholder="Date of Birth">
        <input type="text" name="actor_dob_city" placeholder="city">
        <input type="text" name="actor_dob_country" placeholder="country">
        <button type="submit" name="submit">Insert</button>
    </form>
</body>

</html>