<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page session="false"%>
<!DOCTYPE HTML>

<html>
<head>
<title>Social Dining</title>

<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="/assets/css/main.css" />
<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->


</head>
<body class="homepage">
	<div id="page-wrapper">

		<!-- Header -->
		<div id="header-wrapper">
			<div id="header" class="container">

				<!-- Logo -->
				<h1 id="logo">
					<a href="/">Social Dining</a>
				</h1>
				<br>
				<h2>식샤합시다:)</h2>

				<!-- Nav -->
				<nav id="nav">
					<ul>
						<li><a class="icon fa-home" href="/"><span>HOME</span></a></li>
						<li><a class="icon fa-bars" href="/hr/list"><span>서울시
									맛집 정보</span></a></li>
						<li><a class="icon fa-bookmark-o" href="/hr/mylist"><span>내
									맛집 후기</span></a></li>
					</ul>
				</nav>
			</div>
		</div>

		<!-- Features -->
		<div id="features-wrapper">
			<section id="features" class="container">
				<div class="row">
					<div class="6u 12u(mobile)">

						<!-- Feature -->
						<section>
							<a href='<c:url value="/hr/list"/>' class="image featured"><img
								src="/images/seoul.jpg" alt="" /></a>
							<header>
								<h2>서울시 맛집 조회</h2>
							</header>

						</section>

					</div>
					<div class="6u 12u(mobile)">

						<!-- Feature -->
						<section>
							<a href='<c:url value="/hr/mylist"/>' class="image featured"><img
								src="/images/mylist.jpg" alt="" /></a>
							<header>
								<h2>내 맛집 후기 조회</h2>
							</header>
						</section>
					</div>
				</div>
			</section>
		</div>
	</div>
	<!-- Footer -->
	<div id="footer-wrapper">
		<div id="footer" class="container">
			<header>
				<h2>
					Questions or comments? <strong>Get in touch:</strong>
				</h2>
			</header>

			<div class="6u 12u(mobile)">

				<div id="copyright" class="container">
					<ul class="links">
						<li>&copy; Untitled. All rights reserved.</li>
						<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<!-- Scripts -->
	<script src="/assets/js/jquery.min.js"></script>
	<script src="/assets/js/jquery.dropotron.min.js"></script>
	<script src="/assets/js/skel.min.js"></script>
	<script src="/assets/js/skel-viewport.min.js"></script>
	<script src="/assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="/assets/js/main.js"></script>

</body>
</html>