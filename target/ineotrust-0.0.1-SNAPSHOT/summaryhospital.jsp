<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Dashboard</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="../../css/bootstrap.min.css">
  <link rel="stylesheet" href="../../css/font-awesome.min.css">
  <link rel="stylesheet" href="../../css/ionicons.min.css">
  <!-- daterange picker -->
  <link rel="stylesheet" href="../../css/daterangepicker.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
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
    <a href="home" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>SB</b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Sai Baba</b></span>
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
              <img src="../../images/user2-160x160.jpg" class="user-image" alt="User Image">
              <span class="hidden-xs">${user.firstName} ${user.lastName}</span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="../../images/user2-160x160.jpg" class="img-circle" alt="User Image">
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
                  <a href="/logout" class="btn btn-default btn-flat">Sign out</a>
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
            <li class="active"><a href="frontdesk"><i class="fa fa-circle-o"></i>Patient</a></li>
            <li><a href="receipt"><i class="fa fa-circle-o"></i>Reciept</a></li>
            <li><a href="doctor"><i class="fa fa-circle-o"></i>Doctor</a></li>
            <li><a href="user"><i class="fa fa-circle-o"></i>User</a></li>
            <li><a href="test"><i class="fa fa-circle-o"></i>Test</a></li>
            <!-- <li><a href="#"><i class="fa fa-circle-o"></i>Report Template</a></li> -->
            <li class="active treeview menu-open">
              <a href="#">
                <i class="fa fa-circle-o"></i> <span>Report</span>
                <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
              </a>
                <ul class="treeview-menu"> 
                    <li><a href="/cashreport"><i class="fa fa-circle-o"></i>Daily Cash Report</a></li>
                    <li><a href="/summarydocter"><i class="fa fa-circle-o"></i>Summary For Doctors</a></li>
                    <li class="active"><a href="/summaryhospital"><i class="fa fa-circle-o"></i>Summary For Hospital</a></li>
                    <!-- <li><a href="#"><i class="fa fa-circle-o"></i>Admin</a></li> -->
                </ul>
                </li>
                <li class="treeview">
                <a href="#">
                  <i class="fa fa-circle-o"></i> <span>Report Template</span>
                  <span class="pull-right-container">
                    <i class="fa fa-angle-left pull-right"></i>
                  </span>
                </a>
                  <ul class="treeview-menu"> 
                      <li><a href="/maintenance"><i class="fa fa-circle-o"></i>Maintenance</a></li>
                      <!-- <li><a href="summary_doctor.html"><i class="fa fa-circle-o"></i>Summary For Doctors</a></li>
                      <li><a href="summary_hospital.html"><i class="fa fa-circle-o"></i>Summary For Hospital</a></li> -->
                      <!-- <li><a href="#"><i class="fa fa-circle-o"></i>Admin</a></li> -->
                  </ul>
                  </li>
              <li><a href="/labassistant"><i class="fa fa-circle-o"></i>Lab Assistant</a></li>
              </section>
            <!-- </li>
          </ul>        
       
       /.sidebar -->
      </aside>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">         
            <div class="box-header ui-sortable-handle" style="cursor: move;">  
                <h3 class="box-title">Hospital</h3>
                <small>Summary</small>
                <!-- tools box -->
                <!-- <div class="pull-right box-tools">
                    <button type="button" class="btn bg-olive btn-flat"><a href="#" style="text-decoration:none;color:#fff;">Create New Receipt</a></button>
                </div> -->
             
                <!-- /. tools -->
              </div>
          </section>
    <!-- Main content -->
    <section class="content">
      <!-- Info boxes -->
      <section class="content">
          
        <div class="row">
          <div class="col-md-12">
            <div class="box">
              <div class="box-header with-border">
                <!-- <h3 class="box-title">Summary For Hospitals</h3> -->
                <div class="form-group pull-right" style="display: inline-flex;">
                        <label style="margin-right: 10px;margin-top: 5px;">Select Date range : </label>
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
<script src="../../js/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="../../js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="../../js/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../../js/adminlte.min.js"></script>
<!-- date-range-picker -->
<script src="../../js/moment.min.js"></script>
<script src="../../js/daterangepicker.js"></script>
<!-- bootstrap datepicker -->
<script src="../../js/bootstrap-datepicker.min.js"></script>
<!-- Sparkline -->
<script src="../../js/jquery.sparkline.min.js"></script>
<!-- SlimScroll -->
<script src="../../js/jquery.slimscroll.min.js"></script>
<!-- ChartJS -->
<script src="../../js/Chart.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="../../js/dashboard2.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../js/demo.js"></script>
<script>
 //Date range picker
 $('#reservation').daterangepicker();
 $('#reservation1').daterangepicker();
 $('#reservation2').daterangepicker();
</script>
</body>
</html>



