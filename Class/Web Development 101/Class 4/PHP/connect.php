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

    $sql = "SELECT * FROM Users";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
            echo "ID: " . $row["ID"]. " - Username: " . $row["Username"]. " " . $row["CoolLevel"]. " " . $row["HomePlanet"] . "<br>";
        }
    } else {
        echo "0 results";
    }
    $conn->close();
?>