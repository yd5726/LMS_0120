<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mypage</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="css/member.css?<%=new java.util.Date()%>">
</head>
<style>
.my_info_in li strong, .my_info_in li span {
	color: #000;
}
</style>
<body>
	<div id="container" class="ct_top">
		<div class="main_wrap">
			<h2 class="lnb_title text-center text-dark">마이페이지</h2>
			<div id="contet_area">
				<div class="content_body">
					<div class="my_box">
						<div class="my_info">
							<h6>
								나의정보 <span class="h6_sub">나의 정보를 확인하세요.</span>
							</h6>
							<ul class="my_info_in">
								<li><strong>회원명</strong> <span class="name">${loginInfo.member_name}</span></li>
								<c:choose>
									<c:when test="${empty loginInfo.email}">
										<li><strong>이메일</strong> <span>이메일 정보가 없습니다.</span></li>
									</c:when>
									<c:when test="${not empty loginInfo.email}">
										<li><strong>이메일</strong> <span>${loginInfo.email}</span></li>
									</c:when>
								</c:choose>
								<c:choose>
									<c:when test="${empty loginInfo.phone}">
										<li><strong>전화번호</strong> <span>전화번호 정보가 없습니다.</span></li>
									</c:when>
									<c:when test="${not empty loginInfo.phone}">
										<li><strong>전화번호</strong> <span>${loginInfo.phone}</span></li>
									</c:when>
								</c:choose>
							</ul>
							<span class="btn_more"> <a href="modify_verify.me"
								class="btn btn-dark text-white"> 정보수정 </a>
							</span>
						</div>
						<div class="my_note">
							<h6>
								공지사항 <span class="h6_sub">새로운 소식을 확인하세요.</span>
							</h6>
							<div class="my_notice_in">
								<ul class="list_top">
									<li><a href="#list">계좌 환불 요청시 주의 사항</a></li>
									<li><a href="#list">입금계좌 확인하는 법</a></li>
									<li><a href="#list">결제 오류 및 계좌 입금 안내</a></li>
									<li><a href="#list">쿠폰 등록 방법</a></li>
								</ul>
							</div>
						</div>
					</div>
					<c:if test="${loginInfo.type != 'TEACH'}">
						<div class="enrolment_log_box">
							<h5 class="tb_title">
								수강 중인 과정
							</h5>
							<div class="tb_box type_list mypage_course_user_list">
								<table summary="수강 중인 과정 및 기간을 나타냅니다.">
									<colgroup>
										<col style="width: 10%">
										<col style="width: 20%">
										<col style="width: 13%">
										<col style="width: 13%">
										<col style="width: 11%">
										<col style="width: 10%">
										<col style="width: 10%">
										<col style="width: 5%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">구분</th>
											<th scope="col">과정명</th>
											<th scope="col">시작일</th>
											<th scope="col">종료일</th>
											<th scope="col">강의실</th>
											<th scope="col">강사명</th>
											<th scope="col">과목코드</th>
											<th scope="col">교시</th>
										</tr>
									</thead>
									<tbody>
										<c:if test="${empty lecture_list}">
										<tr>
											<td class="tac" colspan="8">수강 중인 과정이 없습니다.</td>
										</tr>
										</c:if>
										<c:forEach items='${lecture_list}' var='vo'>
											<tr class="text-center">
												<th>${vo.lecture_code}</th>
												<td>${vo.lecture_name}</td>
												<td>${vo.startdate}</td>
												<td>${vo.enddate}</td>
												<td>${vo.room_code}</td>
												<td>${vo.teacher_name}</td>
												<td>${vo.subject_code}</td>
												<td>${vo.timetable_code}</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</c:if>
					<div class="consulting_box">
						<h5 class="tb_title">상담</h5>
						<div class="tb_box type_list mypage_course_user_list">
							<table summary="상담내역을 나타냅니다.">
								<colgroup>
									<col>
									<col style="width: 30%">
									<col style="width: 10%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">제목</th>
										<th scope="col">등록일</th>
										<th scope="col">답변상태</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="tac" colspan="5">상담내역이 없습니다.</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>