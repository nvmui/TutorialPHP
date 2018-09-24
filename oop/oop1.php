<?php
class Phim{
	//Thuộc tính
	public $ten;
	public $nhasanxuat;
	public $dienvien;
	public $thoigian;
	public $daodien;
	//hanh dong
	function Phim($t, $n, $d, $h, $dd){
		$this->ten = $t;
		$this->nhasanxuat = $n;
		$this->dienvien = $d;
		$this->thoigian = $h;
		$this->daodien = $dd;		
	}
	function getPhim(){
		$tamcam = $this->ten;
		$tamcam .= " ";
		$tamcam .= $this->nhasanxuat;
		$tamcam .= " ";
		$tamcam .= $this->dienvien;
		$tamcam .= " ";
		$tamcam .= $this->thoigian;
		$tamcam .= " ";
		$tamcam .= $this->daodien;
		return $tamcam;
	}
	
	}
	$tinhcam = new Phim("Tam cam","Truyen hinh VN",20,120,"Victor Vu");
	//echo $tinhcam->ten;
	echo $tinhcam->getPhim();
?>