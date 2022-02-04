<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Social Dining</title>
</head>
<body>
<form action="./search" method="post">

      <select name="location">
         <option value="">-전체-</option>
         <option value="강남구">강남구</option>
         <option value="강동구">강동구</option>
         <option value="강북구">강북구</option>
         <option value="강서구">강서구</option>
         <option value="관악구">관악구</option>
         <option value="광진구">광진구</option>
         <option value="구로구">구로구</option>
         <option value="금천구">금천구</option>
         <option value="노원구">노원구</option>
         <option value="도봉구">도봉구</option>
         <option value="동대문구">동대문구</option>
         <option value="동작구">동작구</option>
         <option value="마포구">마포구</option>
         <option value="서대문구">서대문구</option>
         <option value="서초구">서초구</option>
         <option value="성동구">성동구</option>
         <option value="성북구">성북구</option>
         <option value="송파구">송파구</option>
         <option value="양천구">영등포구</option>
         <option value="용산구">용산구</option>
         <option value="은평구">은평구</option>
         <option value="종로구">종로구</option>
         <option value="중구">중구</option>
         <option value="중랑구">중랑구</option>
      </select>
<nobr>
      상호명:<input type="text" name="diningName">
      메뉴 키워드:<input type="text" name="keyword">
      해시 태그:<input type="text" name="hashtag">
      <input type="submit" value="검색">
      <input type="reset" value="취소">
</nobr>
</form>

<h1>맛집 리스트</h1>
<table border="1">
<tr>
   <td>상호명</td>
   <td>평점</td>
   <td>주소 </td>
   
</tr>
<c:forEach var="dining" items="${diningList}">



<tr>
   <td><a href="detail?diningId=${dining.diningId}">${dining.diningName}</a></td>
   <td>${dining.grade }</td>
   <td>${dining.locationSimple } , ${dining.locationDetail }</td>
   
</tr>
</c:forEach>
</table>

</body>
</html>