<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="vi" xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="Đây là ví dụ đầu tiên của tôi về học CSS" />
<meta name="keywords" content="Demo CSS, học CSS" />

<link rel="stylesheet" type="text/css" href="style/style.css">
<title>Demo CSS</title>
</head>
<body>
	<div class="waper">
    	<div class="menu">
        	<ul>
            <?php
            	require('./View/menu_top.php');
            ?>
          </ul>
      </div><!--Ket thuc menu top-->
      <div class="banner">
        	<img src="image/banner.jpg" width="100%" height="150px" />
      </div><!--Ket thuc banner-->
      <!-- phần chia cột nội dung và menu trái, phải -->
      <div class="conten">
        <div class="left">
          <div class="danhsach">
            <p style="text-align:center; background:#09F; color:#F00;padding:7px; font-weight:bold; font-size:18px">Theo hãng</p>
            <ul>
            <?php
              require('./view/menu_thuonghieu.php');
            ?>
          </ul>
          <p style="text-align:center; background:#09F; color:#F00;padding:7px; font-weight:bold; font-size:18px">Phụ kiện</p>
          </div>          
        </div><!--Ket thuc menu left-->
          <div class="khungchinh">
            <p style="text-align:center; background:#09F; color:#FFF;padding:7px; font-weight:bold;font-size:large">Hiển thị sản phấm</p>
            <div class="danhsachall">
              <ul>
                  <?php
                    
                    if(isset($_GET['action']))
                    {
                      if ($_GET['action']=='hang') {
                        require('./view/view_theohangsx.php'); 
                      }
                      if($_GET['action']=='danhmuc'){
                        require('./view/view_danhmuc.php');
                      }                    
                    }else
                    {
                      require('./view/dsall.php');
                    }
                  ?>
              </ul>
            </div>
          </div><!--Ket thuc chia khung-->          
        </div>        
        <div class="clear">          
        </div>        
        <div class="footer">
        	<p style="text-align:center;background-color:#079992;line-height:30px">Copyright &copy; 2017 Design by Nguyễn Văn Mùi</p>
        </div>
    </div>
</body>
</html>