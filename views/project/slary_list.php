<html>
<head>
<title>all soldier details</title>   
</head>
<body>
<form>
<div>
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "mitry_db";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM work";
$result = $conn->query($sql);

if ($result !== false && $result->num_rows>0) {
  // output data of each row
       echo "<table><tr><th> JOB type </th><th> Salary </th></tr>";
     
  while($row = $result->fetch_assoc()) {
      echo " <tr><td> ".$row["type"]." </td><td> ".$row["salary"]. "</td></tr> ";
      echo "<br>";  
    }
     echo "</table>";
} else {
  echo "0 results";
}
$conn->close();
?>
<center>
<a href="xx.php"> <input type="button" id="submit_btn" value="back"></a>
		</form></center>
</div>	<br><br><br> 


</body>
</html>
