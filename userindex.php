<?php session_start();
//include 'config.php';
require_once('dbconnection.php');

//Code for Subscription
if(isset($_POST['signup']))
{
	$reg_no=$_POST['reg_no'];
	$fname=$_POST['fname'];
	$email=$_POST['email'];
	$password=$_POST['password'];
	$enc_password=$password;
$sql=mysqli_query($con,"select id from users where email='$email'");
$unique=mysqli_query($con,"select id from users where reg_no='$reg_no'");
$row1=mysqli_num_rows($sql);
$row2=mysqli_num_rows($unique);
if($row1>0  or $row2>0)
{
	echo "<script>alert('This Registration number or Email Id has already been registered');</script>";
} else{
	$msg=mysqli_query($con,"insert into users(reg_no,fname,email,password) values('$reg_no','$fname','$email','$enc_password')");

if($msg)
{
	echo "<script>alert('Congrats! You have been registered successfully');</script>";
}
}
}

// Code for login 
if(isset($_POST['login']))
{
$password=$_POST['password'];
$dec_password=$password;
$userreg_no=$_POST['ureg'];
$ret= mysqli_query($con,"SELECT * FROM users WHERE reg_no='$userreg_no' and password='$dec_password'");
$num=mysqli_fetch_array($ret);
if($num>0)
{
$extra="index.php";
$_SESSION['login']=$_POST['ureg'];
$_SESSION['id']=$num['id'];
$_SESSION['name']=$num['fname'];
$host=$_SERVER['HTTP_HOST'];
$uri=rtrim(dirname($_SERVER['PHP_SELF']),'/\\');
header("location:http://$host$uri/$extra");
exit();
}
else
{
echo "<script>alert('Invalid username or password');</script>";
$extra="userindex.php";
$host  = $_SERVER['HTTP_HOST'];
$uri  = rtrim(dirname($_SERVER['PHP_SELF']),'/\\');
exit();
}
}

//Code for Forgot Password
if(isset($_POST['send']))
{
$femail=$_POST['femail'];

$row1=mysqli_query($con,"select email,password from users where email='$femail'");
$row2=mysqli_fetch_array($row1);
if($row2>0)
{
$email = $row2['email'];
$sub = "Information about your password";
$password=$row2['password'];
$msg = "Your password is ".$password;
mail($email, $sub, $msg); //this is used for sending password through mail.
echo  "<script>alert('Your Password has been sent Successfully');</script>";
}
else
{
echo "<script>alert('Email not registered with us');</script>";	
}
}

?>
<!DOCTYPE html>
<html>
<head>
<title>News Portal | User </title>
    <link rel = "icon" href="https://img.icons8.com/dusk/64/000000/news.png"
        type = "image/x-icon"> 
<link href="css/style.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Elegent Tab Forms,Login Forms,Sign up Forms,Registration Forms,News latter Forms,Elements"./>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
</script>
<script src="js/jquery.min.js"></script>
<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
				<script type="text/javascript">
					$(document).ready(function () {
						$('#horizontalTab').easyResponsiveTabs({
							type: 'default',       
							width: 'auto', 
							fit: true 
						});
					});
				   </script>
<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,400,600,700,200italic,300italic,400italic,600italic|Lora:400,700,400italic,700italic|Raleway:400,500,300,600,700,200,100' rel='stylesheet' type='text/css'>
</head>
<body>
<div class="main">
	 <div class="sap_tabs">	
			<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
			  <ul class="resp-tabs-list">
			  	  <li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><div class="top-img"><img src="images/top-note.png" alt=""/></div><span>Sign-Up</span>
			  	  	
				</li>
				  <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><div class="top-img"><img src="images/top-lock.png" alt=""/></div><span>Login</span></li>
				  <li class="resp-tab-item lost" aria-controls="tab_item-2" role="tab"><div class="top-img"><img src="images/top-key.png" alt=""/></div><span>Forgot Password</span></li>
				  <div class="clear"></div>
			  </ul>		
			  	 
			<div class="resp-tabs-container">
					<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
					<div class="facts">
					
						<div class="register">
							<form name="registration" method="post" action="" enctype="multipart/form-data">
								
								<p>Name </p>
								<input type="text" class="text" value=""  name="fname" required >
								<p>Registration Number </p>
								<input type="text" class="text" value=""  name="reg_no" required >
								<p>Email Address </p>
								<input type="text" class="text" value="" name="email" required>
								<p>Password </p>
								<input type="password" value="" name="password" required>
								<div class="sign-up">
									<input type="reset" value="Reset">
									<input type="submit" name="signup"  value="Sign-Up" >
									<div class="clear"> </div>
								</div>
							</form>

						</div>
					</div>
				</div>		
			 <div class="tab-2 resp-tab-content" aria-labelledby="tab_item-1">
					 	<div class="facts">
							 <div class="login">
							<div class="buttons">
								
								
							</div>
							<form name="login" action="" method="post">
								<input type="text" class="text" name="ureg" value="" placeholder="Enter your Registration Number"  ><a href="#" class=" icon email"></a>

								<input type="password" value="" name="password" placeholder="Enter valid password"><a href="#" class=" icon lock"></a>

								<div class="p-container">
								
									<div class="submit two">
									<input type="submit" name="login" value="LOG IN" >
									</div>
									<div class="clear"> </div>
								</div>

							</form>
					</div>
				</div> 
			</div> 			        					 
				 <div class="tab-2 resp-tab-content" aria-labelledby="tab_item-1">
					 	<div class="facts">
							 <div class="login">
							<div class="buttons">
								
								
							</div>
							<form name="login" action="" method="post">
								<input type="text" class="text" name="femail" value="" placeholder="Enter your registered Email Address " required  ><a href="#" class=" icon email"></a>
									
										<div class="submit three">
											<input type="submit" name="send" onClick="myFunction()" value="Send Email" >
										</div>
									</form>
									</div>
				         	</div>           	      
				        </div>	
				     </div>	
		        </div>
	        </div>
	     </div>

</body>
</html>