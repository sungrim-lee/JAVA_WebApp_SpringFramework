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
<%@ include file="../include/staticHeader.jsp"%>

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
					<article class="box post">
						<header>
							<h2>
								검색할 <strong>맛집</strong>을 입력하세요
							</h2>
						</header>
						<form action="./search" method="get">
							<input type="hidden" name="pagecount" value="1"> <select
								name="location">
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
							</select><br>
							<table border="1">
								<th>상호명</th>
								<td><input type="text" name="diningName"></td>
								<th>메뉴 키워드</th>
								<td><input type="text" name="keyword"></td>
								<th>해시 태그</th>
								<td><input type="text" name="hashtag"></td>
							</table>
							<input type="submit" value="검색"> <input type="reset"
								value="취소"> <br>&nbsp;
						</form>

						<div class="content-wrapper">
							<div class="row">
								<div class="grid-margin stretch-card">
									<div class="card">
										<div class="card-body" style="width: 1190px;">
											<h4 class="card-title">맛집 리스트</h4>
											<p class="card-description"></p>
											<form action="./search" method="post">
												<table class="table table-hover table-responsive"
													id="content">
													<thead align="left">
														<tr>
															<th>상호명</th>
															<th style="width: 60px">평점</th>
															<th>주소</th>
														</tr>
													</thead>
													<tbody>

														<c:forEach var="dining" items="${diningList}">
															<tr>
																<td><a href="detail?diningId=${dining.diningId}">${dining.diningName}</a></td>
																<td>${dining.grade }</td>
																<td>${dining.locationSimple },
																	${dining.locationDetail }</td>
															</tr>
														</c:forEach>
													</tbody>
												</table>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
						<tfoot>

                     <!-- <tr>
                <td colspan="2">-->
                     <!-- 왼쪽 화살표 -->
                     <!--<c:if test="${page.prev}">
              <a style="text-decoration:none;" href="javascript:page(${page.getStartPage()-1});">&laquo;</a>
                    </c:if>-->


                     <!-- 페이지 숫자 표시 -->
                     <tr>
                        <td><nobr>
                              <form action="./search" method="get">
                                 <table>
                                    <tr>
                                       <td>지역:</td>
                                       <td><input type="text" name="location"
                                          value="${location}" readonly style="width: 200px;"></td>
                                       <td>상호명:</td>
                                       <td><input type="text" name="diningName"
                                          value="${diningName}" readonly style="width: 200px;"></td>
                                       <td>메뉴 키워드:</td>
                                       <td><input type="text" name="keyword"
                                          value="${keyword}" readonly style="width: 200px;"></td>
                                       <td>해시태그:</td>
                                       <td><input type="text" name="hashtag"
                                          value="${hashtag}" readonly style="width: 200px;"></td>
                                    </tr>
                                 </table>
                                 <br>
                                 <c:if test="${pagebegin>=31}">
                                    <a style="text-decoration: none;"
                                       href="/hr/search?location=${location}&diningName=${diningName}&keyword=${keyword}&hashtag=${hashtag}&pagecount=${pagebegin-30}">&laquo;</a>
                                 </c:if>
                                 <c:if test="${pagebegin<31}">
                                    <a style="text-decoration: none;"
                                       href="/hr/search?location=${location}&diningName=${diningName}&keyword=${keyword}&hashtag=${hashtag}&pagecount=${1}">&laquo;</a>
                                 </c:if>
                                 <c:if test="${pagebegin>=11}">
                                    <a style="text-decoration: none;"
                                       href="/hr/search?location=${location}&diningName=${diningName}&keyword=${keyword}&hashtag=${hashtag}&pagecount=${pagebegin-1}">이전페이지</a>
                                 </c:if>

                                 <c:forEach begin="${pagebegin}" end="${pagebegin+10}"
                                    var="idx">


                                    <c:if test="${idx<=pagecnt}">
                                       <c:if test="${idx%10!=1||idx==pagebegin}">
                                          <input type="submit" name="pagecount" value="${idx}"
                                             style="width: 30px; align: center;">
                                       </c:if>
                                       <c:if test="${idx%10==1&&idx!=pagebegin}">
                                          <a style="text-decoration: none;"
                                             href="/hr/search?location=${location}&diningName=${diningName}&keyword=${keyword}&hashtag=${hashtag}&pagecount=${idx}">다음페이지</a>
                                       </c:if>
                                    </c:if>

                                    <!-- <a style="text-decoration: none;" href="/hr/search?page=${idx}">${idx}</a> -->
                                 </c:forEach>
                                 <c:if test="${pagebegin<=pagecnt-30}">
                                    <a style="text-decoration: none;"
                                       href="/hr/search?location=${location}&diningName=${diningName}&keyword=${keyword}&hashtag=${hashtag}&pagecount=${pagebegin+30}">&raquo;</a>
                                 </c:if>
                                 <c:if test="${pagebegin>pagecnt-30}">
                                    <a style="text-decoration: none;"
                                       href="/hr/search?location=${location}&diningName=${diningName}&keyword=${keyword}&hashtag=${hashtag}&pagecount=${pagecnt}">&raquo;</a>
                                 </c:if>

                              </form>
                           </nobr></td>
                     </tr>

                     <!-- 오른쪽 화살표 -->
                     <!--<c:if test="${page.next}">
                        <a style="text-decoration:none;" href="javascript:page(${page.getEndPage()+1});">&raquo;</a>
                    </c:if>
                </td>
            </tr> -->

                  </tfoot>
					</article>
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