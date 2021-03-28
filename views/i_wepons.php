<html>
<head>
<title>Individual weapons details</title>
</head>
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
<body>
<form>
<div >
<?php

$servername = "localhost";
$username = "root";
$password="";
$dbname = "mitry_db";
$w_id =$_POST['w_id'];

// Create connection
$conn = mysqli_connect($servername,$username,$password,$dbname);
// Check connection
if ($conn->connect_error) {
echo "<script>alert('Invalid credentials');</script>";
} 

$sql = "SELECT * FROM weapons as w join manufacturing as m on w.W_id=m.w_id  join catagory as c on w.name=c.name where w.W_id='$w_id';";
$result = $conn->query($sql);

if ( $result !== false && $result->num_rows > 0) {
    
    echo "<center><h1>details of weapon ".$w_id."</h1></center>";
    echo  "<br><br><br>";
    while($row = $result->fetch_assoc()) {
     
 echo	"<table>
  <tr>
    <th>weapons id</th>
    <td>".$row['W_id']."</td>
  </tr>
  <tr>
  <th>weapon name</th>
    <td>".$row['name']."</td>
  </tr>
  <tr>
   <th>date of manufectured</th>
    <td>".$row['manufacturing_date']."</td>
  </tr>
  <tr>
   <th>maufecturing location</th>
    <td>".$row['manufacturing_location']."</td>
  </tr>
  <tr>
   <th>company name</th>
    <td>".$row['c_name']."</td>
  </tr>
  <tr>
  <th> weapons catagory :</th>
    <td>".$row['class']."</td>
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
