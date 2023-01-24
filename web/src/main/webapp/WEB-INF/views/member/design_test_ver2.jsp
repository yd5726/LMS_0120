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
.mySlides {
	display: none;
}
.mySlides>img {
	vertical-align: middle;
}

/* .slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
} */

.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.slide_active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 1.5s;
}

.fade:not(.show){
	opacity: 1;
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

</style>
<body>
	<!-- 자동 이미지 슬라이드 만들기 -->
	<div class="slideshow-container">
		<div class="mySlides fade">
			<img src="img/banner/banner1.png">
		</div>
		<div class="mySlides fade">
			<img src="img/banner/banner2.png">
		</div>
		<div class="mySlides fade">
			<img src="img/banner/banner3.png">
		</div>
	</div>
	<br>
	<div style="text-align: center">
		<span class="dot"></span> <span class="dot"></span> <span class="dot"></span>
	</div>
	<script>
		let slideIndex = 0;
		showSlides();

		function showSlides() {
			let i;
			let slides = document.getElementsByClassName("mySlides");
			let dots = document.getElementsByClassName("dot");
			for (i = 0; i < slides.length; i++) {
				slides[i].style.display = "none";
			}
			slideIndex++;
			if (slideIndex > slides.length) {
				slideIndex = 1
			}
			for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(" slide_active", "");
			}
			slides[slideIndex - 1].style.display = "block";
			dots[slideIndex - 1].className += " slide_active";
			setTimeout(showSlides, 2000);
		}
	</script>
</body>
</html>