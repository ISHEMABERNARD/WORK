<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>STUDENTLIST</title>
<link rel="stylesheet" href="css/bootstrap.css">
        <style>
        body{
font-family: sans-serif;            
        }
        </style>

</head>
<body>
<div class="container pt-5" >
    <div class="d-flex justify-content-between" style="border-bottom: 1px solid black;">
        <h2 class="text-center">STUDENT LIST</h2>
            <h2><a href="student.php">Insert A Student</a></h2>
    </div>
    <div class="table">
        <center>
       <table border="1" width="600px" class="mt-4">
        <tr style="font-family: cursive;"> 
            <th>ST_ID</th>
            <th>STUDENT NAMES</th>
            <th>AGE</th>
            <th>SEX</th>
            <th>LEVEL</th>
            <th>OPTION</th>
        </tr>


    
        <?php
        //connection
         $connect=mysqli_connect("localhost","root","","school");
         //query
         $result=mysqli_query($connect,"SELECT * FROM student");
         
         while($rows=mysqli_fetch_assoc($result)){
        ?>
        <tr>
            <td><?php echo $rows['sid']?></td>
            <td><?php echo $rows['sname']?></td>
            <td><?php echo $rows['age']?></td>
            <td><?php echo $rows['sex']?></td>
            <td><?php echo $rows['level']?></td>
            <td><a href="marks.php?studentid=<?php echo $rows["sid"]?>">Enter score</a></td>
        </tr>
        <?php
        }
        ?>
        </table>  
    </div>
    
</body>
</html>