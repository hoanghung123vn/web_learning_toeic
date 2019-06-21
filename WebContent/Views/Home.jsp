<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Home page</title>

	<link href="assets/css/bootstrap.css" rel="stylesheet">
	<link href="assets/css/bootstrap-responsive.css" rel="stylesheet">
	<link href="assets/css/style.css" rel="stylesheet">
	<link href='assets/css/font.css' rel='stylesheet' type='text/css'>

	<script src="assets/js/jquery.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>

</head>

<body>
	<!--HEADER ROW-->
	<div id="header-row">
		<div class="container">
			<div class="row">
				<!--LOGO-->
				<div class="span3"><a class="brand" href="HomeController"><img src="assets/img/logo.png" /></a></div>
				<!-- /LOGO -->

				<!-- MAIN NAVIGATION -->
				<div class="span9">
					<div class="navbar  pull-right">
						<div class="navbar-inner">
							<a data-target=".navbar-responsive-collapse" data-toggle="collapse" class="btn btn-navbar"><span
									class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></a>
							<div class="nav-collapse collapse navbar-responsive-collapse">
								<ul class="nav">
									<li class="active"><a href="HomeController">Home</a></li>

									<li class="dropdown">
										<a href="about.html" class="dropdown-toggle" data-toggle="dropdown">About <b class="caret"></b></a>
										<ul class="dropdown-menu">
											<li><a href="#">Company</a></li>
											<li><a href="#">History</a></li>
											<li><a href="#">Team</a></li>
											<li><a href="#">Contact</a></li>
										</ul>

									</li>
									<li><a href="#">Sign up</a></li>
									<li><a href="#">Sign in</a></li>
								</ul>
							</div>

						</div>
					</div>
				</div>
				<!-- MAIN NAVIGATION -->
			</div>
		</div>
	</div>
	<!-- /HEADER ROW -->

	<div class="container">
		<!--Carousel
  ==================================================-->

		<div id="myCarousel" class="carousel slide">
			<div class="carousel-inner">
				<c:forEach items="${slidebanners}" var="slide">
					<div class="${slide.getId() == 1 ? 'item active' : 'item' }">
						<div class="container">
							<div class="row">

								<div class="span6">

									<div class="carousel-caption">
										<h1>${slide.getTitle()}</h1>
										<p class="lead">${slide.getContent()}.</p>
										<a class="btn btn-large btn-primary" href="#">Tham gia ngay cùng chúng tôi</a>
									</div>

								</div>

								<div class="span6 mt-5"> <img src="assets/img/slide/${slide.getImage_path()}" width="500px"></div>

							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<!-- Carousel nav -->
			<a class="carousel-control left " href="#myCarousel" data-slide="prev"><i class="icon-chevron-left"></i></a>
			<a class="carousel-control right" href="#myCarousel" data-slide="next"><i class="icon-chevron-right"></i></a>
			<!-- /.Carousel nav -->
		</div>
		<!-- /Carousel -->

		<!-- Feature 
  ==============================================-->
		<div class="row feature-box mt-5">
			<div class="span12 cnt-title">
				<h1>Học Toeic miễn phí dành cho mọi người!</h1>
				<span>Học tiếng Anh cùng chúng tôi mọi lúc mọi nơi.</span>
			</div>

			<div class="span4">
				<img src="assets/img/icon7.png" width = "100px">
				<h2>Làm bài tập phần nghe</h2>
				<p>
					Nâng cao kỹ năng nghe cùng hệ thống bài tập của chúng tôi.
				</p>

				<a href="#">Read More &rarr;</a>

			</div>

			<div class="span4">
				<img src="assets/img/icon8.png" width = "100px">
				<h2>Làm bài tập phần đọc</h2>
				<p>
					Nâng cao kỹ năng đọc hiểu cùng hệ thống bài tập cơ bản và nâng cao
				</p>
				<a href="#">Read More &rarr;</a>
			</div>

			<div class="span4">
				<img src="assets/img/icon9.png" width = "100px">
				<h2>Làm bài test hoàn chỉnh</h2>
				<p>
					Trải nghiệm thi thử Toeic online như thi thật!.
				</p>
				<a href="#">Read More &rarr;</a>
			</div>
		</div>
		<!-- /.Feature -->
	</div>
	<!-- /.Row View -->

	<!--Footer
==========================-->
	<footer>
		<div class="container">
			<div class="row">
				Shared by <i class="fa fa-love"></i><a href="https://bootstrapthemes.co">Learnin Toeic Free</a>
			</div>
			<div class="span6">
				<div class="social pull-right">
					<a href="#"><img src="assets/img/social/googleplus.png" alt=""></a>
					<a href="#"><img src="assets/img/social/dribbble.png" alt=""></a>
					<a href="#"><img src="assets/img/social/twitter.png" alt=""></a>
					<a href="#"><img src="assets/img/social/dribbble.png" alt=""></a>
					<a href="#"><img src="assets/img/social/rss.png" alt=""></a>
				</div>
			</div>
		</div>
	</footer>
	<!--/.Footer-->
</body>

</html>
