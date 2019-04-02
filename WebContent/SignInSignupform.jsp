<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Insert title here</title>

<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="custom.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

	<div class="container-fluid">
		<!-- #####  FIRST ROW START #### -->
		<!-- FIRST ROW START-->
		<div class="row firstrow">

			<!-- COLUMN-1 START-->
			<!-- --------------------------COLUMN 1 START------------------------------------ -->
			<div class="col-md-2 col-md-offset-1 mar">
				<p>Contact Us On +91 40 66217777</p>
			</div>
			<!-- COLUMN-1 END -->
			<!-- --------------------------COLUMN 1 END------------------------------------ ----->

			<!-- COLUMN-2 START-->
			<!-- --------------------------COLUMN 2 START------------------------------------ -->
			<div class="col-md-3 col-md-offset-5 mar">
				<a href="#"><span class="glyphicon glyphicon-log-in"></span>SIGN
					IN</a> <a href="#"><span class="glyphicon glyphicon-user"></span>SIGN
					UP</a> <a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
					class="fa fa-google-plus"></i></a> <a href="#"><i
					class="fa fa-twitter"></i></a> <a href="#"><i
					class="fa fa-envelope"></i></a>
			</div>
			<!-- COLUMN-2 END -->
			<!-- --------------------------COLUMN 2 END------------------------------------ ---->

		</div>
		<!-- FIRST ROW END -->
		<!-- ### FIRST ROW END #### -->
		<!-- ### SECOND ROW START ####-->
		<!-- SECOND ROW START-->
		<div class="row">
			<!-- --------------------------COLUMN 1 START---------------------------------- ---->
			<div class="col-md-4 col-md-offset-1">
				<img src="logos/logo.jpj.png" id="image" alt="">
			</div>
			<!-- --------------------------COLUMN 1 END------------------------------------ ---->

			<!-- --------------------------COLUMN 2 START------------------- ---->
			<div class="col-md-6"
				style="padding-top: 12px; font-weight: bold; color: grey">
				<ul class="nav nav-pills" style="">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">ELECTROINCS <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">link1</a></li>
							<li><a href="#">link2</a></li>
							<li><a href="#">link3</a></li>
						</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">MEN <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">link4</a></li>
							<li><a href="#">link5</a></li>
							<li><a href="#">link6</a></li>
						</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">WOMEN <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">link7</a></li>
							<li><a href="#">link8</a></li>
							<li><a href="#">link9</a></li>
						</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">BABY & KIDS <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">link10</a></li>
							<li><a href="#">link11</a></li>
							<li><a href="#">link12</a></li>
						</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">HOME & FURNITURE <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">link13</a></li>
							<li><a href="#">link14</a></li>
							<li><a href="#">link15</a></li>
						</ul></li>
				</ul>

			</div>
			<!-- --------------------------COLUMN 2 END------------------- ---->
		</div>
		<!-- SECOND ROW END -->
		<!-- ####  SECOND ROW END ####-->
		<!-- ####  THIRD ROW START #### -->
		<!-- THIRD ROW -->
		<div class="row thirdrow">
			<!-- --------------------------COLUMN 1 START------------------- ---->
			<div class="col-md-4 col-md-offset-1" style="">
				<p class="maintext">NEW ACCOUNT / SIGN IN</p>
			</div>
			<!-- --------------------------COLUMN 1 END------------------- ---->

			<!-- --------------------------COLUMN 2 START------------------- ---->
			<div class="col-md-2 col-md-offset-3 x">
				<a href="#">HOME</a>/ <a href="#">NEW ACCOUNT</a>/ <a href="#">SIGN
					IN</a>
			</div>
			<!-- --------------------------COLUMN 2 END------------------- ---->
		</div>
		<!-- THIRD ROW END -->
		<!-- #####  THIRD ROW END #####-->
		<!-- #####FOURTH ROW START #### -->
		<div class="row">
			<div class="col-mod-10 col-md-offset-1">
				<div class="col-md-6">
					<br>
					<br>
					<br>
					<hr>
					<h2 class="fourthmaintext">NEW ACCOUNT</h2>
					<p class="fourthinfotext">Not our registered customer yet?</p>
					<br> <br>
					<p class="">With registration with us new world of fashion,
						fantastic discounts and much more opens to you! The whole process
						will not take you more than a minute!</p>
					<p class="">If you have any questions, please feel free to
						contact us, our customer service center is working for you 24/7.</p>
					<hr>
					<form action="CustomerRegister" method="post">
					<div class="form-group">
						<label>Name</label> <input type="text" class="form-control" name="name">
					</div>
					<div class="form-group">
						<label>Email</label> <input type="text" class="form-control" name="email">
					</div>
					<div class="form-group">
						<label>Password</label> <input type="password" class="form-control" name="password">
					</div>
					<div style="text-align: center">
							<button type="submit" class="btn btn-success"
								style="background-color: white; color: green; align: center">
								<span class="fa fa-envelope-o"></span> REGISTER
							</button>
							<%
							String s = (String)request.getAttribute("stat");
							if(s != null)
							{
								if(s.equals("Y")){
					%>
									<div class="alert alert-success" role="alert">Registration Successful.</div>
									<%	
								}
								
								else if(s.equals("E")){ %> 
								
									<div class="alert alert-danger" role="alert">Account already exists with this email ID.</div>
								<%
								}
								
								else{
					%>
									<div class="alert alert-danger" role="alert">Registration Failed</div><%
							}
						}
					%>

						</div>
					</form>
				</div>
				<div class="col-md-6">
					<br>
					<br>
					<br>
					<hr>
					<h2 class="fourthmaintext">SIGN IN</h2>
					<p class="fourthinfotext">Already our customer?</p>
					<br> <br>
				
					<p>Get access to your Orders, Wishlist and Recommendations.
					<hr>
					<form action="login" method="post">
						<div class="form-group">
						<label>Email</label> <input type="text" class="form-control">
					</div>
					<div class="form-group">
						<label>Password</label> <input type="password" class="form-control">
					</div>
					<div style="text-align: center">
							<button type="submit" class="btn btn-success"
								style="background-color: white; color: green; align: center">
								<span class="fa fa-envelope-o"></span> LOG IN
							</button>
					<%
							String x = (String)session.getAttribute("log");
							if(x != null)
							{
								if(x.equals("N")){
					%>
									<div class="alert alert-success" role="alert">Login Successful.</div>
									<%	
								}
								
								else{
					%>
									<div class="alert alert-danger" role="alert">Registration Failed</div><%
							}
						}
					%>

						</div>
					</form>
				</div>
			</div>
		</div>

		<!-- #### FOURTH ROW END ## -->

		<!-- ###  FIFTH ROW START #### -->
		<div class="row row6">
			<br>
			<br>
			<div class="col-md-1"></div>
			<div class="col-md-3 col1">
				<p>
				<h5>
					<strong>ABOUT US</strong>
				</h5>
				</p>
				<h6>Prellentesque habitant morbi tristique senectus et netus et
					malesuada fames ac turpls egestas.</h6>
				<hr />
				<h5>
					<b>JOIN OUR MONTHLY NEWSLETTER</b>
				</h5>
				<input type="email">
				<button>
					<span class="glyphicon glyphicon-send"></span>
				</button>

				<br /> <br />
			</div>
			<div class="col-md-3 col2">
				<h5>
					<strong>BLOG</strong>
				</h5>
				<img src="logos/detailsquare1.jpg">
				<h6>
					<strong> BLOG POST NAME</strong>
				</h6>
				<br /> <br /> <img src="logos/detailsquare1.jpg">
				<h6>
					<strong> BLOG POST NAME</strong>
				</h6>
				<br /> <br /> <img src="logos/detailsquare1.jpg">
				<h6>
					<strong> VERY VERY LONG BLOG POST NAME</strong>
				</h6>
				<br /></br>
			</div>
			<div class="col-md-2">
				<h5>
					<strong>CONTACT</strong>
				</h5>
				<h6>TECHASPECT SOLUTIONS PVT.LTD</h6>
				<h6>PLOT NO.38, N HEIGHTS, 3RD FLOOR</h6>
				<h6>HITECH CITY PHASE 2, MADHAPUR</h6>
				<h6>HYDERABAD, TELANGANA-500081</h6>
				<h6>INDIA</h6>
				<button class="btn btn-info">GO TO CONTACT PAGE</button>
				<br /> <br /> <br />
			</div>
			<div class="col-md-2" align="left">
				<br /> <br> <img src="logos/detailsquare1.jpg"> <img
					src="logos/detailsquare2.jpg"> <img
					src="logos/detailsquare3.jpg"><br /> <br /> <img
					src="logos/detailsquare1.jpg"> <img
					src="logos/detailsquare3.jpg"> <img
					src="logos/detailsquare2.jpg">
			</div>
		</div>

		<!-- #####  FIFTH ROW END #### -->

		<!-- ###  SIX ROW START ##### -->
		<div class="row"
			style="background-color: black; padding-top: 70px; padding-bottom: 200">
			<div class="col-md-10 col-md-offset-1">
				<h6>@2018.Techaspect Solutions Private Limited.</h6>

			</div>
		</div>


		<!-- ####  SIX ROW END ###-->

	</div>
	<script src="js/jquery-3.3.1.js"></script>
	<script src="bootstrap/js/bootstrap.js"></script>
</body>
</html>