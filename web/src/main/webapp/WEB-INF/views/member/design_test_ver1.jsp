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
#auto_img_slide_wrap {
	width: 1200px;
	height: 500px;
}

#container {
	width: 500px;
	height: 300px;
	overflow: hidden;
	margin: 0 auto;
}

.img {
	display: none;
	width: 500px;
	height: 300px;
}

.img.on {
	display: block;
}
</style>
<body>
	<!-- 자동 이미지 슬라이드 만들기 -->
	<div id="auto_img_slide_wrap">
		<div id="container">
			<img class="img"
				src="https://cdn.pixabay.com/photo/2014/12/24/05/02/drop-of-water-578897_1280.jpg" />
			<img class="img"
				src="https://cdn.pixabay.com/photo/2017/05/08/13/15/bird-2295431_1280.jpg" />
			<img class="img"
				src="https://cdn.pixabay.com/photo/2020/12/30/14/23/waterfall-5873630_1280.jpg" />
		</div>
	</div>
	<script>
		const images = document.querySelectorAll('.img');
		let current = 0;

		function showSlide() {
			for (let i = 0; i < images.length; i++) {
				images[i].classList.remove('on');
			}
			current++;
			if (current > images.length) {
				current = 1;
			}
			images[current - 1].classList.add('on');
			setTimeout(showSlide, 3000);
		}

		showSlide();
	</script>
</body>
</html>