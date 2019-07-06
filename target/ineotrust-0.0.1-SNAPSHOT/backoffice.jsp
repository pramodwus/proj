<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Dashboard | BackOffice</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="../../css/bootstrap.min.css">
  <link rel="stylesheet" href="../../css/font-awesome.min.css">
  <link rel="stylesheet" href="../../css/ionicons.min.css">
  <!-- daterange picker -->
  <link rel="stylesheet" href="../../css/daterangepicker.css">
  <!-- bootstrap datepicker -->
  <link rel="stylesheet" href="../../css/bootstrap-datepicker.min.css">
  <link rel="stylesheet" href="../../css/AdminLTE.min.css">
  <link rel="stylesheet" href="../../css/_all-skins.min.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="index.html" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>Bell</b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Bellurbis</b></span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <!-- Navbar Right Menu -->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">      
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
              <span class="hidden-xs">Dheeraj Kishore</span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                <p>
                  Alexander Pierce - Web Developer
                  <small>Member since Nov. 2012</small>
                </p>
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="#" class="btn btn-default btn-flat">Profile</a>
                </div>
                <div class="pull-right">
                  <a href="login.html" class="btn btn-default btn-flat">Sign out</a>
                </div>
              </li>
            </ul>
          </li>
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MAIN NAVIGATION</li>
        <li class="active treeview menu-open">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>BackOffice</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
           <!--  <ul class="treeview-menu">
                <li><a href="index1.html"><i class="fa fa-circle-o"></i>Front Desk</a></li>
                <li><a href="index2.html"><i class="fa fa-circle-o"></i>Lab Assistant</a></li>
                <li class="active"><a href="index3.html"><i class="fa fa-circle-o"></i>Back Office</a></li>
                <li><a href="index4.html"><i class="fa fa-circle-o"></i>Admin</a></li>
            </ul>  -->       
        </li>
        <!-- <li class="treeview">
            <a href="#">
              <i class="fa fa-dashboard"></i> <span>Back Office</span>
              <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
            </a>
              <ul class="treeview-menu">
                  <li><a href="#"><i class="fa fa-circle-o"></i>Open URL</a></li>
                  <li><a href="#"><i class="fa fa-circle-o"></i>Login with given user id</a></li>
                  <li><a href="#"><i class="fa fa-circle-o"></i>Reports Section</a></li>
                  <li><a href="#"><i class="fa fa-circle-o"></i>Daily Cash Reports</a></li>
                  <li><a href="#"><i class="fa fa-circle-o"></i>Summary for Doctors</a></li>
                  <li><a href="#"><i class="fa fa-circle-o"></i>Summary for Hospital</a></li>
              </ul>        
          </li> -->
      </ul>        
    </section>
    <!-- /.sidebar -->
  </aside>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       Back office
        <small>Panel</small>
      </h1>     
    </section>
    <!-- Main content -->
    <section class="content">
      <!-- Info boxes -->
      <section class="content">
          <div class="row">
              <div class="col-md-12">
                <div class="box">
                  <div class="box-header with-border">
                    <h3 class="box-title">Daily Cash Reports</h3>
                    <div class="form-group pull-right" style="display: inline-flex;">
                        <!-- <label>Date range : </label>         -->
                        <div class="input-group">
                          <div class="input-group-addon">
                            <i class="fa fa-calendar"></i>
                          </div>
                          <input type="text" class="form-control pull-right" id="reservation">
                        </div>
                      </div>
                  </div>
                  
                  <!-- /.box-header -->
                  <div class="box-body">
                    <table class="table table-bordered">
                      <tr>
                        <th style="width: 55px">S. No.</th>
                        <th>Cash</th>
                        <th>Status</th>
                        <th style="width: 150px">Payment Mode</th>
                      </tr>
                      <tr>
                        <td>1.</td>
                        <td>7000</td>
                        <td>Approved</td>
                        <td>Cash</td>
                      </tr>
                      <tr>
                        <td>2.</td>
                        <td>7000</td>
                        <td>Approved</td>
                        <td>Cash</td>
                      </tr>
                      <tr>
                        <td>3.</td>
                        <td>7000</td>
                        <td>Approved</td>
                        <td>Cash</td>
                      </tr>
                      <tr>
                        <td>4.</td>
                        <td>7000</td>
                        <td>Approved</td>
                        <td>Cash</td>
                      </tr>
                    </table>
                  </div>
                  <!-- /.box-body -->
                  <div class="box-footer clearfix">
                    <ul class="pagination pagination-sm no-margin pull-right">
                      <li><a href="#">&laquo;</a></li>
                      <li><a href="#">1</a></li>
                      <li><a href="#">2</a></li>
                      <li><a href="#">3</a></li>
                      <li><a href="#">&raquo;</a></li>
                    </ul>
                  </div>
                </div>
                <!-- /.box -->
      
              </div>
              <!-- /.col -->
    
            </div>
        <div class="row">
          <div class="col-md-12">
            <div class="box">
              <div class="box-header with-border">
                <h3 class="box-title">Summary For Doctors</h3>
                <div class="form-group pull-right" style="display: inline-flex;">
                    <!-- <label>Date range : </label>         -->
                    <div class="input-group">
                      <div class="input-group-addon">
                        <i class="fa fa-calendar"></i>
                      </div>
                      <input type="text" class="form-control pull-right" id="reservation1">
                    </div>
                  </div>
              </div>
              <!-- /.box-header -->
              <div class="box-body">
                <table class="table table-bordered">
                  <tr>
                    <th style="width: 55px">S. No.</th>
                    <th>Name</th>
                    <th>Address</th>
                    <th>Sex</th>
                    <th style="width: 120px;">Phone Number</th>
                  </tr>
                  <tr>
                    <td>1.</td>
                    <td>Shivansh</td>
                    <td>Kanpur</td>
                    <td>Male</td>
                    <td>0987654321</td>
                  </tr>
                  <tr>
                    <td>2.</td>
                    <td>Shivansh</td>
                    <td>Kanpur</td>
                    <td>Male</td>
                    <td>0987654321</td>
                  </tr>
                  <tr>
                    <td>3.</td>
                    <td>Shivansh</td>
                    <td>Kanpur</td>
                    <td>Male</td>
                    <td>0987654321</td>
                  </tr>
                  <tr>
                    <td>4.</td>
                    <td>Shivansh</td>
                    <td>Kanpur</td>
                    <td>Male</td>
                    <td>0987654321</td>
                  </tr>
                </table>
              </div>
              <!-- /.box-body -->
              <div class="box-footer clearfix">
                <ul class="pagination pagination-sm no-margin pull-right">
                  <li><a href="#">&laquo;</a></li>
                  <li><a href="#">1</a></li>
                  <li><a href="#">2</a></li>
                  <li><a href="#">3</a></li>
                  <li><a href="#">&raquo;</a></li>
                </ul>
              </div>
            </div>
            <!-- /.box -->
  
          </div>
          <!-- /.col -->

        </div>
        <div class="row">
          <div class="col-md-12">
            <div class="box">
              <div class="box-header with-border">
                <h3 class="box-title">Summary For Hospitals</h3>
                <div class="form-group pull-right" style="display: inline-flex;">
                    <!-- <label>Date range : </label>         -->
                    <div class="input-group">
                      <div class="input-group-addon">
                        <i class="fa fa-calendar"></i>
                      </div>
                      <input type="text" class="form-control pull-right" id="reservation2">
                    </div>
                  </div>
              </div>
              <!-- /.box-header -->
              <div class="box-body">
                <table class="table table-bordered">
                  <tr>
                    <th style="width: 55px">S. No.</th>
                    <th>Hospital Name</th>
                    <th>Address</th>
                    <th style="width: 120px;">Phone Number</th>
                  </tr>
                  <tr>
                    <td>1.</td>
                    <td>Fortis Hospital</td>
                    <td>Gurgaon</td>
                    <td>1234567890</td>
                  </tr>
                  <tr>
                    <td>2.</td>
                    <td>Fortis Hospital</td>
                    <td>Gurgaon</td>
                    <td>1234567890</td>
                  </tr>
                  <tr>
                    <td>3.</td>
                    <td>Fortis Hospital</td>
                    <td>Gurgaon</td>
                    <td>1234567890</td>
                  </tr>
                  <tr>
                    <td>4.</td>
                    <td>Fortis Hospital</td>
                    <td>Gurgaon</td>
                    <td>1234567890</td>
                  </tr>
                </table>
              </div>
              <!-- /.box-body -->
              <div class="box-footer clearfix">
                <ul class="pagination pagination-sm no-margin pull-right">
                  <li><a href="#">&laquo;</a></li>
                  <li><a href="#">1</a></li>
                  <li><a href="#">2</a></li>
                  <li><a href="#">3</a></li>
                  <li><a href="#">&raquo;</a></li>
                </ul>
              </div>
            </div>
            <!-- /.box -->
  
          </div>
          <!-- /.col -->

        </div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Bellurbis</b>
    </div>
    <strong>Copyright &copy; 2018-2019 </strong> All rights reserved.
  </footer>

  

</div>
<!-- ./wrapper -->
<!-- jQuery 3 -->
<script src="bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<!-- date-range-picker -->
<script src="../../bower_components/moment/min/moment.min.js"></script>
<script src="../../bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- bootstrap datepicker -->
<script src="../../bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<!-- Sparkline -->
<script src="bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
<!-- SlimScroll -->
<script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- ChartJS -->
<script src="bower_components/chart.js/Chart.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="dist/js/pages/dashboard2.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<script>
 //Date range picker
 $('#reservation').daterangepicker();
 $('#reservation1').daterangepicker();
 $('#reservation2').daterangepicker();
</script>
</body>
</html>
