<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="autor" content="">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>Social Dining</title>
<%@ include file="../include/staticHeader.jsp"%>
<style type="text/css">
.img_wrap {
	width: 200px;
	margin-top: 40px;
}

.img_wrap img {
	max-width: 50%;
}
</style>


<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.3.1.js" charset="utf-8"></script>
<script type="text/javascript">
	$(function() {
		$("#imgInp").on('change', function() {
			readURL(this);
		});
	});

	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				$('#blah').attr('src', e.target.result);
			}

			reader.readAsDataURL(input.files[0]);
		}
	}
</script>


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

					<header>
						<h1>후기 입력</h1>
					</header>

					<div class="card">
						<div class="card-body">

							<form action="./insert" method="post"
								enctype="multipart/form-data" id="form1" runat="server">


								<h4 class="card-title">맛집입력 양식</h4>


								<table class="table table-hover">

									<tbody>
										<tr>
											<td>맛집 아이디</td>
											<td><input type="number" name="diningId"
												value="${diningId}" readonly></td>
										</tr>
										<tr>
											<td>상호명</td>
											<td><input type="text" name="diningName"
												value="${diningName}" required readonly></td>
										</tr>
										<tr>
											<th>후기</th>
											<td><input type="text" name="myOpinion"></td>
										</tr>
										<tr>
											<th>내 평점</th>
											<td><input type="number" name="myGrade" step="1" min="0"
												max="100" required></td>
										</tr>
										<tr>
											<th>방문일</th>
											<td><input type="date" name="myDate" required></td>
										</tr>
										<tr>
											<th>이미지 업로드</th>
											<td><input type='file' name="file" id="imgInp" /></td>
										</tr>
										<tr>
											<th></th>
											<td><img class="img_wrap" id="blah" src="#"
												alt="이곳에 사진이 보여집니다" /></td>
										</tr>
										<tr>
											<th>&nbsp;</th>
											<td><input type="submit" value="저장"> <input
												type="reset" value="취소"></td>
										</tr>
									</tbody>
								</table>




							</form>


						</div>
					</div>
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