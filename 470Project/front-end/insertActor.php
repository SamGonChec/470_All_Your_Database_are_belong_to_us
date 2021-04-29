<!DOCTYPE html>
<head>
<link href="style/pageStyles.css" rel="stylesheet">
<title>Submit an Actor</title>
</head>
<body>
<?php require_once 'includes/navBar.php'?>
    <form action="includes/actorInserter.php" method="post">
        <label>First Name</label>
        <input type="text" name="actor_fname" placeholder="First Name">
        <label>Last Name</label>
        <input type="text" name="actor_lname" placeholder="Last Name">
        <label>Date of Birth</label>
        <input type="text" name="actor_dob" placeholder="Format YYYY-MM-DD">
        <label>City and State</label>
        <input type="text" name="actor_dob_city" placeholder="city">
        <label>Country</label>
        <input type="text" name="actor_dob_country" placeholder="country">
        <button type="submit" name="submit">Insert</button>
    </form>
</body>

</html>