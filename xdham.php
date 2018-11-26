<?php 
	function calFactorial($n)
	{
		$result = 1;
		for($i=2 ; $i<=$n ; $i++)
			$result *=$i;
		return $result;
	}
	// $n = 4;
	// echo $n.'!= '.calFactorial($n);
	//
	function doublevalue($var=10)
	{
		global $temp;
		$temp = $var * 2;
	}
	// $temp = 5;
	// doublevalue();
	// echo "\$temp is: $temp";
	//
	// function doubleVal(&$var)
	// {
	// 	$var = $var * 2;
	// }
	// $a = 5;
	// doubleVal($a);
	// echo "\$a is: $a";

	$dinner = array( 'Sweet Corn','Lemon Chicken', 'Braised Bamboo');
	sort($dinner);
	print "I want $dinner[0] and $dinner[1].<br/>";
	$dishes = count($dinner);
	print $dishes;
	
?>