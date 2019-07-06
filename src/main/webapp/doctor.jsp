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
     <!-- Font Awesome -->
     <link rel="stylesheet" href="../../css/font-awesome.min.css">
     <!-- Ionicons -->
     <link rel="stylesheet" href="../../css/ionicons.min.css">
       <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
     <!-- Theme style -->
     <link rel="stylesheet" href="../../css/AdminLTE.min.css">
     <!-- AdminLTE Skins. Choose a skin from the css/skins
          folder instead of downloading all of them to reduce the load. -->
     <link rel="stylesheet" href="../../css/_all-skins.min.css">
       <!-- DataTables -->
    <link rel="stylesheet" href="../../css/dataTables.bootstrap.min.css">
   
     <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
     <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
     <!--[if lt IE 9]>
     <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
     <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
     <![endif]-->
   
     <!-- Google Font -->
     <link rel="stylesheet"
           href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <!-- <link rel="stylesheet" href="../bower_components/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../bower_components/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="../bower_components/Ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="../dist/css/AdminLTE.min.css"> -->
  
    <!-- <link rel="stylesheet" href="../dist/css/skins/_all-skins.min.css"> -->
    <!--  -->
  <style>
    .sidebar-menu>li>a {
    padding: 8px 5px 8px 15px;
    display: block;
}
  </style>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
  <header class="main-header">
    <!-- Logo -->
    <a href="/home" class="logo">
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
                 <img id="profile-img" class="user-image" alt="User Image" src="//ssl.gstatic.com/accounts/ui/avatar_1x.png" />
              <span class="hidden-xs">${user.firstName} ${user.lastName}</span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
             <img src="//ssl.gstatic.com/accounts/ui/avatar_1x.png" class="img-circle" alt="User Image">
                <p>
                  ${user.firstName} ${user.lastName}
                  <!-- <small>Member since Nov. 2012</small> -->
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
            <li><a href="frontdesk"><i class="fa fa-circle-o"></i>Patient</a></li>
            <li><a href="receipt"><i class="fa fa-circle-o"></i>Reciept</a></li>
            <li class="active"><a href="doctor"><i class="fa fa-circle-o"></i>Doctor</a></li>
            <li><a href="user"><i class="fa fa-circle-o"></i>User</a></li>
            <li><a href="test"><i class="fa fa-circle-o"></i>Test</a></li>
            <!-- <li><a href="#"><i class="fa fa-circle-o"></i>Report Template</a></li> -->
            <li class="treeview">
              <a href="#">
                <i class="fa fa-circle-o"></i> <span>Report</span>
                <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
              </a>
                <ul class="treeview-menu"> 
                    <li><a href="/cashreport"><i class="fa fa-circle-o"></i>Daily Cash Report</a></li>
                    <li><a href="/summarydocter"><i class="fa fa-circle-o"></i>Summary For Doctors</a></li>
                    <li><a href="/summaryhospital"><i class="fa fa-circle-o"></i>Summary For Hospital</a></li>
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
            <h3 class="box-title">Doctors</h3>
            <small>List</small>
            <!-- tools box -->
            <div class="pull-right box-tools">
                <button type="button" class="btn bg-olive btn-flat"><a href="Add_new_doctor.html" style="text-decoration:none;color:#fff;">Add New Doctor</a></button>
            </div>
         
            <!-- /. tools -->
          </div>
      </section>
    <!-- Main content -->
    <section class="content">
        <div class="box">
            <!-- <div class="box-header">
              <h3 class="box-title"></h3>
            </div> -->
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                  <tr>
                    <th>Doctor ID</th>
                    <th>Name</th>
                    <th>Gender</th>
                    <th>Age</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>city</th>
                    <th>Pincode</th>
                    <th>Contact No</th>
                    <th>Doctor Qualification</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                <tr>
                  <td>1001</td>
                  <td>Shivash</td>
                  <td>Male</td>
                  <td>25</td>
                  <td>shivansh@gmail.com</td>
                  <td>Meena bahar</td>
                  <td>Lucknow</td>
                  <td>122012</td>
                  <td>1234567890</td>
                  <td>General Surgeon</td>
                  <td>
                    <div class="">
                      <a href="edit_doctor.html" class="btn btn-social-icon btn-success"><i class="fa fa-pencil"></i></a>
                    </div>
                  </td>
                  <!-- <td><button type="button" class="btn bg-olive btn-flat">Modify Patient Details</button></td> -->
                </tr>
                <tr>
                    <td>1002</td>
                    <td>Hemant</td>
                    <td>Male</td>
                    <td>30</td>
                    <td>Hemnat@gmail.com</td>
                    <td>Rajiv Chawk</td>
                    <td>Delhi</td>
                    <td>100235</td>
                    <td>0987654321</td>
                    <td>Physician</td>
                    <td>
                      <div class="">
                        <a href="edit_doctor.html" class="btn btn-social-icon btn-success"><i class="fa fa-pencil"></i></a>
                      </div>
                    </td>
                </tr>
                <tr>
                    <td>1003</td>
                    <td>Shivash</td>
                  <td>Male</td>
                  <td>25</td>
                  <td>shivansh@gmail.com</td>
                  <td>Meena bahar</td>
                  <td>Lucknow</td>
                  <td>122012</td>
                  <td>1234567890</td>
                  <td>General Surgeon</td>
                  <td>
                    <div class="">
                      <a href="edit_doctor.html" class="btn btn-social-icon btn-success"><i class="fa fa-pencil"></i></a>
                    </div>
                  </td>
                </td>
                </tr>
                <tr>
                    <td>1004</td>
                    <td>Hemant</td>
                    <td>Male</td>
                    <td>30</td>
                    <td>Hemnat@gmail.com</td>
                    <td>Rajiv Chawk</td>
                    <td>Delhi</td>
                    <td>100235</td>
                    <td>0987654321</td>
                    <td>Physician</td>
                    <td>
                      <div class="">
                        <a href="edit_doctor.html" class="btn btn-social-icon btn-success"><i class="fa fa-pencil"></i></a>
                      </div>
                    </td>
                </td>
                </tr>
                <tr>
                    <td>1005</td>
                    <td>Shivash</td>
                  <td>Male</td>
                  <td>25</td>
                  <td>shivansh@gmail.com</td>
                  <td>Meena bahar</td>
                  <td>Lucknow</td>
                  <td>122012</td>
                  <td>1234567890</td>
                  <td>General Surgeon</td>
                  <td>
                    <div class="">
                      <a href="edit_doctor.html" class="btn btn-social-icon btn-success"><i class="fa fa-pencil"></i></a>
                    </div>
                  </td>
                </td>
                </tr>
                <tr>
                    <td>1006</td>
                    <td>Hemant</td>
                    <td>Male</td>
                    <td>30</td>
                    <td>Hemnat@gmail.com</td>
                    <td>Rajiv Chawk</td>
                    <td>Delhi</td>
                    <td>100235</td>
                    <td>0987654321</td>
                    <td>Physician</td>
                    <td>
                      <div class="">
                        <a href="edit_doctor.html" class="btn btn-social-icon btn-success"><i class="fa fa-pencil"></i></a>
                      </div>
                    </td>
                </td>
                </tr>
                <tr>
                    <td>1007</td>
                    <td>Shivash</td>
                  <td>Male</td>
                  <td>25</td>
                  <td>shivansh@gmail.com</td>
                  <td>Meena bahar</td>
                  <td>Lucknow</td>
                  <td>122012</td>
                  <td>1234567890</td>
                  <td>General Surgeon</td>
                  <td>
                    <div class="">
                      <a href="edit_doctor.html" class="btn btn-social-icon btn-success"><i class="fa fa-pencil"></i></a>
                    </div>
                  </td>
                </td>
                </tr> <tr>
                    <td>1008</td>
                    <td>Hemant</td>
                    <td>Male</td>
                    <td>30</td>
                    <td>Hemnat@gmail.com</td>
                    <td>Rajiv Chawk</td>
                    <td>Delhi</td>
                    <td>100235</td>
                    <td>0987654321</td>
                    <td>Physician</td>
                    <td>
                      <div class="">
                        <a href="edit_doctor.html" class="btn btn-social-icon btn-success"><i class="fa fa-pencil"></i></a>
                      </div>
                    </td>
                </td>
                </tr> <tr>
                    <td>1009</td>
                    <td>Shivash</td>
                  <td>Male</td>
                  <td>25</td>
                  <td>shivansh@gmail.com</td>
                  <td>Meena bahar</td>
                  <td>Lucknow</td>
                  <td>122012</td>
                  <td>1234567890</td>
                  <td>General Surgeon</td>
                  <td>
                    <div class="">
                      <a href="edit_doctor.html" class="btn btn-social-icon btn-success"><i class="fa fa-pencil"></i></a>
                    </div>
                  </td>
                </td>
                </tr> <tr>
                    <td>1010</td>
                    <td>Hemant</td>
                    <td>Male</td>
                    <td>30</td>
                    <td>Hemnat@gmail.com</td>
                    <td>Rajiv Chawk</td>
                    <td>Delhi</td>
                    <td>100235</td>
                    <td>0987654321</td>
                    <td>Physician</td>
                    <td>
                      <div class="">
                        <a href="edit_doctor.html" class="btn btn-social-icon btn-success"><i class="fa fa-pencil"></i></a>
                      </div>
                    </td>
                </td>
                </tr>
                <tr>
                    <td>1011</td>
                    <td>Shivash</td>
                  <td>Male</td>
                  <td>25</td>
                  <td>shivansh@gmail.com</td>
                  <td>Meena bahar</td>
                  <td>Lucknow</td>
                  <td>122012</td>
                  <td>1234567890</td>
                  <td>General Surgeon</td>
                  <td>
                    <div class="">
                      <a href="edit_doctor.html" class="btn btn-social-icon btn-success"><i class="fa fa-pencil"></i></a>
                    </div>
                  </td>
                </td>
                </tr>
          
                </tfoot>
              </table>
            </div>
            <!-- /.box-body -->
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
<!-- jQuery 3 -->
<script src="../../js/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="../../js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="../../js/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../../js/adminlte.min.js"></script>
<!-- Sparkline -->
<!-- DataTables -->
<script src="../../js/jquery.dataTables.min.js"></script>
<script src="../../js/dataTables.bootstrap.min.js"></script>
<!-- page script -->
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
    $(function () {
      $('#example1').DataTable()
      $('#example2').DataTable({
        'paging'      : true,
        'lengthChange': false,
        'searching'   : false,
        'ordering'    : true,
        'info'        : true,
        'autoWidth'   : false
      })
    })
  </script>
</body>
</html>



