<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>design_test_ver1</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<style>
#container {
	background-color: #3bbbf3;
	width: 100%;
	overflow: hidden;
}

.main_wrap {
	width: 980px;
	margin: 0 auto;
	position: relative;
	overflow: hidden;
}

.sub_wrap {
	overflow: hidden;
	padding: 80px 0;
}

.wrap1 {
	float: left;
	background-color: black;
	overflow: hidden;
	width: 300px;
	height: 500px;
}

.wrap2 {
	float: right;
	overflow: hidden;
	height: 500px;
}

.wrap2_1 {
	width: 380px;
	height: 240px; background-color : blue;
	float: left;
	overflow: hidden;
	position: relative;
	background-color: blue;
}

.wrap2_2 {
	float: left;
	margin-left: 15px;
	margin-bottom: 15px;
	width: 270px;
	height: 240px;
	background-color: green;
}

.clr {
	clear: both;
	height: 0;
	overflow: hidden;
}
</style>
<body>
	<div id="container">
		<div class="main_wrap">
			<div class="sub_wrap">
				<div class="wrap1"></div>
				<div class="wrap2">
					<div class="wrap2_1"></div>
					<div class="wrap2_2"></div>
					<div class="clr"></div>
					<div class="wrap2_1"></div>
					<div class="wrap2_2"></div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>