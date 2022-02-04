<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Social Dining</title>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script>
$(function(){
   var p1 = $(".a1");
   var input1 = $(".a3");
   var btn1 = $(".button1");
   var name = document.getElementById("name");
   var address = document.getElementById("address");
   var url = "https://www.google.co.kr/maps/dir/";
   var href1 = "<a href='"
   var href2 = "'>길찾기로 이동</a>"
   btn1.click(function(){
      console.log(input1.val());
      var data = input1.val();
      var map = href1 + url+data+"/"+address.textContent+name.textContent +href2;
      document.write(map);
   });
});
</script>

</head>
<body>
맛집 아이디: ${dining.diningId}
<table border="1">
<tr>
   <td><img src="${dining.picture}"></td>
   <td id="name">${dining.diningName}</td>
   <td>
   <ul>
      <li>평점 : ${dining.grade }</li>
      <li>주소 : <span>${dining.locationSimple }</span> , <span id="address">${dining.locationDetail }</span></li>
      <li>메뉴 키워드 : ${dining.keyword }</li>
      <li>태그 : ${dining.hashtag }</li>
      <li>전화번호 : ${dining.phoneNumber }</li>
      <li><a href="${dining.diningUrl}">상세사이트로 이동</a></li>
   </ul>
   </td>
   
</tr>
<tr>

<td colspan="3"><img src="${dining.wordcloud }"></td>

</tr>
</table>
<a href="./insert?diningId=${dining.diningId}&diningName=${dining.diningName}">후기 추가</a>
<a href="./search">다시 조회하기</a><br>
<p class="a1">길찾기: 출발지를 입력하세요! </p>
<input type="text" class="a3">
<input type="button" class="button1" value="길찾기">


</body>
</html>