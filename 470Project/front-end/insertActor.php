<!DOCTYPE html>
<head>
<link href="style/pageStyles.css" rel="stylesheet">
</head>
<body>
<?php require_once 'includes/navBar.php'?>
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