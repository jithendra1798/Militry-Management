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

$sql = "SELECT * FROM medal";
$result = $conn->query($sql);

if ($result !== false && $result->num_rows>0) {
  // output data of each row
       echo "<center><table><tr><th><h1>MEDAL NAME</h1></th></tr>";
     
  while($row = $result->fetch_assoc()) {
      echo " <tr><td> ".$row["name"]."</td></tr> ";
      echo "<br>";  
    }
     echo "</table></center>";
} else {
  echo "0 results";
}
$conn->close();
?>
<br><br><br><br>
<center>
<a href="xx.php"> <input type="button" id="submit_btn" value="back"></a>
		</form></center>
</div>	<br><br><br> 


</body>
</html>
