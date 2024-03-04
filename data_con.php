<?php
$conn=new mysqli("mysql_db",
                "user",
                "password",
                "hydro");
if(!$conn){
	echo "Connection Failed";
}
?> 