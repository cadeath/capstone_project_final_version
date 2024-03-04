<?php
$conn=new mysqli("mysql_db",
                "root",
                "toor",
                "hydro");
if(!$conn){
	echo "Connection Failed";
}
?> 