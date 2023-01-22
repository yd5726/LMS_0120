<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>enrolment_log</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="css/member.css?<%=new java.util.Date()%>">
</head>
<body>
	<h1 class="d-none">홈-마이페이지-메인</h1>
	<div id="container" class="ct_top">
		<div class="main_wrap">
			<h2 class="lnb_title text-center text-dark">마이페이지</h2>
			<ul id="lnb" class="lnb_list">
				<li id="lnb_enrolment_log"><a href="enrolment_log.me"
					class="btn btn-dark rounded-pill text-white"> 수강현황 </a></li>
				<li id="lnb_modify_myinfo"><a href="modify_myinfo.me"
					class="btn btn-outline-dark rounded-pill text-dark"> 회원정보수정 </a></li>
			</ul>
			<div id="contet_area">
				<div class="path">
					<ol class='path_list'>
						<li>마이페이지</li>
						<li class="last">메인</li>
					</ol>
				</div>
				<div class="content_body">
					<div class="my_box">
						
					</div>
								
				</div>
			</div>
		</div>
	</div>
</body>
</html>