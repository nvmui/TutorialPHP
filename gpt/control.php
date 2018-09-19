<?php
	include_once("model.php");
	if(isset($_POST) and isset($_POST['post'])){
		$a = $_POST['var1'];
		$b = $_POST['var2'];
		$c = $_POST['var3'];
		$g = new gpt();
		$g->a = $a;
		$g->b = $b;
		$g->c = $c;
		$g->gptb2();
	}
	include_once("view.php");
?>