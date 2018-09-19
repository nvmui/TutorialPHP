<?php
	class gpt{
		public $return ;
		public $a;
		public $b;
		public $c;
		function denta(){
			$this->return =$this->b*$this->b-4*$this->a*$this->c;
		}
		function gptb2(){
			if($this->denta()<0){
				$this->return = "Phương trình vô nghiệm";
			}else if($this->denta()==0){
				$this->return = "Phương trình có nghiệm kép:".(-$this->b/$this->a*2);
			}else{
				$this->return = "Phương trình có 2 nghiệm x1:= ".((-$this->b-sqrt($this->denta()))/2*$this->a)." x2:= ".((-$this->b+sqrt($this->denta()))/2*$this->a);
			}
		}
	}
?>