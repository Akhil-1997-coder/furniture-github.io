<?php

$server='localhost';
$user='root';
$password='';
$db='furniture';

$conn =mysqli_connect($server,$user,$password,$db);
if(!$conn)
{
    echo"Not Connected to Database.mysqli_connect_error()";
}
// echo"Database Connected Successfull";


?>