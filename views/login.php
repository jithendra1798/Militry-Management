<?php
     
    $uname=$_POST["Uname"];
    $password=$_POST["Pass"];

    $con=mysqli_connect("localhost","root","","mitry_db");

    if(!$con)
    {
        die("failed to connect".mysqli_connect_error());
    }
    else{
        $stmt=$con->prepare("select * from register where email= ?");
        $stmt->bind_param("s",$uname);
        $stmt->execute();
        $stmt_result=$stmt->get_result();
        if($stmt_result->num_rows>0)
        {   
            $data=$stmt_result->fetch_assoc();
            if($data['password'] === $password)
            {
                echo "login succsesseful";
                header('location:xx.php');
            }
            else{
                echo "invalid email or password";
            }
        }
        else{
            echo "invalid email or password";
        }

    }

?>
