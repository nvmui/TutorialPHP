<?php 
 abstract class tp_parent {
  protected $args;
  // Phương thức trừu tượng không được chứa cái gì cả.
   abstract protected function set_args();
  public function show_args()
  {
   return $this->set_args();
  }
 }
//class tp_child extends tp_parent {}
//	$child = new tp_child;
//	echo print_r ( $child->show_args() );
class tp_child extends tp_parent {
 protected function set_args()
 {
  $this->args = array('name' => 'Lop CNTT1-16', 'age' => 23);
  return $this->args;
 }
}
$child = new tp_child;
echo print_r ( $child->show_args() );
?>