<?php
    $servername = "localhost";
    $username = "sean";
    $password = "password";
    $dbname = "sean";

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $sql = "SELECT * FROM Users WHERE Username = '" . $_GET["username"] . "'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $user = $result->fetch_assoc();
    } else {
        echo "0 results";
    }
    $conn->close();
?>

<?php 
    echo "<center><h1>Welcome to " . $user["Username"] . "'s profile!</h1></center>"; 
    echo "<center><h3>He is " . $user["CoolLevel"] . "!</h3></center>"; 
?>