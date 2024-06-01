<?php
session_start();
error_reporting(0);
include '../connection.php';
if (strlen($_SESSION['admin_panel_login']) == 0) {
    header('location:logout.php');
} else {

    $eid = $_GET['eid']; //

    if (isset($_POST['submit'])) {

        $status = $_POST['status'];

        $sql = mysqli_query($conn, "update test_quiz set status='$status' where eid='$eid' ");

        header("location:manage_Test.php");
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
<?php include 'top-header.php';?>
<!--header end-->
<!--sidebar start-->
<?php include 'menu-bar.php';?>
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


                    <header class="panel-heading">
                        Test Quiz
                    </header>
                    <div class="panel-body">
                        <div class="position-center">
                            <form  role="form" method="post">
                         <?php

    $query = mysqli_query($conn, "select * from test_quiz where eid='$eid'");

    while ($row = mysqli_fetch_array($query)) {

        ?>

                 <div class="form-group">
                    <label > Test Quiz Status</label>
                    <select name="status" class="form-control"   required>
                       

                        <option value="enabled" <?php if ($row['status'] == 'enabled') { echo "selected"; }?>>Enable</option>
                        <option value="disabled" <?php if ($row['status'] == 'disabled') { echo "selected"; }?>>Disable</option>

                        </select>
                  </div>
                          <?php }?>

                            <div class="form-group">
                                <div class="col-lg-offset-3 col-lg-9">
                                    <button type="submit" class="btn btn-danger" name="submit">Update</button>
                                </div>
                            </div>
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
		  <?php include 'footer.php';?>
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
<?php }?>
