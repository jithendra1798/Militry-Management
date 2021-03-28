<html>
<head>
<title>weapons details</title>
</head>
<body>
<form>
<div>
<?php

echo"<center><h1>all weapons details are shown below</h1></center>";
$servername = "localhost";
$username = "root";
$password="";
$dbname = "mitry_db";

// Create connection
$conn = mysqli_connect($servername,$username,$password,$dbname);
// Check connection
if ($conn->connect_error) {
echo "<script>alert('Invalid credentials');</script>";
} 

$sql = "SELECT * FROM weapons as w join manufacturing as m  on W.w_id=m.w_id ;";
$result = $conn->query($sql);

if ($result !== false && $result->num_rows > 0) {
    
    echo "<center><table><tr><th> weapons id </th><th> name  </th><th> manufecturing date </th></tr>";
    while($row = $result->fetch_assoc()) {
     echo "<tr><td>".$row["W_id"]."</td><td>".$row["name"]."</td><td>".$row["manufacturing_date"]."</td></tr>";
     echo "<br>";
	
    }

      echo "</table></center>";
  
}

 else {
    echo "0 results";
}



?>	
</div>	<br><br><br>
	<a href="xx.php"> <input type="button" id="submit_btn" value="back"></a>
</form>
</body>
</html>