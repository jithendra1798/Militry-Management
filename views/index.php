<?php

     $firstname=$_POST['first_name'];
      $lastname=$_POST['last_name'];
      $soldierid=$_POST['soldier_id'];
      $email=$_POST['email'];
      $password=$_POST['password'];
      $number=$_POST['number'];
      $rank=$_POST['rank'];
     $server="localhost";
     $username="root";
     $passwordh="";
     $db="mitry_db";
     
     $con=mysqli_connect($server,$username,$passwordh,$db);

     if(!$con)
     {
         die("conection faild".mysqli_connect_error());
     }
    else{
        $stmt=$con->prepare("insert into register (first_name,last_name,soldier_id,email,password,phone_no,soldier_rank) values (?,?,?,?,?,?,?)");
        $stmt->bind_param("ssissss",$firstname, $lastname,$soldierid,$email,$password,$number,$rank); 
        $stmt->execute();
        echo "sucessfully register";
        $stmt->close();
        $con->close();
    }
?>