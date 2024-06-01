<?php
session_start();
error_reporting(0);
include('../connection.php');
if (strlen($_SESSION['admin_panel_login'])==0) {
  header('location:logout.php');
  } else{
          

   if(isset($_POST['submit']))
  {

    $cid=$_GET['cid'];

    $cname=$_POST['course_name'];
    $subname=$_POST['sub_course'];


   

$sql=mysqli_query($conn,"update sub_course set courseid='$cname',sub_course='$subname' where id='$cid'");

  $_SESSION['msg']="Category Course Edited Successfully !!";
    
}
  


?>

<!DOCTYPE html>
<head>
<title>Admin panel</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="css/bootstrap.min.css" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/style-responsive.css" rel="stylesheet"/>
<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="css/font.css" type="text/css"/>
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<script src="js/jquery2.0.3.min.js"></script>
</head>
<body>
<section id="container">
<!--header start-->
<!--header start-->
<?php include'top-header.php'; ?>
<!--header end-->
<!--sidebar start-->
<?php include'menu-bar.php'; ?>
<!--sidebar end-->
<!--main content start-->
<section id="main-content">
	<section class="wrapper">
	<div class="form-w3layouts">
        <!-- page start-->
        <!-- page start-->
        <div class="row">
            
            <div class="col-lg-12">
                <section class="panel">
                    <?php if(isset($_POST['submit']))
{?>
                        <div class="alert alert-success alert-dismissible" role="alert">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span> 
                                    </button>
                                    <?php echo ($_SESSION['msg']);?>
                                    <?php echo ($_SESSION['msg']="");?>
                            </div> <?php } ?>

                    <header class="panel-heading">
                        Add Category of Course
                    </header>
                    <div class="panel-body">
                        <div class="position-center">
                            <form class="form-horizontal" role="form" method="post">
                                     <?php



                                $id=intval($_GET['cid']);

                                $query=mysqli_query($conn,"select sub_course.*,courses.coursename from sub_course join courses on courses.id=sub_course.courseid where sub_course.id='$id'");
                                while($row=mysqli_fetch_array($query))
                                {
                                ?>
                            <div class="form-group">
                                <label for="inputEmail1" class="col-lg-3 col-sm-2 control-label">Course Name</label>
                                <div class="col-lg-9">
                                   <select class="form-control show-tick" name="course_name">
                                    
                                 <option value="<?php echo ($row['id']);?>"><?php echo htmlentities($coursename=$row['coursename']);?></option>
                                   
                                <?php $ret=mysqli_query($conn,"select * from courses");
                                while($result=mysqli_fetch_array($ret))
                                {
                                echo $$course=$result['coursename'];
                                if($coursename==$$course)
                                {
                                    continue;
                                }
                                else{
                                ?>
                                <option value="<?php echo $result['id'];?>"><?php echo $result['coursename'];?></option>
                                <?php } }?>    
                                    </select>
                                    
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="inputEmail1" class="col-lg-3 col-sm-2 control-label">Category of Course Name</label>
                                <div class="col-lg-9">
                                    <input type="text" name="sub_course" class="form-control" placeholder="Enter your  Category of Course" value="<?php echo ($row['sub_course']);?>" required="">
                                    
                                </div>
                            </div>
                            
                           
                            <div class="form-group">
                                <div class="col-lg-offset-3 col-lg-9">
                                    <button type="submit" class="btn btn-danger" name="submit">Add Course</button>
                                </div>
                            </div>
                        <?php } ?>
                        </form>

                        </div>
                    </div>
                </section>

            </div>
        </div>
    

        


        <!-- page end-->
        </div>
</section>
 <!-- footer -->
		   <?php include'footer.php'; ?>
  <!-- / footer -->
</section>

<!--main content end-->
</section>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/scripts.js"></script>
<script src="js/jquery.slimscroll.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="js/jquery.scrollTo.js"></script>
</body>
</html>
<?php } ?>
