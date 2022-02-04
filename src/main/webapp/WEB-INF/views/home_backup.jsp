<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page session="false" %>
<html>
<head>
   <title>Social Dining</title>
</head>
<body>
<h1>Hello Social Dining!</h1>
<p> 식샤합시다:) </p><br>

<a href='<c:url value="/hr/list"/>'>서울시 맛집 조회</a><br>
<a href='<c:url value="/hr/mylist"/>'>내 맛집 후기 조회</a><br>
<img src="https://d2t7cq5f1ua57i.cloudfront.net/images/r_images/52260/51271/52260_51271_98_0_651_20151220134343864_300x200.jpg">
</body>
</html>