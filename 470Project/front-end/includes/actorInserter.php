<?php
    include_once 'dbinclude.php';
    $actor_fname = mysqli_real_escape_string($connection,$_POST['actor_fname']);
    $actor_lname = mysqli_real_escape_string($connection,$_POST['actor_lname']);
    $dob = mysqli_real_escape_string($connection,$_POST['actor_dob']);
    $actor_dob_city = mysqli_real_escape_string($connection,$_POST['actor_dob_city']);
    $actor_dob_country = mysqli_real_escape_string($connection,$_POST['actor_dob_country']);
    $actor_dob = date($dob);
    
    $insertActor = "INSERT INTO actors (actor_fname,actor_lname,actor_dob,actor_dob_city,actor_dob_country) VALUES ('$actor_fname','$actor_lname','$actor_dob','$actor_dob_city','$actor_dob_country');";
    $query = mysqli_query($connection,$insertActor);
	if(!$query) {
		echo mysqli_error($connection);
		exit();
	}

?>