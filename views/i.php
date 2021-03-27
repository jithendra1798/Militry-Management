<html>
<head>
<title>Individual weapons details</title>
</head>
<body>
        <div >
<center><font color="black">
<b>Enter weapon id</b></font><br><br>
<form action="i_wepons.php" method="post">
<input class="inputvalues" type="text" placeholder="weapon id" name="w_id" required/><br><br>
	<input type="submit" id="submit_btn" name="submit_btn"><br><br>
	</form>
	</center>
	</div>
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

$sql = "SELECT * FROM weapons as w join manufacturing on w.W_id=m.w_id as m join catagory as c on w.name=c.name where w.W_id='$w_id';";
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
