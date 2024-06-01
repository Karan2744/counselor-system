<?php
session_start();
error_reporting(0);
include('../connection.php');
if (strlen($_SESSION['admin_panel_login'])==0) {
  header('location:logout.php');
  } else{
          

    if(isset($_POST['submit']))
{
$sql=mysqli_query($conn,"SELECT password FROM  admin where password='".md5($_POST['password'])."' && username='".$_SESSION['admin_panel_login']."'");
$num=mysqli_fetch_array($sql);
if($num>0)
{
 $con=mysqli_query($conn,"update admin set password='".md5($_POST['newpassword'])."' where username='".$_SESSION['admin_panel_login']."'");
$_SESSION['msg']="Password Changed Successfully !!";
}
else
{
$_SESSION['msg']="Old Password not match !!";
}
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
<script type="text/javascript">
function valid()
{
if(document.chngpwd.password.value=="")
{
alert("Current Password Filed is Empty !!");
document.chngpwd.password.focus();
return false;
}
else if(document.chngpwd.newpassword.value=="")
{
alert("New Password Filed is Empty !!");
document.chngpwd.newpassword.focus();
return false;
}
else if(document.chngpwd.confirmpassword.value=="")
{
alert("Confirm Password Filed is Empty !!");
document.chngpwd.confirmpassword.focus();
return false;
}
else if(document.chngpwd.newpassword.value!= document.chngpwd.confirmpassword.value)
{
alert("Password and Confirm Password Field do not match  !!");
document.chngpwd.confirmpassword.focus();
return false;
}
return true;
}
</script>
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
                        Change password
                    </header>
                    <div class="panel-body">
                        <div class="position-center">
                            <form class="form-horizontal" role="form" name="chngpwd" method="post" onSubmit="return valid();">
                            <div class="form-group">
                                <label for="inputEmail1" class="col-lg-3 col-sm-2 control-label">Current Password</label>
                                <div class="col-lg-9">
                                    <input type="password" placeholder="Enter your current Password"  name="password" class="form-control" required>
                                    
                                </div>
                            </div>
                             <div class="form-group">
                                <label for="inputEmail1" class="col-lg-3 col-sm-2 control-label">New Password</label>
                                <div class="col-lg-9">
                                    <input type="password" placeholder="Enter your new current Password"  name="newpassword" class="form-control" required>
                                    
                                </div>
                            </div>
                           <div class="form-group">
                                <label for="inputEmail1" class="col-lg-3 col-sm-2 control-label">New Confirm Password</label>
                                <div class="col-lg-9">
                                    <input type="password" placeholder="Enter your new Password again"  name="confirmpassword" class="form-control" required>
                                    
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-lg-offset-3 col-lg-9">
                                    <button type="submit" class="btn btn-danger" name="submit">Change Password</button>
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
