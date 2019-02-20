<?php 
$servername ="localhost";
$dbname="itemsdb";
$username="root";
$password="";
try{
    $itemno=$_POST['itemno'];
    $itemname=$_POST['itemname'];   
    $itemprice=$_POST['itemprice']; 
    
    $conn= new PDO("mysql:host=$servername;dbname=$dbname" ,$username,$password);
    $conn->setAttribute(PDO::ATTR_ERRMODE,
     PDO::ERRMODE_EXCEPTION);
    
    $sql ="INSERT INTO items (itemno,itemname,itemprice) 
    VALUES(:itemno, :itemname, :itemprice)";
    $stmt=$conn->prepare($sql);
    $stmt->bindParam(':itemno',$itemno);
    $stmt->bindParam(':itemname',$itemname);
    $stmt->bindParam(':itemprice',$itemprice);
    if ($stmt->execute()) //
{
echo "record added successfully";
}
}
catch(PDOEXCEPTION $e)
{
    echo $e->getMessage();
}
$conn=null;
?>