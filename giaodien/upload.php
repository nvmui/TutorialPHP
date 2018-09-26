<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Upload file</title>
</head>
<body>
	<form action ="upload.php" method ="POST" enctype ="multipart/form-data">
		<label for ="file"> Tên file </label>
		<input type ="file" name ="file_upload" id ="file" /></br>
		<input type ="submit" name ="submit" value ="Upload file" />
	</form>
	<?php
		if($_FILES["file_upload"]["error"]>0)
		{
		  echo "Lỗi của file ".$_FILES["file_upload"]["error"]."</br>";
		}
		else
		{
			echo "Upload:".$_FILES["file_upload"]["name"]."</br>";
			echo "Type:".$_FILES["file_upload"]["type"]."</br>";
			echo "Upload:".($_FILES["file_upload"]["size"]/1024)."Kb</br>";
			echo "Temp file: ".$_FILES["tmp_file"]."</br>";
			if (file_exists("upload/".$_FILES["file_upload"]["name"]))
			{
				echo $_FILES["file_upload"]["name"]."Ða ton tai";
			}
			else
			{
				move_uploaded_file($_FILES["file_upload"]["tmp_name"],"Upload/".$_FILES["file_upload"]["name"]);
				echo "Lưu trữ "."Upload/".$_FILES["file_upload"]["name"];
			}
		}
	?>
</body>
</html>