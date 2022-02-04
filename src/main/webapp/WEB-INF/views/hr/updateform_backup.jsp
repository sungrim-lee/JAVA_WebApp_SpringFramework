<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html >
<html>
<head>
<meta  charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="autor" content="">
<title>Social Dining</title>
<style type="text/css">
	.img_wrap{
		width:200px;
		margin-top:40px;
	}
	.img_wrap img{
		max-width: 50%;
	}

</style>

<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$(".delete").click(function() {
		if(confirm("이 작업은 되돌릴 수 없습니다. 파일을 삭제하겠습니까?")) {
			return true;
		}else {
			return false;
		}
		})
});

$(function() {
    $("#imgInp").on('change', function(){
        readURL(this);
    });
});

function readURL(input) {
    if (input.files && input.files[0]) {
    var reader = new FileReader();

    reader.onload = function (e) {
            $('#blah').attr('src', e.target.result);
        }

      reader.readAsDataURL(input.files[0]);
    }
}

</script>
</head>
<body>
<h1>후기 수정</h1>
<form action="./update" method="post" enctype="multipart/form-data">
<table border="1">
<tr>
   <th>MY_ID</th>
   <td><input type="number" name="myId" value="${myList.myId}" readonly></td>
</tr>
<tr>
   <th>DINING_ID</th>
   <td><input type="number" name="diningId" value="${myList.diningId}" readonly></td>
</tr>
<tr>
	<th>DINING_NAME</th>
	<td><input type="text" name="diningName" value="${myList.diningName}" readonly></td>
</tr>


<tr>
	<th>MY_OPINION</th>
	<td><input type="text" name="myOpinion" value="${myList.myOpinion}" ></td>
</tr>
<tr>
	<th>MY_GRADE</th>
	<td><input type="number" name="myGrade" value="${myList.myGrade}" 
				step="1" min="0" max="100"></td>
</tr>
<tr>
	<th>MY_DATE</th>
	<td><input type="date" name="myDate" value="${myList.myDate}" ></td>
</tr>
<tr>
	<th>&nbsp;</th>
	<td>
		<input type="submit" value="수정">
		<input type="reset" value="취소">
	</td>
</tr>
</table>


	
      <c:set var="len" value="${fn:length(myList.myPicName)}"/>
      <c:set var="filetype" value="${fn:toUpperCase(fn:substring(myList.myPicName, len-4, len))}"/>
      <c:if test="${(filetype eq '.JPG') or (filetype eq '.JPEG') or (filetype eq '.PNG') or (filetype eq '.GIF')}">
      <img src='<c:url value="/img/${myList.myId}" />' width="100" class="img-thumbnail"><br>
      </c:if>
      <c:if test="${!((filetype eq '.JPG') or (filetype eq '.JPEG') or (filetype eq '.PNG') or (filetype eq '.GIF'))}">
      <a href='<c:url value="/pds/${myList.myId}"/>'>${myList.myPicName}</a><br>
      </c:if>
     
      <input type="file" name="file" id="imgInp" >
      <a href='<c:url value="/hr/deletefile/${myList.myId}" />' class="delete"><input type="button" value="삭제"></a>
      <div class="img_wrap"><img id="blah" src="#" alt="your image" /></div>
      




</form>
</body>
</html>