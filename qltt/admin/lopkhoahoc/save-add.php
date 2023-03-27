<?php 
require_once '../../commons/utils.php';
if($_SERVER['REQUEST_METHOD'] != 'POST'){
	header('location: '. $ADMIN_URL .'lopkhoahoc');
	die;
}

$class_id = $_POST['class_id'];
$course_id = $_POST['course_id'];


if($course_id == "0"){
	$c = "c=Chọn khóa học&&";
}else{
	$c = "";
}

if($class_id == "0"){
	$cl = "cl=Chọn lớp học học&&";
}else{
	$cl = "";
}





if( $cl != "" || $c !=""  ){
	header('location: '.$ADMIN_URL.'lopkhoahoc/add.php?'.$cl.$c);
	die;
}
// kiem tra xem ten co bi trong hay khong
// if($name == ""){
// 	header('location: '. $ADMIN_URL .'baitap/add.php?errName=Vui lòng không để trống tên bài tập');
// 	die;
// }
// Kiem tra ten co bi trung hay khong
$sql = "select * from lopkhoahoc where name = '$class_id'";
$rs = getSimpleQuery($sql);
if($rs != false){
	header('location: '. $ADMIN_URL .'lopkhoahoc/add.php?n=Mã lớp đã tồn tại, vui lòng chọn mã khác khác');
	die;
}

$sql = $conn->prepare("insert into lopkhoahoc ( class_id, course_id) values (?,?)");
$data = array($class_id,$course_id);
$sql->execute($data);

header('location: '. $ADMIN_URL . 'lopkhoahoc?success=true');
die;
 ?>