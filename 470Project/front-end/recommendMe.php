<?php
    require_once 'includes/dbinclude.php';
        $ratingsOptions = 'SELECT movie_id_fk,teen_rating,adult_rating,elder_rating,men_rating,women_rating
                            FROM ratings;';
        $genre = 'SELECT genre_id, genre_name FROM genres';
        $result = mysqli_query($connection,$ratingsOptions);
        $genreQ = mysqli_query($connection,$genre);
        if(!$result) {
            echo mysqli_error($connection);
            exit();
        }

?>
<!DOCTYPE html>
<head>
<link href="style/pageStyles.css" rel="stylesheet">
<title>Recommend Me a Movie</title>
</head>
<body>
<?php require_once 'includes/navBar.php'?>
    <form action="recommendMe.php" method="post">
        <label>Select Your Gender</label>
        <select name="gender">
            <option value="1">Male</option>
            <option value="0">Female</option>        
        </select>
        <br>
        <label>Select Your Age Range</label>
        <select name="Age">
            <option value="0">0-25</option>
            <option value="1">26-55</option>
            <option value="2">55+</option>        
        </select>
        <br>
        <label>Select The Genre You Wished Recommended</label>
        <select name="genre_id">
            <?php while($row = mysqli_fetch_array($genreQ)) {
                echo '<option value="'. $row['genre_id'] .'">'. $row['genre_name'] .'</option>';
            }?>
        
        </select>
        <br>
        <button type="submit" name="submit">Insert</button>
    </form>
    <?php
        if(isset($_POST['Age'])){
        $age = mysqli_real_escape_string($connection,$_POST['Age']);
        $gender = mysqli_real_escape_string($connection,$_POST['gender']);
        $genre_id = mysqli_real_escape_string($connection,$_POST['genre_id']);

        $getRecommendation = "CALL recommendMovie($genre_id,$gender,$age)";
        $query = mysqli_query($connection,$getRecommendation);
        echo "<h3>Your Recommended Movie(s) are: </h3>";
        while($row = mysqli_fetch_array($query)){
        echo '<br>';   
        echo $row['movie_title'];
        echo '<br>';
        }    
        if(!$query) {
        
            echo mysqli_error($connection);

        exit();
        }
    } 
?>
</body>

</html>