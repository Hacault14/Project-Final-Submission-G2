<?php
session_start();
if (isset($_SESSION['status']) && isset($_SESSION['is_admin'])){
    if($_SESSION['status']=='logedin' and $_SESSION['is_admin']==0)
  {
include 'C:\wamp64\www\CourseManagementSystem\PU-Note\Controller\connection.php';
$user=$_SESSION['user'];
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if(isset($_POST['viewclick']))
    {
        if($_POST['viewclick']=='yes'){
            $semester=$_POST['semester'];
            $sql="SELECT  `course_name`,`path` FROM (SELECT * FROM `users` JOIN `enroll` on users.id=enroll.user) AS `userEnroll` JOIN course ON userEnroll.faculty=course.faculty AND userEnroll.program=course.program WHERE user='$user' AND semester='$semester' ";
            $result=$conn->query($sql);
        while($row=mysqli_fetch_array($result)){
        ?>
       <div class="mui-col-md-4">
        <div class="mui-panel mui--z1 mt-4 p-4">
        <?php echo '<h1><i class="fas fa-folder"></i>'." ".$row["course_name"]."</h1>";?>
        <br>
      
        <button class="mui-btn mui-btn--small  mui-btn--primary"  onclick='viewNote("<?php echo $row["path"];?>")'>View</button>  
        </div>
        </div>
        <?php
        }
        ?>
    
    <?php
    }
    }
}
else{
    $sql="SELECT DISTINCT `semester` FROM (SELECT * FROM `users` JOIN `enroll` on users.id=enroll.user) AS `userEnroll` JOIN course ON userEnroll.faculty=course.faculty AND userEnroll.program=course.program WHERE user='$user' ORDER BY `semester` ASC";
$result=$conn->query($sql);
while($row=mysqli_fetch_array($result)){
    ?>
   <div class="mui-col-md-4">
    <div class="mui-panel mui--z1 mt-4  p-4">
    <?php echo '<h1><i class="fas fa-folder"></i> Semester '." ".$row["semester"]."</h1>";?>
    <br>
  
    <button class="mui-btn mui-btn--small  mui-btn--primary"  onclick='viewNoteSemester(<?php echo $row["semester"];?>)'>View</button>  
    </div>
    </div>
    <?php
    }
    ?>

<?php
}
}
else
{
echo "Only User Can View This Page";
}
} 
else
{
  echo "You Must Login to have access to this page";
}
?>