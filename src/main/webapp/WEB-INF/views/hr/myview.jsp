<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>
<!--
	Strongly Typed by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>Social Dining</title>
<%@ include file="../include/staticHeader.jsp"%>
</head>
<body class="right-sidebar">
	<div id="page-wrapper">

		<!-- Header -->
		<%@ include file="../include/bodyHeader.jsp"%>
		<!-- Main -->
		<div id="main-wrapper">
			<div id="main" class="container">
				<div class="row">

					<!-- Content -->
					<div id="content" class="8u 12u(mobile)">

						<!-- Post -->
						<article class="box post">
							<header>
								<h2>
									나의<strong>맛집</strong>후기 상세조회<br />
								</h2>
							</header>
							<form enctype="multipart/form-data">
								<table border="1">
									<tr>
										<th>상호명</th>
										<td>${myList.diningName}</td>
									</tr>

									<tr>
										<th>후기</th>
										<td>${myList.myOpinion}</td>
									</tr>
									<tr>
										<th>내 평점</th>
										<td>${myList.myGrade}</td>
									</tr>
									<tr>
										<th>방문일</th>
										<td>${myList.myDate}</td>
									</tr>
									<tr>
										<th></th>
										<td><c:set var="len"
												value="${fn:length(myList.myPicName)}" /> <c:set
												var="filetype"
												value="${fn:toUpperCase(fn:substring(myList.myPicName, len-4, len))}" />
											<c:if
												test="${(filetype eq '.JPG') or (filetype eq '.JPEG') or (filetype eq '.PNG') or (filetype eq '.GIF')}">
												<img src='<c:url value="/img/${myList.myId}" />' width="250"
													class="img-thumbnail">
												<br>
											</c:if> <c:if
												test="${!((filetype eq '.JPG') or (filetype eq '.JPEG') or (filetype eq '.PNG') or (filetype eq '.GIF'))}">
												<a href='<c:url value="/pds/${myList.myId}"/>'>${myList.myPicName}</a>
												<br>
											</c:if></td>
									</tr>
								</table>
							</form>
						</article>
					</div>

					<!-- Sidebar -->
					<div id="sidebar" class="4u 12u(mobile)">

						<!-- Excerpts -->
						<section>
							<ul class="divided">
								<li>
									<!-- Excerpt -->
									<article class="box excerpt">
										<header>
											<h3>
												<a href="update?myId=${myList.myId}"><input
													type="button" value="수정하기"></a>
											</h3>
										</header>
										<p>후기를 수정하세요</p>
									</article>

								</li>
								<li>
									<!-- Excerpt -->
									<article class="box excerpt">
										<header>
											<h3>
												<a href="delete?myId=${myList.myId}"><input
													type="button" value="삭제하기"></a>
											</h3>
										</header>
										<p>후기를 삭제하세요</p>
									</article>
								</li>

								<!-- Highlights -->
					</div>

				</div>
			</div>
		</div>
	</div>
	<!-- Footer -->
	<%@ include file="../include/bodyFooter.jsp"%>


	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/skel-viewport.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>
</body>
</html>