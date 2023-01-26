<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>open_lecture</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/js/all.min.js"></script>
<style>
#container {
	position: relative;
	width: 100%;
	margin: 0 auto;
}

.main_wrap {
	width: 1200px;
	margin: 0 auto;
	overflow: hidden;
	min-height: 620px;
	margin: 0 auto;
}

.sub_nav_wrap {
	display: flex;
	border-bottom: 1px solid #cccccc;
	padding: 10px 0;
}

.sub_nav1 {
	width: 60%;
	height: 50px;
	line-height: 50px;
	background-color: #fff;
}

.sub_nav2 {
	width: 40%;
	height: 50px;
	line-height: 50px;
	background-color: #fff;
}

.sub_nav1>ul>li>span {
	color: #000;
	padding-right: 10px;
}

.sub_nav1>ul>li {
	float: left;
	padding: 0 20px; /*수정*/
}

.sub_nav2>ul>li {
	float: right;
	padding: 0 20px;
}

#open_lecture_list_wrap {
	display: flex;
	height: 50px;
	text-align: left;
	align-items: center;
	margin: 10px 30px 0;
}

.open_lecture_list1 {
	width: 90%;
	height: 50px;
}

.open_lecture_list2 {
	width: 10%;
	height: 50px;
}

.open_lecture_list1>h5, .open_lecture_list2>span {
	line-height: 50px;
}

.open_lecture_list2>span {
	padding: 10px;
	font-size: 20px;
}

.portlet-body {
	border: 1px solid #cccccc;
	border-radius: 10px;
	background-color: #fff;
	overflow: hidden;
	margin: 0 30px;
}

.portlet-body>.table>thead {
	background-color: #506eaf;
	border-radius: 10px;
	color: #fff;
}

.portlet-body>.table>thead>tr>th {
	padding: 20px 10px;
}

.table tr:last-child th, .table tr:last-child td {
	border-bottom: none;
}

.table {
	margin-bottom: 0;
}

.table>tbody>tr:hover {
	background-color: #d2d2d2;
}

#open_lecture_info_wrap {
	height: 50px;
	text-align: left;
	margin: 10px 30px 0;
}

.open_lecture_title>h5 {
	height: 50px;
	line-height: 50px;
}

.open_lecture_table {
	float: left;
	border: 1px solid #cccccc;
	border-radius: 10px;
	overflow: hidden;
	box-shadow: 0px 0px 1px #000;
	margin-left: 30px;
}

.open_lecture_table tr {
	border: 1px solid #cccccc;
}

.open_lecture_table>tbody>tr>th {
	background-color: #293859;
	color: #fff;
	padding: 20px;
}

.open_lecture_table>tbody>tr>td {
	width: 300px;
}

.open_lecture_table>tbody>tr>td>input[type=text], .open_lecture_table>tbody>tr>td>select
	{
	width: 90%;
}

.btn_cs {
	float: left;
	height: 200px;
}

.btn_cs>a:first-child {
	margin-left: 10px;
	margin-top: 30px;
}

.btn_cs>a:last-child {
	margin-left: 10px;
	margin-top: 120px;
}

.btn_cs>a {
	position: absolute;
	transition: all .3s ease-in;
	border-radius: 30px;
	padding: 10px;
	background: #293859;
	color: #fff !important;
	border-radius: 30px;
	border: 1px solid #293859;
}

.btn_cs>a:hover {
	background: transparent;
	color: #124567 !important;
	border: 1px solid #124567;
}

.sub_nav2_btns {
	height: 50px;
}

.sub_nav2_btns>li>a {
	transition: all .3s ease-in;
	border-radius: 30px;
	border: 1px solid #506eaf;
	padding: 0 10px;
	background: #506eaf;
	color: #fff !important;
}

.sub_nav2_btns>li>a:hover {
	background: transparent;
	color: #124567 !important;
	border: 1px solid #124567;
}
</style>
</head>
<body>
	<h1 class="d-none">홈-강의관리-개설강의정보</h1>
	<div id="container">
		<div class="main_wrap">
			<div class="sub_nav_wrap">
				<nav class="sub_nav1">
					<ul>
						<form id="searchForm" action="open_lecture.le" method="get"
							style="display: inline-block;">
							<input type="hidden" name="member_code"
								value="${loginInfo.member_code}">
							<li><span>개설년도</span> <span> <select
									name="select_year">
										<option value="" ${select_year eq '' ? 'selected':''}>전체</option>
										<option value="2023" ${select_year eq '2023' ? 'selected':''}>2023</option>
										<option value="2022" ${select_year eq '2022' ? 'selected':''}>2022</option>
								</select>
							</span></li>
							<li><span>과목</span> <span><select
									name="select_subject">
										<option value="" ${select_subject eq '' ? 'selected':''}>전체</option>
										<option value="KOR" ${select_subject eq 'KOR' ? 'selected':''}>국어</option>
										<option value="MATH"
											${select_subject eq 'MATH' ? 'selected':''}>수학</option>
										<option value="ENG" ${select_subject eq 'ENG' ? 'selected':''}>영어</option>
								</select> </span></li>
						</form>
					</ul>
				</nav>
				<nav class="sub_nav2">
					<ul class="sub_nav2_btns">
						<!-- <li><a>삭제</a></li>
						<li><a>수정</a></li> -->
						<li><a>등록</a></li>
						<li><a id="search_btn">조회</a></li>
					</ul>
				</nav>
			</div>
			<div id="open_lecture_list_wrap">
				<div class="open_lecture_list1">
					<h5>개설강의 목록</h5>
				</div>
				<div class="open_lecture_list2">
					<span><i class="fa-solid fa-caret-left"></i></span> <span>1</span>
					<span><i class="fa-solid fa-caret-right"></i></span>
				</div>
			</div>
			<div class="portlet-body">
				<table class="table">
					<colgroup>
						<col style="width: 5%">
						<col>
						<col style="width: 10%">
						<col style="width: 10%">
						<col style="width: 10%">
						<col style="width: 10%">
						<col style="width: 10%">
						<col style="width: 5%">
					</colgroup>
					<thead>
						<tr>
							<th>코드</th>
							<th>강의명</th>
							<th>시작일</th>
							<th>종료일</th>
							<th>강의실</th>
							<th>강사명</th>
							<th>과목명</th>
							<th>교시</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items='${te_lec_list}' var='vo'>
							<tr>
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
	</div>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
	<script>
		var searchForm = $('#searchForm');
		$('#search_btn').on("click", function(e) {
			searchForm.submit();
		});
	</script>
</body>
</html>