<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "career_guidance";

// Create connection to database
$conn = mysqli_connect($servername, $username, $password, $database);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$sql = "SELECT * FROM questions";
$result = $conn->query($sql);

$data = array();

if ($result) {
    if ($result->num_rows > 0) {
        // Output data of each row
        while ($row = $result->fetch_assoc()) {
            $data[] = $row; // Add each row to the data array
        }
    } else {
        echo "0 results";
    }
} else {
    echo "Error: " . $conn->error;
}

// Close database connection
$conn->close();

// Write data to JSON file
$jsonFilePath = 'quiz.json';
$jsonData = json_encode($data, JSON_PRETTY_PRINT);

if (file_put_contents($jsonFilePath, $jsonData)) {
    echo "Data added to JSON file successfully!";
} else {
    echo "Error writing data to JSON file.";
}
?>
