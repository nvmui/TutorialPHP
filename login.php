<!DOCTYPE html>
<html>
<head>
	<title>Trang đăng nhập</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
	<div style="width: 350px;height: 200px; border: 1px solid #000; margin: auto; padding-left: 30px; padding-right: 30px;">
		<form action="login.php" method="POST">
			<p style="font-size: 25px; text-align: center;font-style: bold;color: red">Đăng nhập</p>
			Tên đăng nhập <input type="text" name="user" style="width: 230px; line-height: 25px" /><br/>
			Mật khẩu      <input type="password" name="pass" style="width: 230px; line-height: 25px; margin-left: 31px; margin-top: 10px"/><br/>
			<input type="submit" name="btn_danhnhap" value="Đăng nhập" style="margin-top: 10px; width: 100px; height: 30px; margin-left: 50px;font-style: bold; font-size: 15px" />
			<input type="submit" name="btn_nhaplai" value="Nhập lại" style="margin-top: 10px; width: 100px; height: 30px; margin-left: 50px; font-style: bold; font-size: 15px"/>
		</form>
	</div>
	<?php
		if(isset($_POST['btn_danhnhap'])){
			//câu lệnh tru vấn dữ liệu
			if ($_POST['user']=='admin' and $_POST['pass']=='123') {
				echo "Chào mừng lớp CNTT-17";
				header("location: default.php");				
			}
			else{
				echo "Đăng nhập thất bại";
				// header("location: login.php");
			}
		}
	?>
</body>
</html>