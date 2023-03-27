<?php 
     require_once '../../commons/utils.php';
     $cateId = $_GET['id'];

     $sql = "select * from lopkhoahoc where id = $cateId";
     $cate = getSimpleQuery($sql);
     if(!$cate){
         header("Location:".$ADMIN_URL."lopkhoahoc");
         die;
     }

     $sql = "delete from lopkhoahoc where id = $cateId";
     getSimpleQuery($sql);
     
     header("Location:".$ADMIN_URL."lopkhoahoc");
     die;
?>