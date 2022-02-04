<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html >
<html>
<head>
<meta  charset="UTF-8">
<title>Social Dining</title>
</head>
<body>
<form enctype="multipart/form-data">
<h1>후기 상세 조회</h1>
<table border="1">
<tr>
	<th>DINING_NAME</th>
	<td>${myList.diningName}</td>
</tr>
<tr>
	<th>MY_PIC</th>
      <td><c:set var="len" value="${fn:length(myList.myPicName)}"/>
      <c:set var="filetype" value="${fn:toUpperCase(fn:substring(myList.myPicName, len-4, len))}"/>
      <c:if test="${(filetype eq '.JPG') or (filetype eq '.JPEG') or (filetype eq '.PNG') or (filetype eq '.GIF')}">
      <img src='<c:url value="/img/${myList.myId}" />' width="100" class="img-thumbnail"><br>
      </c:if>
      <c:if test="${!((filetype eq '.JPG') or (filetype eq '.JPEG') or (filetype eq '.PNG') or (filetype eq '.GIF'))}">
      <a href='<c:url value="/pds/${myList.myId}"/>'>${myList.myPicName}</a><br>
      </c:if></td>
</tr>
<tr>
	<th>MY_OPINION</th>
	<td>${myList.myOpinion}</td>
</tr>
<tr>
	<th>MY_GRADE</th>
	<td>${myList.myGrade}</td>
</tr>
<tr>
	<th>MY_DATE</th>
	<td>${myList.myDate}</td>
</tr>
</table>
<a href="update?myId=${myList.myId}">수정하기</a>
<a href="delete?myId=${myList.myId}">삭제하기</a>
</form>
</body>
</html>