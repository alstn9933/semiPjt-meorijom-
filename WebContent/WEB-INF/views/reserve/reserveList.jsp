<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script type="text/javascript" src="/js/jquery-3.3.1.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">




<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>내 예약 내역</title>
<style>

.glyphicon {
	margin-bottom: 10px;
	margin-right: 10px;
}

table {
	width: 100%;
}

small {
	display: block;
	line-height: 1.428571429;
	color: #999;
}


/* 헤더 제대로적용------------------------ */
.headermiddle input[type="text"] {
	height: 25px;
	margin-bottom: 10px;
	padding: 0;
}

.homeIcon>img {
	margin-top: 5px;
}

.headermiddle {
	lint-height:20px;
	padding-top: 6px;
}
/* 헤더 제대로적용------------------------ */

.container {
	overflow: "hidden";
}

.content {
	overflow: "hidden";
	text-align: center;
	margin-top: 20px;
}

.content>div {
	float: left;
}

.cTitle {
	margin-top: 130px;
	padding-top: 50px;
	padding-left: 100px;
	font-size: 50px;
	letter-spacing: 80%;
	width: 100%;
	height: 200px;
	opacity: 90%;
	color: white;
	background-color: #f5f5f5;
}


.reserveno {
	box-shadow: 5px 5px 15px grey;
	margin: 0 auto;
	margin-bottom: 10px;
	padding: 30px;
	width: 500px;
	border-radius: 10px;
	border: 3px solid grey;
}

.reserveok {
	display: none;
}

.userInfo {
	margin: 0 auto;
	padding: 10px;
	width: 60%;
	margin-bottom: 40px;
	border-radius: 15px;
}

td {
	width: 48%;
}

th {
	text-align: left;
	width: 50%;
}

.button {
	text-align: right;
}

.img {
	text-align: right;
}

.yes h4 {
	text-shadow: 1px 1px 1px grey;
}

.row {
	padding: 5px;
	border-radius: 10px;
}

.row>div {
	
}
</style>
</head>
<body>
	<div class="wrapper">
		<jsp:include page="/WEB-INF/views/common/header.jsp" />
		<div class="cTitle">
			<p class="meorijom"># RESERVATION & REVIEW</p>
		</div>
		<br> <br>


		<div class="container">

			<div class="col-12 col-2 col-12">
				<div class="row">
					<div class="col-sm-4 col-md-4">
						<h2>고객 정보</h2>
						<h6>
							회원 이름 : ${sessionScope.member.memberName}
							<div class="btn-group col-4">
								<button type="button" class="btn">
									<h5>Social</h5>
								</button>
								<button type="button" class="btn dropdown-toggle"
									data-toggle="dropdown">
									<span class="caret"></span><span class="sr-only">Social</span>
								</button>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#">Twitter</a></li>
									<li><a href="https://plus.google.com/+Jquery2dotnet/posts">Google
											+</a></li>
									<li><a href="https://www.facebook.com/jquery2dotnet">Facebook</a></li>
									<li class="divider"></li>
								</ul>
							</div>
						</h6>
						<p>회원 아이디 : ${sessionScope.member.memberId}</p>
						<p>연락처 : ${sessionScope.member.memberPhone}</p>

						<!-- Split button -->
					</div>
				</div>
			</div>


			<hr>
			<div class="content" style="margin-top: 40px;">

				<!-- <div class="reserveok col-xs-2"></div> -->
				<div class="col-md-6">
					<h4 class="colcol" style="text-align: center">예약중 목록</h4>
					<br> <br>
					<c:forEach items="${userReserveList}" var='u'>
						<c:if test="${u.reserveStatus==false}">
							<div class="reserveno">
								<div class="yes"></div>
								<table>
									<tr>
										<th>예약지점 : <span>${u.salonName}</span></th>
										<td rowspan="6" class="img"><img
											src="../upload/designer/designer${u.designerNo}.jpg"
											width="150" height="150"></td>
									</tr>
									<tr>
										<th>예약날짜 : <span>${u.reserveDate}</span></th>
									</tr>
									<tr>
										<th>예약 디자이너 : <span>${u.designerName}</span></th>

									</tr>
									<tr>
										<th>예약 시간 : <span> <c:if test="${u.startTime==1}">10:00</c:if>
												<c:if test="${u.startTime==2}">10:30</c:if> <c:if
													test="${u.startTime==3}">11:00</c:if> <c:if
													test="${u.startTime==4}">11:30</c:if> <c:if
													test="${u.startTime==5}">12:00</c:if> <c:if
													test="${u.startTime==6}">12:30</c:if> <c:if
													test="${u.startTime==7}">13:00</c:if> <c:if
													test="${u.startTime==8}">13:30</c:if> <c:if
													test="${u.startTime==9}">14:00</c:if> <c:if
													test="${u.startTime==10}">14:30</c:if> <c:if
													test="${u.startTime==11}">15:00</c:if> <c:if
													test="${u.startTime==12}">15:30</c:if> <c:if
													test="${u.startTime==13}">16:00</c:if> <c:if
													test="${u.startTime==14}">16:30</c:if> <c:if
													test="${u.startTime==15}">17:00</c:if> <c:if
													test="${u.startTime==16}">17:30</c:if> <c:if
													test="${u.startTime==17}">18:00</c:if> <c:if
													test="${u.startTime==18}">19:30</c:if> <c:if
													test="${u.startTime==19}">19:00</c:if> <c:if
													test="${u.startTime==20}">20:30</c:if>
										</span></th>
									</tr>
									<tr>
										<th>예약 가격 : <span>${u.totalPrice}</span></th>
									</tr>


									<tr>
										<th>예약 시술 : <c:forEach items="${u.menuList}" var='uu'>
												<span>${uu.hairName} </span>
											</c:forEach></th>
									</tr>


									<tr>
									<c:if test="${u.paymentStatus=='true'}">
										<td><input type="button" class="btn"
												style="border: 1px solid #999" value="결제완료"></td>
									</c:if>
									<c:if test="${u.paymentStatus=='false'}">
										<form action="/payPage" method="post">
											
											<td><input type="submit" class="btn"
												style="border: 1px solid #999" value="선결제"></td>
											<td><input type="hidden" name="reserveNo"
												value="${u.reserveNo }"></td>
										</form>
									</c:if>
									</tr>
									<tr>
										<form action="/reserveDelete1" method="post">
											<td><input type="submit" class="btn"
												style="border: 1px solid #999" value="예약취소"></td>
											<td><input type="hidden" name="reserveNo"
												value="${u.reserveNo }"></td>
										</form>
									</tr>

								</table>

							</div>
						</c:if>
					</c:forEach>
					<br>
				</div>
				<div class="col-md-6">
					<h4 style="text-align: center">
						방문완료 목록
						
						
						
						<c:set var="falseCnt" value="0" />
						<c:forEach items="${userReserveList}" var='uuu' varStatus="status">
							<c:if test="${(uuu.reserveStatus==true)}">
								<c:set var="falseCnt" value="${falseCnt + 1}" />
							</c:if>
						</c:forEach>
						<c:out value="${falseCnt}" />개
						
						<button type="button" class="btn" id="openBtn"
							onclick="testopen();">(펼치기)</button>
						<h5 style="text-align: center">
							리뷰 미작성

							<c:set var="falseCnt" value="0" />
							<c:forEach items="${userReserveList}" var='uuu'
								varStatus="status">
								<c:if test="${uuu.reserveStatus==true}">
								<c:if test="${(uuu.reserveReview==false)}">
									<c:set var="falseCnt" value="${falseCnt + 1}" />
								</c:if>
								</c:if>
							</c:forEach>

							<c:out value="${falseCnt}" />
							개
						</h5>

					</h4>
					<br> <br>
					<c:forEach items="${userReserveList}" var='u'>
						
						<c:if test="${u.reserveStatus==true}">
						<c:if test="${u.reserveReview==false}">
							<div class="reserveok">
								<div class="no"></div>
								<table>
									<tr>
										<th>예약지점 : <span>${u.salonName}</span></th>
										<th>예약날짜 : <span>${u.reserveDate}</span></th>
									</tr>

									<tr>
										<th>예약 디자이너 : <span>${u.designerName}</span></th>
										<th>예약 시간 : <span> <c:if test="${u.startTime==1}">10:00</c:if>
												<c:if test="${u.startTime==2}">10:30</c:if> <c:if
													test="${u.startTime==3}">11:00</c:if> <c:if
													test="${u.startTime==4}">11:30</c:if> <c:if
													test="${u.startTime==5}">12:00</c:if> <c:if
													test="${u.startTime==6}">12:30</c:if> <c:if
													test="${u.startTime==7}">13:00</c:if> <c:if
													test="${u.startTime==8}">13:30</c:if> <c:if
													test="${u.startTime==9}">14:00</c:if> <c:if
													test="${u.startTime==10}">14:30</c:if> <c:if
													test="${u.startTime==11}">15:00</c:if> <c:if
													test="${u.startTime==12}">15:30</c:if> <c:if
													test="${u.startTime==13}">16:00</c:if> <c:if
													test="${u.startTime==14}">16:30</c:if> <c:if
													test="${u.startTime==15}">17:00</c:if> <c:if
													test="${u.startTime==16}">17:30</c:if> <c:if
													test="${u.startTime==17}">18:00</c:if> <c:if
													test="${u.startTime==18}">19:30</c:if> <c:if
													test="${u.startTime==19}">19:00</c:if> <c:if
													test="${u.startTime==20}">20:30</c:if>

										</span></th>
									</tr>
									<tr>
										<th>예약 가격 : <span> ${u.totalPrice}</span></th>
										<th>예약 시술 : <c:forEach items="${u.menuList}" var='uu'>
												<span>${uu.hairName}</span>
											</c:forEach>
										</th>
									</tr>

									<c:if test="${u.reserveReview==false}">

										<!-- 여기서부터 리뷰를작성했냐 안했냐 갈라야함 -->
										<td><button type="button"
												onclick="reviewInsert('${u.reserveNo}','${u.salonName }','${sessionScope.member.memberId}');"
												class="btn" data-toggle="modal"
												style="border: 1px solid #999" data-target="#exampleModal"
												data-whatever="@mdo">후기작성</button></td>


										<%-- $바로위에 {u.memberId }값에 ${sessionScope.member.memberId }들어가야함 지금은 session이 없음으로 이렇게 대채 --%>
									</c:if>
									<c:if test="${u.reserveReview==true}">

										<td><button type="button" class="btn" readonly
												style="background-color: #f5f5f5">후기작성완료</button></td>

									</c:if>
								</table>
								<hr>
							</div>
							</c:if>
						</c:if>
					</c:forEach>
					<c:forEach items="${userReserveList}" var='u'>
						
						<c:if test="${u.reserveStatus==true}">
						<c:if test="${u.reserveReview==true}">
							<div class="reserveok">
								<div class="no"></div>
								<table>
									<tr>
										<th>예약지점 : <span>${u.salonName}</span></th>
										<th>예약날짜 : <span>${u.reserveDate}</span></th>
									</tr>

									<tr>
										<th>예약 디자이너 : <span>${u.designerName}</span></th>
										<th>예약 시간 : <span> <c:if test="${u.startTime==1}">10:00</c:if>
												<c:if test="${u.startTime==2}">10:30</c:if> <c:if
													test="${u.startTime==3}">11:00</c:if> <c:if
													test="${u.startTime==4}">11:30</c:if> <c:if
													test="${u.startTime==5}">12:00</c:if> <c:if
													test="${u.startTime==6}">12:30</c:if> <c:if
													test="${u.startTime==7}">13:00</c:if> <c:if
													test="${u.startTime==8}">13:30</c:if> <c:if
													test="${u.startTime==9}">14:00</c:if> <c:if
													test="${u.startTime==10}">14:30</c:if> <c:if
													test="${u.startTime==11}">15:00</c:if> <c:if
													test="${u.startTime==12}">15:30</c:if> <c:if
													test="${u.startTime==13}">16:00</c:if> <c:if
													test="${u.startTime==14}">16:30</c:if> <c:if
													test="${u.startTime==15}">17:00</c:if> <c:if
													test="${u.startTime==16}">17:30</c:if> <c:if
													test="${u.startTime==17}">18:00</c:if> <c:if
													test="${u.startTime==18}">19:30</c:if> <c:if
													test="${u.startTime==19}">19:00</c:if> <c:if
													test="${u.startTime==20}">20:30</c:if>

										</span></th>
									</tr>
									<tr>
										<th>예약 가격 : <span> ${u.totalPrice}</span></th>
										<th>예약 시술 : <c:forEach items="${u.menuList}" var='uu'>
												<span>${uu.hairName}</span>
											</c:forEach>
										</th>
									</tr>

									<c:if test="${u.reserveReview==false}">

										<!-- 여기서부터 리뷰를작성했냐 안했냐 갈라야함 -->
										<td><button type="button"
												onclick="reviewInsert('${u.reserveNo}','${u.salonName }','${sessionScope.member.memberId}');"
												class="btn" data-toggle="modal"
												style="border: 1px solid #999" data-target="#exampleModal"
												data-whatever="@mdo">후기작성</button></td>


										<%-- $바로위에 {u.memberId }값에 ${sessionScope.member.memberId }들어가야함 지금은 session이 없음으로 이렇게 대채 --%>
									</c:if>
									<c:if test="${u.reserveReview==true}">

										<td><button type="button" class="btn" readonly
												style="background-color: #f5f5f5">후기작성완료</button></td>

									</c:if>
								</table>
								<hr>
							</div>
							</c:if>
						</c:if>
					</c:forEach>
				</div>
			</div>
		</div>

	</div>
	<script>
		$('#exampleModal').on('show.bs.modal', function(event) {
			var button = $(event.relatedTarget) // Button that triggered the modal
			var recipient = button.data('whatever') // Extract info from data-* attributes
			// If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
			// Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
			var modal = $(this)
			modal.find('.modal-title').text('New message to ' + recipient)
			modal.find('.modal-body input').val(recipient)
		});

		function reviewInsert(reserveNo, salonName, memberId) {
			var param = {reserveNo : reserveNo};
			$.ajax({
						url : "/reserveSearch",
						data : param,
						type : "get",
						success : function(data) {
							var modal = $("#modal-content");
							modal.find("p").remove();
							modal.find("img").remove();
							modal.append("<img src='../upload/designer/"+data[0].designerFilepath+" width='150' height='150'>");
							modal.append("<p> 디자이너 이름 : "
									+ data[0].designerName + "</p>");
							modal.append("<p> 예약자 이름 : " + data[0].memberName
									+ "</p>");
							modal.append("<p> 예약 시술 : "
									+ data[0].menuList[0].hairName + "</p>");
							modal.append("<p> 예약 가격 : " + data[0].totalPrice
									+ "</p>");
							$("#rating-ability-wrapper")
									.append(
											"<input type='hidden' name='reserveNo' value='"+data[0].reserveNo+"'>");
							$("#rating-ability-wrapper")
									.append(
											"<input type='hidden' name='reserveStatus' value='"+data[0].reserveStatus+"'>");
							$("#rating-ability-wrapper")
									.append(
											"<input type='hidden' name='salonName' value='"+salonName+"'>");
							$("#rating-ability-wrapper")
									.append(
											"<input type='hidden' name='memberId' value='"+memberId+"'>");
							$("#rating-ability-wrapper")
									.append(
											"<input type='hidden' name='number' value='1'>");

						},
						error : function() {
							console.log('에러');
						}
					});
		}

		jQuery(document).ready(function($) {

			$(".btnrating").on('click', (function(e) {

				var previous_value = $("#selected_rating").val();

				var selected_value = $(this).attr("data-attr");
				$("#selected_rating").val(selected_value);

				$(".selected-rating").empty();
				$(".selected-rating").html(selected_value);

				for (i = 1; i <= selected_value; ++i) {
					$("#rating-star-" + i).toggleClass('btn-warning');
					$("#rating-star-" + i).toggleClass('btn-default');
				}

				for (ix = 1; ix <= previous_value; ++ix) {
					$("#rating-star-" + ix).toggleClass('btn-warning');
					$("#rating-star-" + ix).toggleClass('btn-default');
				}

			}));

		});

		function testopen() {
			if ($("#openBtn").html() == "(접기)") {
				$(".reserveok").hide();
				$("#openBtn").html("(펼치기)");
			} else {

				$(".reserveok").slideToggle(500).show();
				$("#openBtn").html("(접기)");
			}

		}
	</script>

	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">후기작성</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">


					<div class="form-group" id="modal-content"></div>
					<form action="/insertReview" method="post" id="inputReviewBox">
						<div class="form-group">

							<label for="recipient-name" class="col-form-label"></label>

							<div class="form-group" id="rating-ability-wrapper">
								<label class="control-label" for="rating"> <span
									class="field-label-header">더욱 발전하는 서비스를 위해 만족하신만큼 별점
										부탁드립니다.</span><br> <span class="field-label-info"></span> <input
									type="hidden" id="selected_rating" name="selected_rating"
									value="" required="required">
								</label>
								<h4 class="bold rating-header" style="">
									<span class="selected-rating">0</span><small> / 5</small>
								</h4>
								<button type="button" class="btnrating btn btn-default btn-lg"
									data-attr="1" id="rating-star-1" name="star">
									<i class="fa fa-star" aria-hidden="true"></i>
								</button>
								<button type="button" class="btnrating btn btn-default btn-lg"
									data-attr="2" id="rating-star-2" name="star1">
									<i class="fa fa-star" aria-hidden="true"></i>
								</button>
								<button type="button" class="btnrating btn btn-default btn-lg"
									data-attr="3" id="rating-star-3" name="star2">
									<i class="fa fa-star" aria-hidden="true"></i>
								</button>
								<button type="button" class="btnrating btn btn-default btn-lg"
									data-attr="4" id="rating-star-4" name="star3">
									<i class="fa fa-star" aria-hidden="true"></i>
								</button>
								<button type="button" class="btnrating btn btn-default btn-lg"
									data-attr="5" id="rating-star-5" name="star4">
									<i class="fa fa-star" aria-hidden="true"></i>
								</button>
							</div>
						</div>
						<div class="form-group">
							<label for="message-text" class="col-form-label">한줄평 등록</label>
							<textarea class="form-control" id="message-text"
								name="insertReview"></textarea>
						</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">취소하기</button>
					<button type="submit" class="btn btn-primary">후기 작성하기</button>

					</form>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp" />
	<script>
		$(function() {
			$('.btn-secondary').click(function() {
				
				$('.selected-rating').val("");
				$('.form-control').val("");
				
				$(".bold rating-header").val("");

			});
		});

	</script>
</body>
</html>