<?php 
    $path = "../";
    require_once $path.$path.'commons/utils.php';
    $listRoomQuery = "select * from baikiemtra";
    $cates = getSimpleQuery($listRoomQuery,true);
 ?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Trung Tâm | Danh mục</title>
  <?php include_once $path.'_share/style_assets.php'; ?>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
  <?php include_once $path.'_share/header.php'; ?>
  
  <?php include_once $path.'_share/sidebar.php'; ?>
  

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Dashboard
        <small>Control panel</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Danh sách lớp học</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      
            <div class="row">
                <div class="col-xs-12">
                <div class="box">
                <div class="box-header">
              <h3 class="box-title">Danh sách đề kiểm tra</h3>
                  </div>
            <!-- /.box-header -->
            <div class="box-body">
            <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th style="width: 10px">#</th>
                  <th>Tên bài kiểm tra</th>
                  <th>Ngày kiểm tra</th>
                  <th>Khóa học</th>
                  <th>Lớp học</th>
                  <th>Chi tiết</th>
                  <?php if($_SESSION['login']['role']==500 || $_SESSION['login']['role']== 1){ ?>
                  <th style="width: 120px">
                  <a href="<?= $ADMIN_URL ?>baitap/add.php"
                      class="btn btn-xs btn-success"
                      >
                      <i class="fa fa-plus"></i> Thêm
                    </a>
                  </th>
                  <?php } ?>
                </tr>
                </thead>
                <tbody>
                <?php foreach($cates as $row) { ?>
                <tr>
                  <td><?php echo $row['id']; ?></td>
                  <td><?php echo $row['name']; ?></td>
                  <td><?php echo $row['day']; ?></td>
                  <td><?php $course = $row['course_id'];
                    $listCourQuery = "select * from courses where id = $course";
                    $cour = getSimpleQuery($listCourQuery);
                    echo $cour['name'];
                  ?></td>
                  <td><?php $course = $row['class_id'];
                    $listCourQuery = "select * from classes where id = $course";
                    $cour = getSimpleQuery($listCourQuery);
                    echo $cour['name']; ?></td>
                  </td>
                  <td>
                  <!-- <input type="button" name="view" value="Chi tiết" id="<?php echo $row["id"]; ?>" class="btn btn-link btn-xs view_data" /> -->
                  <a name="" id="" class="btn btn-xs btn-link" href="<?= $ADMIN_URL?>baitap/pdf.php?id=<?= $row['id']?>" role="button">Chi tiết</a>
                  </td>
                  <?php if($_SESSION['login']['role']==500 || $_SESSION['login']['role']== 1){ ?>
                  <td>
                  <a href="<?= $ADMIN_URL?>baitap/edit.php?id=<?= $row['id']?>"
                      class="btn btn-xs btn-primary"
                      >
                      <i class="fa fa-cog"></i>  Sửa
                      </a>
                      <?php if($_SESSION['login']['role']== 500){ ?>
                      <a href="javascript:;"
                        linkurl="<?= $ADMIN_URL?>baitap/remove.php?id=<?= $row['id']?>"
                      class="btn btn-xs btn-danger btn-remove"
                      >
                      <i class="fa fa-trash-o"></i> Xoá
                      </a>
                      <?php  } ?>
                  <?php } ?>
                 </td>
                </tr>
                <?php } ?>
              </tbody>
              </table>

<div id="dataModal" class="modal fade">  
                  <div class="modal-dialog" >  
                      <div class="modal-content">  
                            <div class="modal-header">  
                                <button type="button" class="close" data-dismiss="modal">&times;</button>  
                                <h3 class="modal-title">Bài tập</h3>  
                            </div>  
                            <div class="modal-body" id="employee_detail">  
                            </div>  
                            <div class="modal-footer">  
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>  
                            </div>  
                      </div>  
                  </div>  
            </div> 

            <script>  
 $(document).ready(function(){  
      $(document).on('click', '.view_data', function(){  
           var id = $(this).attr("id");  
                $.ajax({  
                     url:"select.php",  
                     method:"POST",  
                     data:{id:id},  
                     success:function(data){  
                          $('#employee_detail').html(data);  
                          $('#dataModal').modal('show');  
                     }  
                });         
      });  
 });  
 </script>

            </div>
            <!-- /.box-body -->
          </div>
                </div>
            </div>
            
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  
  <?php include_once $path.'_share/footer.php'; ?>
</div>
<!-- ./wrapper -->

<?php include_once $path.'_share/script_assets.php'; ?>
<script type="text/javascript">
    <?php 
      if(isset($_GET['success']) && $_GET['success'] == true){
    ?> 
       swal('Tạo mới bài tập thành công!');
    <?php }else if(isset($_GET['editsuccess']) && $_GET['editsuccess'] == true){ ?>
      swal('Sửa bài tập thành công!');
    <?php }?>
    $('.btn-remove').on('click',function(){
      swal({
      title: "Cảnh báo!",
      text: "Bạn có chắc chắn muốn xoá danh mục này ?",
      icon: "warning",
      buttons: true,
      dangerMode: true,
    })
    .then((willDelete) => {
      if (willDelete) {
        window.location.href = $(this).attr('linkurl');
      }
      });
    })
</script>
</body>
</html>