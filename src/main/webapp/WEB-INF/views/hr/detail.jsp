<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML>
<!--
	Strongly Typed by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>

<title>Social Dining</title>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script>
	$(function() {
		var p1 = $(".a1");
		var input1 = $(".a3");
		var btn1 = $(".button1");

		var name = document.getElementById("name");
		var address = document.getElementById("address");
		var url = "https://www.google.co.kr/maps/dir/";

		var href1 = "<a href='"
  		 var href2 = "'>길찾기로 이동</a>"
		btn1.click(function() {
			var data = input1.val();
			var map = href1 + url + data + "/" + name.textContent + " "
					+ address.textContent + href2;
			window.open(url + data + "/" + name.textContent + " "
					+ address.textContent);
		});
	});
</script>
<%@ include file="../include/staticHeader.jsp"%>
</head>
<body class="right-sidebar">
	<div id="page-wrapper">

		<!-- Header -->
		<%@ include file="../include/bodyHeader.jsp"%>
		<!-- Main -->
		<div id="main-wrapper">
			<div id="main" class="container">
				<div class="row">

					<!-- Content -->
					<div id="content" class="8u 12u(mobile)">

						<!-- Post -->
						<article class="box post">
							<header>

								<h2>
									${dining.diningId}&nbsp; <strong>${dining.diningName}</strong>
									<br />
								</h2>
							</header>
							<span class="image featured2"><img src="${dining.picture}"
								alt="" /></span>
							<table border="1">
								<tr>
									<td id="name">${dining.diningName}</td>
									<td>
										<ul>
											<li>평점 : ${dining.grade }</li>
											<li>주소 : <span>${dining.locationSimple }</span> , <span
												id="address">${dining.locationDetail }</span></li>
											<li>메뉴 키워드 : ${dining.keyword }</li>
											<li>태그 : ${dining.hashtag }</li>
											<li>전화번호 : ${dining.phoneNumber }</li>
											<li><a href="${dining.diningUrl}">상세사이트로 이동</a></li>
										</ul>
									</td>

								</tr>
								<tr>

									<td colspan="3"><img src="${dining.wordcloud }"
										width=800px></td>

								</tr>
							</table>
					</div>

					<!-- Sidebar -->
					<div id="sidebar" class="4u 12u(mobile)">

						<!-- Excerpts -->
						<section>
							<ul class="divided">
								<li>
									<!-- Excerpt -->
									<article class="box excerpt">
										<header>
											<h3>
												<p class="a1">길찾기: 출발지를 입력하세요!</p>
											</h3>
										</header>
										<input type="text" class="a3"> <input type="button"
											class="button1" value="길찾기">
									</article>

								</li>
								<li>
									<!-- Excerpt -->
									<article class="box excerpt">
										<header>
											<h3>
												<a
													href="./insert?diningId=${dining.diningId}&diningName=${dining.diningName}"><input
													type="button" value="후기 추가"></a>
											</h3>
										</header>
										<p>나만의 후기를 추가하세요. 생생한 후기를 남겨보아요:)</p>
									</article>

								</li>
								<li>
									<!-- Excerpt -->
									<article class="box excerpt">
										<header>
											<h3>
												<a href="./list"><input type="button" value="다시조회하기"></a>
											</h3>
										</header>
										<p>마음에 드는 맛집이 없나요?ㅠㅠ</p>
										<img
											src="https://mblogthumb-phinf.pstatic.net/MjAxNzAxMTZfMjU5/MDAxNDg0NTM4MTc1NDgw.NlXyGGYUuFv5aDbmJKyvVBCS7PkvAQlJjqwr5b7C6okg.ZowzZ8L-Ft_al1OXO9BDfFIUspwVFCUQCxrP-KBrajEg.GIF.gak05/%EB%8B%B9%ED%99%A9%ED%95%98%EB%8A%94_%EB%9D%BC%EC%9D%B4%EC%96%B8.gif?type=w800">
									</article>

								</li>
							</ul>
						</section>

						<!-- Highlights -->


					</div>

				</div>
			</div>
		</div>

		<!-- Footer -->
		<%@ include file="../include/bodyFooter.jsp"%>


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