<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Register</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="js/JFCore.js"></script>
<style type="text/css">
#abc {
	text-align: center;
	border: medium;
}
</style>
<!-- Set here the key for your domain in order to hide the watermark on the web server -->
<script type="text/javascript">
	(function() {
		JC.init({
			domainKey : ''
		});
	})();
</script>
<style type="text/css">
.customrow {
	padding-top: 6em !important;
}
</style>
</head>
<body>
	<div class="wrap">
		<!-- tab style-1 -->
		<div class="row customrow">
			<div class="grid_12 columns">
				<div class="tab style-1">
					<dl>
						<dd class="users">
							<a class="user active" href="#tab1"> </a>
						</dd>
						<dd class="messages">
							<a class="msg" href="#tab2"> </a>
						</dd>
						<dd class="settings">
							<a class="setting" href="#tab3"> </a>
						</dd>
						<dd class="likes">
							<a class="like" href="#tab4"> </a>
						</dd>
					</dl>
					<ul>
						<li class="active">
							<div class="form">
								<form action="/register" method="post">
									<input type="text" class="active textbox" value="First Name"
										onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = 'First Name';}"
										name="firstName"> <input type="text" class="textbox"
										value="Last Name" onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = 'Last Name';}"
										name="lastName"> <input type="text" class="textbox"
										value="Email Address" onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = 'Email Address';}"
										name="email"> <input type="text" class="textbox"
										value="mobile" onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = 'Mobile';}"
										name="mobile" required=""> <input type="submit"
										value="Register">
								</form>
							</div>
						</li>
						<li><div class="top-grids">
								<div class="top-grid1">
									<img src="images/f1.jpg" title="" alt="">
								</div>
								<div class="top-grid2">
									<a href="#single.html"><h4>
											Saketh
											<h4></h4></a>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt</p>
								</div>
								<div class="top-grid1">
									<img src="images/f2.jpg" title="" alt="">
								</div>
								<div class="top-grid2">
									<a href="#single.html"><h4>
											Amar
											<h4></h4></a>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt</p>
								</div>
								<div class="top-grid1">
									<img src="images/f3.jpg" title="" alt="">
								</div>
								<div class="top-grid2">
									<a href="#single.html"><h4>
											Akil
											<h4></h4></a>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt</p>
								</div>
								<div class="top-grid1">
									<img src="images/f4.jpg" title="" alt="">
								</div>
								<div class="top-grid2">
									<a href="#single.html"><h4>
											Naveen
											<h4></h4></a>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt</p>
								</div>
							</div>
							<div class="clear"></div></li>
						<li>
							<div class="settings">
								<a href="#single.html"><h5>
										<img src="images/arrow1.png" title="" alt="">Profile
									</h5></a> <a href="#single.html"><h5>
										<img src="images/arrow1.png" title="" alt="">Edit
									</h5></a> <a href="#single.html"><h5>
										<img src="images/arrow1.png" title="" alt="">Create
										Account
									</h5></a> <a href="#single.html"><h5>
										<img src="images/arrow1.png" title="" alt="">Login
									</h5></a> <a href="#single.html"><h5>
										<img src="images/arrow1.png" title="" alt="">Signup
									</h5></a>
							</div>
						</li>
						<li>
							<div class="top-grids">
								<div class="top-grid1">
									<img src="images/f1.jpg" title="" alt="">
								</div>
								<div class="top-grid2">
									<a href="#single.html"><h4>
											Saketh
											<h4></h4></a>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt</p>
								</div>
								<div class="top-grid1">
									<img src="images/f2.jpg" title="" alt="">
								</div>
								<div class="top-grid2">
									<a href="#single.html"><h4>
											Amar
											<h4></h4></a>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt</p>
								</div>
								<div class="top-grid1">
									<img src="images/f3.jpg" title="" alt="">
								</div>
								<div class="top-grid2">
									<a href="#single.html"><h4>
											Akil
											<h4></h4></a>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt</p>
								</div>
								<div class="top-grid1">
									<img src="images/f4.jpg" title="" alt="">
								</div>
								<div class="top-grid2">
									<a href="#single.html"><h4>
											Naveen
											<h4></h4></a>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt</p>
								</div>
							</div>
							<div class="clear"></div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>