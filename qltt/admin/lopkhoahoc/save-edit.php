<?php 
require_once '../../commons/utils.php';
if($_SERVER['REQUEST_METHOD'] != 'POST'){
	header('location: '. $ADMIN_URL .'baitap');
	die;
}
$id = $_POST['id'];

$class_id = $_POST['class_id'];
$course_id = $_POST['course_id'];




if($course_id == "0"){
	$c = "c=Chọn khóa học&&";
}else{
	$c = "";
}

if($class_id == "0"){
	$cl = "cl=Chọn lớp học&&";
}else{
	$cl = "";
}





if( $c != "" || $cl !="" ){
	header('location: '.$ADMIN_URL.'lopkhoahoc/add.php?id='.$id.'&&'.$c.$cl);
	die;
}

$sql = "select * from lopkhoahoc where name = '$name' and id <> '$id'";
$rs = getSimpleQuery($sql);
if($rs != false){
	header('location: '. $ADMIN_URL .'lopkhoahoc/edit.php?id='.$id.'&&n=đã tồn tại, vui lòng chọn tên khác');
	die;
}

$sql = $conn->prepare("update lopkhoahoc set name = '$name' , class_id = '$class_id', course_id = '$course_id' where id = '$id'");
$sql->execute();
header('location: '. $ADMIN_URL . 'lopkhoahoc?editsuccess=true');
die;
?>