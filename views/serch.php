<html>
<head>
<title>Individual soldier details</title>
</head>
<body>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>login</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="../css/default.css" / rel="stylesheet" type="text/css" />
</head>
<body>
<div id="header">
	<h1><a href="#">ARMY</a></h1>
	<h2>ministry of defence</a></h2>
</div>

<div id="menu">
	
</div>
<form>
<div >
<?php

$servername = "localhost";
$username = "root";
$password="";
$dbname = "mitry_db";
$sid =$_POST['sid'];

// Create connection
$conn = mysqli_connect($servername,$username,$password,$dbname);
// Check connection
if ($conn->connect_error) {
echo "<script>alert('Invalid credentials');</script>";
} 

$sql = "SELECT * FROM soldier  where id='$sid';";
$result = $conn->query($sql);

if ( $result !== false && $result->num_rows > 0) {
    
     
    while($row = $result->fetch_assoc()) {
     
 echo	"<table>
  <tr>
    <th>soldier id</th>
    <td>".$row['id']."</td>
  </tr>
  <tr>
  <th>soldier name</th>
    <td>".$row['name']."</td>
  </tr>
  <tr>
   <th>date of joining</th>
    <td>".$row['doj']."</td>
  </tr>
  <tr>
   <th>regiment</th>
    <td>".$row['squadno']."</td>
  </tr>
  <tr>
   <th>height in cm:</th>
    <td>".$row['height']."</td>
  </tr>
  <tr>
   <th>weight in kg:</th>
    <td>".$row['weight']."</td>
  </tr>
  <tr>
   <th>chest </th>
    <td>".$row['chest']."</td>
  </tr>
  <tr>
   <th>sex </th>
    <td>".$row['sex']."</td>
  </tr>
  <tr>
   <th>date of joining</th>
    <td>".$row['dor']."</td>
  </tr>
  <tr>
   <th>date of birth</th>
    <td>".$row['birth_pincode']."</td>
  </tr>
  <tr>
  <th>soldier rank</th>
    <td>".$row['soldier_rank']."</td>
  </tr>
</table>";
  }
    }

 else {
    echo "0 results";
}
?>	
<center>
<a href="xx.php"> <input type="button" id="submit_btn" value="back"></a>
		</form></center>
</div>	<br><br><br> 

</body>
</html>
