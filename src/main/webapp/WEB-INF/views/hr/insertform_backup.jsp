<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="autor" content="">
<title>Social Dining</title>
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
<body>
	<h1>후기 입력</h1>
	<form action="./insert" method="post" enctype="multipart/form-data"
		id="form1" runat="server">
		<table border="1">

			<tr>
				<th>DINING_ID</th>
				<td><input type="number" name="diningId" value="${diningId}"
					readonly></td>
			</tr>
			<tr>
				<th>DINING_NAME</th>
				<td><input type="text" name="diningName" value="${diningName}"
					required readonly></td>
			</tr>
			<tr>
				<th>MY_OPINION</th>
				<td><input type="text" name="myOpinion"></td>
			</tr>
			<tr>
				<th>MY_GRADE</th>
				<td><input type="number" name="myGrade" step="1" min="0"
					max="100" required></td>
			</tr>
			<tr>
				<th>MY_DATE</th>
				<td><input type="date" name="myDate" required></td>
			</tr>
			<tr>
				<th>&nbsp;</th>
				<td><input type="submit" value="저장"> <input
					type="reset" value="취소"></td>
			</tr>
		</table>



		<div>
			<p class="title">이미지 업로드</p>
			<input type='file' name="file" id="imgInp" />
		</div>

		<div class="img_wrap">
			<img id="blah" src="#" alt="your image" />
		</div>





	</form>
</body>
</html>