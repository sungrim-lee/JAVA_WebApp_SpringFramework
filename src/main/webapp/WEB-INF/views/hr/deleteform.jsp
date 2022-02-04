<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML>
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
							<h1>후기 정보 삭제</h1>
						</header>

						${myList.myId}번째 후기 ${myList.diningName} 의 정보를 삭제합니다.
						<p>삭제후 데이터는 복구될 수 없습니다.
						<p>${myList.myId}번째 후기의 상호명을 입력하세요.
						<form action="./delete" method="post">
							상호명 : <input type="text" name="diningName"> <input
								type="hidden" name="myId" value="${myList.myId}"> <input
								type="submit" value="삭제">
						</form>
					</article>

				</div>
			</div>
		</div>

		<!-- Footer -->
		<%@ include file="../include/bodyFooter.jsp"%>

	</div>

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