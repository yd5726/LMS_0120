<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>lec_list_test</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<style>
.flip {
	width: 300px;
	height: 430px;
	position: relative;
}

.cards {
	width: 100%;
	height: 100%;
	position: relative;
	transition: .4s;
	transform-style: preserve-3d;
}

.front, .back {
	position: absolute;
	width: 100%;
	height: 100%;
	backface-visibility: hidden;
	display: flex;
	justify-content: center;
	align-items: center;
	color: #fff;
	border-radius: 10px;
	border: 0px solid #000;
}

.back {
	background-color: #7F00FF;
	transform: rotateY(180deg);
}

.flip:hover .cards {
	transform: rotateY(180deg);
}

.cards-container {
	width: 300px;
	height: 430px;
	box-shadow: 0px 1px 10px 1px #000;
	overflow: hidden;
	border-radius: 10px;
}

.upper-container {
	height: 150px;
	background: #7F00FF;
}

.image-container {
	background: white;
	width: 80px;
	height: 80px;
	border-radius: 50%;
	padding: 0;
	transform: translate(115px, 100px);
}

.image-container img {
	width: 80px;
	height: 80px;
	border-radius: 50%;
}

.lower-container {
	height: 280px;
	background: #FFF;
	padding: 40px 30px 20px 40px;
	text-align: center;
}

.lower-container h3, h4 {
	box-sizing: border-box;
	line-height: .6;
	font-weight: lighter;
}

.lower-container h4 {
	color: #7F00FF;
	opacity: .6;
	font-weight: bold;
}

.lower-container p {
	font-size: 16px;
	color: gray;
	margin-bottom: 30px;
}

.lower-container .btn {
	padding: 12px 20px;
	background: #7F00FF;
	border: none;
	color: white;
	border-radius: 30px;
	font-size: 12px;
	text-decoration: none;
	font-weight: bold;
	transition: all .3s ease-in;
}

.lower-container .btn:hover {
	background: transparent;
	color: #7F00FF;
	border: 2px solid #7F00FF;
}

.profile_card {
	width: 300px;
	height: 430px;
	margin: 10px;
	float: left;
}

.boxes {
	width: 960px;
	height: 453px;
	margin: 0 auto;
}
</style>
<body>
	<div class="boxes">
		<div class="profile_card">
			<div class="flip">
				<div class="cards">
					<div class="front">
						<div class="cards-container">
							<div class="upper-container">
								<div class="image-container">
									<img src="img/common/profile.png" />
								</div>
							</div>
							<div class="lower-container">
								<div>
									<h3>Alaina Wick</h3>
									<h4>Front-end Developer</h4>
								</div>
								<div>
									<p>sodales accumsan ligula. Aenean sed diam tristique,
										fermentum mi nec, ornare arch.</p>
								</div>
								<div>
									<a href="#" class="btn">View profile</a>
								</div>
							</div>
						</div>
					</div>
					<div class="back"></div>
				</div>
			</div>
		</div>
		<div class="profile_card">
			<div class="flip">
				<div class="cards">
					<div class="front">
						<div class="cards-container">
							<div class="upper-container">
								<div class="image-container">
									<img src="img/common/profile.png" />
								</div>
							</div>
							<div class="lower-container">
								<div>
									<h3>Alaina Wick</h3>
									<h4>Front-end Developer</h4>
								</div>
								<div>
									<p>sodales accumsan ligula. Aenean sed diam tristique,
										fermentum mi nec, ornare arch.</p>
								</div>
								<div>
									<a href="#" class="btn">View profile</a>
								</div>
							</div>
						</div>
					</div>
					<div class="back"></div>
				</div>
			</div>
		</div>
		<div class="profile_card">
			<div class="flip">
				<div class="cards">
					<div class="front">
						<div class="cards-container">
							<div class="upper-container">
								<div class="image-container">
									<img src="img/common/profile.png" />
								</div>
							</div>
							<div class="lower-container">
								<div>
									<h3>Alaina Wick</h3>
									<h4>Front-end Developer</h4>
								</div>
								<div>
									<p>sodales accumsan ligula. Aenean sed diam tristique,
										fermentum mi nec, ornare arch.</p>
								</div>
								<div>
									<a href="#" class="btn">View profile</a>
								</div>
							</div>
						</div>
					</div>
					<div class="back"></div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>