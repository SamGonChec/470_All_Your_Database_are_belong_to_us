<?php
    require_once 'includes/dbinclude.php';
        $directorOptions = 'SELECT director_id, director_name
                        FROM directors;';
        $genre = 'SELECT genre_id, genre_name FROM genres';
        $result = mysqli_query($connection,$directorOptions);
        $genreQ = mysqli_query($connection,$genre);
        if(!$result) {
            echo mysqli_error($connection);
            exit();
        }

?>
<!DOCTYPE html>
<head>
<link href="style/pageStyles.css" rel="stylesheet">
<title>Submit a Movie</title>
</head>
<body>
<?php require_once 'includes/navBar.php'?>
    <form action="includes/movieInserter.php" method="post">
        <label>Movie Title</label>
        <input type="text" name="movie_title" placeholder="Movie Title">
        <label>Movie Genre</label>
        <select name="genre_id">
            <?php while($row = mysqli_fetch_array($genreQ)) {
                echo '<option value="'. $row['genre_id'] .'">'. $row['genre_name'] .'</option>';
            }?>
        
        </select>
        <br>
        <label>Describe The movie</label>
        <input type="text" name="movie_description" placeholder="Movie Description" size="50">
        <br>
        <label>Year published</label>
        <input type="text" name="year_published" placeholder="Format: YYYY">
        <br>
        <label>Movie Duration</label>
        <input type="text" name="movie_duration" placeholder="Duration">
        <label>Select The Director</label>
        <select name="director_id">
            <?php while($row = mysqli_fetch_array($result)) {
                echo '<option value="'. $row['director_id'] .'">'. $row['director_name'] .'</option>';
            }?>
        
        </select>
        <br>
        <button type="submit" name="submit">Insert</button>
    </form>
</body>

</html>