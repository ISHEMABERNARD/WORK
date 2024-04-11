<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="nav.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>STUDENT REGISTRATION</title>
</head>
<body>
    
<div class="container pt-5" >
    <div class="d-flex justify-content-between" style="border-bottom: 1px solid black;">
      <button class="tablink"><a href="#">HOME</a></button>
    <button class="tablink" ><a href="studentlist.php">STUDENT LIST</a></button>
    <button class="tablink"><a href="markslist.php">MARKS LIST</a></button>
    <button class="tablink"><a class="active" href="student.php">INSERT STUDENT</a></button>
    </div>

    <div class="b">
        <center><fieldset  class="border border-primary p-3 m-5">
            <form action="" method="POST">
        <h2>FULLNAME:</h2><input type="text" name="fullname" class="form-control w-25" required>
        <h2>AGE:</h2><select name="age" class="form-control w-25" required >
            <option value="">-AGE-</option>
            <option value="13">13</option>
            <option value="14">14</option>
            <option value="15">15</option>
            <option value="16">16</option>
            <option value="17">17</option>
            <option value="18">18</option>
            <option value="19">19</option>
            <option value="20">20</option>
            <option value="21">21</option>

        </select>
        <h2>SEX:</h2><select name="sex" class="form-control w-25" required>
            <option value="">-SEX-</option>
            <option value="Male">MALE</option>
            <option value="Female">FEMALE</option>
</select>
<h2>LEVEL:</h2><select name="level" class="form-control w-25" required>
            <option value="">-LEVEL-</option>
            <option value="L5 SOD">L5 SOD</option>
            <option value="L3 SOD">L3 SOD</option>
            <option value="L4 SOD">L4 SOD</option>
            <option value="L5 NET">L5 NET</option>
            <option value="L4 NET">L4 NET</option>
            <option value="L3 NET">L3 NET</option>
</select>
<button type="submit" name="save"  class="btn btn-primary mt-3">REGISTER</button>
</form>
        </fieldset>
</center>

    </div>
    <?php
    //connection 
        $connect=mysqli_connect("localhost","root","","school"); 

        //variable declaration
    if(isset($_POST["save"])){

        $fullname=$_POST["fullname"];
        $age=$_POST["age"];
        $sex=$_POST["sex"];
        $level=$_POST["level"];

        //message
        if (empty($fullname)) {
           echo "<h2>Name is empty </h2>";
        }
        else{
            //query
        mysqli_query($connect,"INSERT INTO student VALUES('','$fullname','$age','$sex','$level')");
    header("location: studentlist.php");     
}
    }
    ?>
   
  
</body>
</html> 
