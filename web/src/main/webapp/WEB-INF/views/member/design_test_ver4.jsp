<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>design_test_ver4</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<style>
#container {
	width: 100%;
	overflow: hidden;
}

#container2 {
	width: 100%;
	overflow: hidden;
}

.main_wrap {
	width: 1200px;
	margin: 0 auto;
	position: relative;
	overflow: hidden;
	height: 350px;
}

.main_wrap2 {
	width: 980px;
	margin: 0 auto;
	position: relative;
	overflow: hidden;
}
</style>

<style>
.pm_detail_top {
	position: relative;
	overflow: hidden;
}

.pm_detail_top .img {
	float: left;
	width: 40%;
}

.pm_detail_top .img img {
	width: 300px;
	height: 340px;
}

.lecture {
	position: relative;
	float: left;
	width: 60%;
	text-align: left;
	padding: 50px 0;
}

.icons {
	margin-bottom: 15px;
}

.lecture h2 {
	color: #222;
	font-size: 26px;
	font-weight: bold;
	margin-bottom: 20px;
	padding-right: 60px;
}

.lecture .name {
	margin-bottom: 40px;
}

.lecture .name>strong {
	font-size: 24px;
	color: #222;
	vertical-align: middle;
}

.lecture .name>span {
	font-size: 20px;
	color: #999;
	vertical-align: middle;
}

.lecture .name .btn {
	display: inline-block;
	margin-left: 10px;
	vertical-align: middle;
	width: 24px;
	height: 24px;
	background-color: #1988cc;
	background-size: 16px auto;
}

.lecture .btns a {
	float: left;
	margin-right: 20px;
	display: block;
	width: 170px;
	height: 60px;
	line-height: 60px;
	border: 1px solid #e84c4c;
	color: #fff;
	font-size: 20px;
	background-color: #e84c4c;
	box-sizing: border-box;
	padding: 0 15px;
	position: relative;
	transition: all 0.15s;
}

.en_table table {
	width: 100%;
}

.en_table table tbody tr {
	border: 1px solid #ddd;
}

.en_table table tbody tr th {
	background-color: #000;
	color: #fff;
	padding: 10px 0;
}

.en_table table tbody tr td {
	text-align: left;
	padding: 15px 20px;
}

.en_progress {
	position: relative;
	height: 30px;
}

.en_bar {
	background-color: #ff612a;
	border-radius: 8px;
	height: 16px;
	width: 100%;
}

.en_bar .data {
	background-color: #0179b6;
	height: 16px;
	border-radius: 8px;
}

.percent {
	position: absolute;
	left: 0;
	top: 22px;
	line-height: 1.3;
	color: #222;
	font-size: 15px;
}

.percent.p1 {
	left: 0;
	text-align: left;
}
.percent.p2 {
	right: 0;
	text-align: right;
}
</style>
<body>
	<div id="container">
		<div class="main_wrap">
			<div class="sub_wrap">
				<div class="pm_detail_top">
					<div class="img">
						<img src="img/teacher/teacher1.png">
					</div>
					<div class="lecture">
						<div class="icons">
							<i class="pmico yellow">중학2</i> <i class="pmico blue">내신기본</i> <i
								class="pmico sky">완강</i> <i class="pmico green">교재</i>
						</div>
						<h2>[중2] 싸플 중학 과학</h2>
						<div class="name">
							<strong>김청해</strong> <span>선생님</span> <a href="#선생님정보"
								class="btn"></a>
						</div>
						<div class="btns">
							<a class="btn1">수강신청</a> <a class="btn1">교재구매</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="container2">
		<div class="main_wrap2">
			<div class="en_table">
				<table>
					<tr>
						<th>수강대상</th>
						<td>중학2/내신기본</td>
					</tr>
					<tr>
						<th>수강기간</th>
						<td>151강/총180일</td>
					</tr>
					<tr>
						<th>강의교재</th>
						<td>씨플 중학교 과학 2</td>
					</tr>
					<tr>
						<th>강좌구성</th>
						<td>
							<div class="en_progress">
								<div class="en_bar">
									<div class="data" style="width: 30%"></div>
								</div>
								<div class="percent p1">
									<strong>30%</strong> <span>개념설명</span>
								</div>
								<div class="percent p2">
									<strong>70%</strong> <span>문제풀이</span>
								</div>
							</div>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</body>
</html>