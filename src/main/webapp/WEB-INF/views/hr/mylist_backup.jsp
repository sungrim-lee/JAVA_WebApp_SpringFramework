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
<h1>내 맛집 목록</h1>
<a href="<c:url value='/hr/list'/>">내 맛집 정보 입력</a>
<table border="1">
<tr>
   <th>MY_ID</th>
   <th>DINING_ID</th>
   <th>DINING_NAME</th>
   <th>MY_OPINION</th>
   <th>MY_GRADE</th>
   <th>MY_DATE</th>
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
</body>
</html>