<?php
class HinhVuong{
	//thuộc tinh
	private $chieudai;
	//hanh dong
	//function setHinhVuong($c){
	//	if($c>0){
	//		$this->chieudai = $c;
	//	} else {
	//		return 1;
	//	}
	//}
	function setChieuDai($c){
		if($c > 0){
			$this->chieudai = $c;
		} else {
			return 0;
		}
	}
	function getChieuDai($n){
		if($n == 1){
			return $this->chieudai;
		}else {
			return 0;
		}
	}
	function TinhChuVi(){
		return $this->chieudai * 4;
	}
	function TinhDienTich(){
		return $this->chieudai * $this->chieudai;
	}
}
	$duy = new HinhVuong();
	$duy->setChieuDai(25);
	//echo $duy->getChieuDai(1);
	echo $duy->TinhChuVi();
	echo "<hr hr\>";
	echo $duy->TinhDienTich();
?>