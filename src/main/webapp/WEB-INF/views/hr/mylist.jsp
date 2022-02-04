<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<body class="no-sidebar">
	<div id="page-wrapper">

		<!-- Header -->
		<%@ include file="../include/bodyHeader.jsp"%>

		<!-- Main -->
		<div id="main-wrapper">
			<div id="main" class="container">
				<div id="content">

					<!-- Post -->
					<article class="box post">
						<header>
							<h2>
								내<strong>맛집</strong>목록<br />
								
							</h2>
						</header>
						
						<h3><a href="<c:url value='/hr/list'/>">내 맛집 정보 입력</a></h3>
						<form enctype="multipart/form-data">
							
							
							<table border="1">
								<tr align="left">
									<th>글 번호</th>
									<th>맛집 아이디</th>
									<th>상호명</th>
									<th>후기</th>
									<th>내 평점</th>
									<th>방문일</th>
								</tr>
								<c:forEach var="myList" items="${myList}">
									<tr>
										<td><a href="<c:url value='/hr/${myList.myId}'/>">${myList.myId}</a></td>
										<td>${myList.diningId}</td>
										<td>${myList.diningName}</td>
										<td>${myList.myOpinion}</td>
										<td>${myList.myGrade}</td>
										<td>${myList.myDate}</td>
									</tr>
								</c:forEach>
							</table>
						</form>
					</article>

				</div>
			</div>
		</div>

		<!-- Footer -->
		<%@ include file="../include/bodyFooter.jsp"%>

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