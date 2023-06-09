<?php 
$path = "../";
require_once $path.$path.'commons/utils.php';
$id = $_GET['id'];
$listTimeQuery = "select * from timetable where id = $id";
$time = getSimpleQuery($listTimeQuery);
$class_t = $time['class_id'];
$room_t = $time['room_id'];
$session_t = $time['session_id'];
$teacher_t = $time['teacher_id'];
$course_t = $time['course_id'];

$listClassQuery = "select * from classes";
$class = getSimpleQuery($listClassQuery,true);


$listRoomQuery = "select * from rooms";
$room = getSimpleQuery($listRoomQuery,true);


$listSessionQuery = "select * from session";
$session = getSimpleQuery($listSessionQuery,true);


$listTeaQuery = "select * from teachers";
$teacher = getSimpleQuery($listTeaQuery,true);

 ?>
 
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Trung Tâm| Thêm phòng</title>
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
        Sửa buổi học
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Sửa buổi học</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
    <form action="<?= $ADMIN_URL ?>thoikhoabieu/save-edit.1.php" method="post">
      <div class="box">
        <div class="box-header">
                <h3 class="box-title">Sửa buổi học</h3>
        </div>
              <!-- /.box-header -->
        <div class="box-body">
        <div class="col-md-6">

          <div class="form-group">
            <label>Lớp học</label>
            <select class="form-control" name="class_id" id="class_id" disabled>
                <option value="<?php echo $class_t; ?>"><?php $c_id = $class_t ;
                $listClaQuery = "select * from classes where id = $c_id ";
                $clas = getSimpleQuery($listClaQuery);
                echo $clas['name'];
                ?></option>
            </select>
          </div>

          <div class="form-group">
            <label>Ngày học</label>
            <input type="date" name="created" class="form-control" id="date" value="<?php echo $time['day'] ?>">
          </div>

            <div class="form-group">
            <label>Ca học</label>
            <select class="form-control" name="session_id" id="session_id">
                <?php foreach($session as $row){ ?>
                  <option <?php echo $session_t == $row['id'] ? "selected" : "" ?> value="<?php echo $row['id']; ?>"><?php echo $row['name']; ?></option>
                <?php } ?>
              </select>
            </div>
          
        </div>
        <div class="col-md-6">
          <div class="form-group">
            <label>Phòng học</label>
            <select class="form-control" name="room_id" id="room_id">
                <?php foreach($room as $row){ ?>
                  <option <?php echo $room_t == $row['id'] ? "selected" : "" ?> value="<?php echo $row['id']; ?>"><?php echo $row['name']; ?></option>
                <?php } ?>
              </select>
            </div>

            <div class="form-group">
            <label>Giáo viên</label>
            <select class="form-control" name="teacher_id" id="teacher_id">
                <?php foreach($teacher as $row){ ?>
                  <option <?php echo $teacher_t == $row['id'] ? "selected" : "" ?> value="<?php echo $row['id']; ?>"><?php echo $row['fullname']; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          <div class="col-md-12">
          <div>
          <input type="hidden" name="course_id" class="form-control" value="<?php echo $course_t ?>">
          <input type="hidden" name="class_id" class="form-control" value="<?php echo $class_t ?>">
          <input type="hidden" id="roo" name="roo" class="form-control" value="<?php echo $room_t ?>">
          <input type="hidden" name="ses" class="form-control" value="<?php echo $session_t ?>">
          <input type="hidden" id="tea" name="tea" class="form-control" value="<?php echo $teacher_t ?>">
          <input type="hidden" name="id" class="form-control" value="<?php echo $_GET['id']; ?>">
              <a href="<?= $ADMIN_URL?>lop" class="btn btn-danger btn-xs">Huỷ</a>
              <button type="submit" class="btn btn-xs btn-primary">Tạo mới</button>
            </div>
          </div>
            <!-- /.box-body -->
      </div>
      </div>

      <script type="text/javascript">
            $(document).ready(function(){
                                var date = $('#date').val();
                                var lop = $('#class_id').val();
                                var session = $('#session_id').val();
                                var roo =  $('#roo').val();
                                var tea =  $('#tea').val();
                                var i = 0;
                if(i == 0){
                  load();
                  load1();
                  i = 1;
                }

                function load(){
                                  $.ajax({
                                    url:"xulyroom.1.php",
                                    method:"post",
                                    data: {date:date,
                                      lop:lop,
                                      session:session,
                                      roo:roo
                                      },
                                    dataType:"text",
                                    success: function(kq){
                                        $('#room_id').html(kq);
                                    }
                                  }); 
                }

                function load1(){
                                  $.ajax({
                                    url:"xulyteacher.1.php",
                                    method:"post",
                                    data: {date:date,
                                      lop:lop,
                                      session:session,
                                      tea:tea
                                      },
                                    dataType:"text",
                                    success: function(kq){
                                        $('#teacher_id').html(kq);
                                    }
                                  }); 
                }
                
                $('#session_id').change(function(){
                                var date = $('#date').val();
                                var lop = $('#class_id').val();
                                var session = $('#session_id').val();
                                var roo =  $('#roo').val();
                                $.ajax({
                                    url:"xulyroom.1.php",
                                    method:"post",
                                    data: {date:date,
                                      lop:lop,
                                      session:session,
                                      roo:roo
                                      },
                                    dataType:"text",
                                    success: function(kq){
                                        $('#room_id').html(kq);
                                    }
                                  }); 
                })

                $('#room_id').change(function(){
                                var date = $('#date').val();
                                var lop = $('#class_id').val();
                                var session = $('#session_id').val();
                                var tea =  $('#tea').val();
                                $.ajax({
                                    url:"xulyteacher.1.php",
                                    method:"post",
                                    data: {date:date,
                                      lop:lop,
                                      session:session,
                                      tea:tea},
                                    dataType:"text",
                                    success: function(kq){
                                        $('#teacher_id').html(kq);
                                    }
                                  }); 
                })
            });
          </script>
      </form>

    </section>

    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  
  <?php include_once $path.'_share/footer.php'; ?>
</div>
<!-- ./wrapper -->

<?php include_once $path.'_share/script_assets.php'; ?>
</body>
</html>