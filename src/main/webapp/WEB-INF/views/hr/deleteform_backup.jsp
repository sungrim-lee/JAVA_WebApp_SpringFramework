<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Social Dining</title>
</head>
<body>
<h1>후기 정보 삭제</h1>
${myList.myId}번째 후기 ${myList.diningName} 의 정보를 삭제합니다. <p>
삭제후 데이터는 복구될 수 없습니다.<p>
${myList.myId}번째 후기의 상호명을 입력하세요.
<form action="./delete" method="post">
상호명 : <input type="text" name="diningName">
<input type="hidden" name="myId" value="${myList.myId}">
<input type="submit" value="삭제">
</form>
</body>
</html>