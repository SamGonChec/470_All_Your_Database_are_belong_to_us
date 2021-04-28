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
</head>
<body>
<?php require_once 'includes/navBar.php'?>
    <form action="includes/movieInserter.php" method="post">
    
        <input type="text" name="movie_title" placeholder="Movie Title">
        <select name="genre_id">
            <?php while($row = mysqli_fetch_array($genreQ)) {
                echo '<option value="'. $row['genre_id'] .'">'. $row['genre_name'] .'</option>';
            }?>
        
        </select>
        <br>
        <input type="text" name="movie_description" placeholder="Movie Description" size="50">
        <br>
        <input type="text" name="year_published" placeholder="Year">
        <br>
        <input type="text" name="movie_duration" placeholder="Duration">
        
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