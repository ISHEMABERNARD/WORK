x<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="nav.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>INSERT MARKS</title>
</head>
<body>
<div class="container pt-5" >
    <div class="d-flex justify-content-between" style="border-bottom: 1px solid black;">
       <button class="tablink"><a href="#">HOME</a></button>
    <button class="tablink" ><a  href="studentlist.php">STUDENT LIST</a></button>
    <button class="tablink"><a href="markslist.php">MARKS LIST</a></button>
    <button class="tablink"><a href="student.php">INSERT STUDENT</a></button>
    </div>
            <?php
            $sid=$_GET['studentid'];
            $connect=mysqli_connect("localhost","root","","school");
            $sql="SELECT * FROM student WHERE sid='$sid'";
            $result=mysqli_query($connect,$sql);
            while($rw=mysqli_fetch_assoc($result)){
                $name=$rw['sname'];
                $level=$rw['level'];
            }
            
            ?>
            <h2 class="pt-5 text-primary">Name:<?php echo "<b style='color:black;'>".$name."<b>";?></h2>
            <h2 class="pt-2 text-primary">level:<?php echo "<b style='color:black;'>".$level."<b>";?></h2>
    </div>
    <div class="d-flex justify-content-center mt-5">
        <br>
        <fieldset class="border border-primary p-5">

        
            <form action="" method="POST">
            <table width="700px">
                <tr>
                    <td><h2>MODULE:</h2><input type="text" class="form-control w-75" name="module" required></td>
                    <td><h2>YEAR:</h2><select name="year" class="form-control w-50" required>
                        <option value="">-SELECT YEAR-</option>
                        <option value="2025">2025</option>
                        <option value="2024">2024</option>
                        <option value="2023">2023</option>
                        <option value="2022">2022</option>
                        <option value="2021">2021-</option>
                        <option value="2020">2020</option>
                        <option value="2019">2019</option>

                    </select> 
                    </td>
                </tr>
                <tr>
                    <td><h2>TERM:</h2><select name="term" class="form-control w-50" required>
                        <option value="">-SELECT TERM-</option>
                        <option value="1ST TERM">1ST TERM</option>
                        <option value="2ND TERM">2ND  TERM</option>
                        <option value="3RD TERM">3RD TERM</option>
                    </select></td><td><h2>SCORE:</h2><input type="numbers" class="form-control w-75" name="score" required></td>
                </tr>
            </table>

        <button type="submit" name="save" class="btn btn-primary mt-5">INSERT MARKS</button>
</form>    
    </fieldset>
    </div>
    <?php
    if(isset($_POST["save"])){

        $module=$_POST["module"];
        $year=$_POST["year"];
        $term=$_POST["term"];
        $score=$_POST["score"];

        $connect=mysqli_connect("localhost","root","","school");

        mysqli_query($connect,"INSERT INTO marks VALUES('','$sid','$module','$year','$term','$score')");
        header("location: markslist.php"); 
    }

      /*  if(empty($module)){
            echo"<h5>MODULE Field is empty</h5>";
            if(empty($year)){
                echo"<h5>YEAR Field is empty</h5>";
                if(empty($term)){
                    echo"<h5>TERM Field is empty</h5>";
                    if(empty($sex)){
                        echo"<h5>SEX Field is empty</h5>";
                    }*/

  
    ?>
    
</body>
</html>