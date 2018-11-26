<!DOCTYPE html>
<html>
<head>
	<title>Thiết kế giao diện</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" type="text/css" href="css/giaodien.css">
	<!-- <link rel="stylesheet" type="text/css" href="menutop.css"> -->
</head>
<body>
	<!-- thẻ ngoài cùng -->
	<div class="waper">
		<!-- banner -->
		<div class="banner">
			<img style="width: 100%;height: 250px" src="image/banner.jpg">
		</div>
		<!-- menu top -->
		<div class="menu">
			<div class="menu-top">
				<?php
					require("menutop.php");
				?>
			</div>
		</div>
		<div class="clear"></div>
		<!-- thân trang web -->
		<div class="conten">
			<div class="menuleft">
				<?php 
					require("menuleft.php");
				?>
				<!-- <ul class="menu-left">
					<li><a href="#">Điện thoại</a></li>
					<li><a href="#">Máy tính bảng</a></li>
					<li><a href="#">Laptop</a></li>
					<li><a href="#">Phụ kiện</a></li>
				</ul> -->
			</div>
			<div class="mainconten">
				<h2>Phần hiển thị nội dung</h2>
			</div>
			<div class="menuright">
				<h4>menu right</h4>
			</div>
		</div>
		<div class="clear">
		</div>
		<!-- footer -->
		<div class="footer">
			<h4 style="line-height: 50px; font-size: 20px; color: white">Design By Information Technology Class Courses 17</h4>
		</div>
	</div>
</body>
</html>