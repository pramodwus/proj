<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
     <!-- Theme style -->
     <link rel="stylesheet" href="../../css/AdminLTE.min.css">
     <!-- AdminLTE Skins. Choose a skin from the css/skins
          folder instead of downloading all of them to reduce the load. -->
     <link rel="stylesheet" href="../../css/_all-skins.min.css">
       <!-- DataTables -->
    <link rel="stylesheet" href="../../css/dataTables.bootstrap.min.css">
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
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
        <li class="active treeview menu-open">
          <a href="admin">
            <i class="fa fa-dashboard"></i> <span>Admin</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
            <ul class="treeview-menu">
                <li><a href="home"><i class="fa fa-circle-o"></i>User</a></li>
                <li><a href="doctorpage"><i class="fa fa-circle-o"></i>Doctor</a></li>
                <li><a href="testpage"><i class="fa fa-circle-o"></i>Test</a></li>
                
              
            </ul>       
        </li>
       <!--   <li class="treeview">
            <a href="#">
              <i class="fa fa-dashboard"></i> <span>Admin</span>
              <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
            </a>
              <ul class="treeview-menu">
                  <li><a href="#"><i class="fa fa-circle-o"></i>User</a></li>
                  <li><a href="#"><i class="fa fa-circle-o"></i>Doctor</a></li>
                  <li><a href="#"><i class="fa fa-circle-o"></i>Test</a></li>
                  <li><a href="#"><i class="fa fa-circle-o"></i>Template</a></li>
                  <li><a href="#"><i class="fa fa-circle-o"></i>Add/Modify the list</a></li>
                  <li><a href="#"><i class="fa fa-circle-o"></i>Add Modify Test report</a></li>
                  <li><a href="#"><i class="fa fa-circle-o"></i>User specific screen access</a></li>
              </ul>        
          </li>  -->
      </ul>        
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
            <h3 class="box-title">Edit Doctor</h3>
            
            <!-- tools box -->
            
         
            <!-- /. tools -->
          </div>
      </section>
    <!-- Main content -->
    
  <section class="content">
          <div class="row">
              <div class="col-md-9">
                  <!-- Horizontal Form -->
                  <div class="box box-info">
                    <div class="box-header with-border">
                      <h3 class="box-title"></h3>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                     <c:if test="${docmsg1=='sucess'}">
                      <center> <span style="color:green">Doctor Data Updated Sucessfully!</span></center>
                      </c:if>
                      <c:if test="${docmsg1=='error'}">
                      <center> <span style="color:red">Doctor Data does not  Exist!</span></center>
                      </c:if>
                    <form class="form-horizontal" action="editdoctor" method="post">
                      <div class="box-body">
                      <div class="form-group">
                        <label for="" class="col-sm-2 control-label">Name</label>
                        <div class="col-sm-1">
                            <!-- <input type="text" class="form-control disabledboxes" id="" placeholder="First Name" style="width: 50px;"> -->
                            <select class="form-control select2" style="width: 57px;padding: 6px;">
                                <option selected="selected">Mr.</option>
                                <option>Mrs.</option>
                                <option>Ms.</option>
                              </select>
                          </div>
                        <div class="col-sm-3">
                          <input type="text" name="name" class="form-control disabledboxes" id="" placeholder="First Name" value="${doctor.name}">
                        </div>
                        
                      </div>
                      <div class="form-group">
                        <label for="" class="col-sm-2 control-label">Email</label>
                        <div class="col-sm-4">
                          <input type="email" name="email" class="form-control disabledboxes" id="" placeholder="Enter EmailId" value="${doctor.email}">
                        </div>
                      </div>
 						<div class="form-group">
                        <label for="" class="col-sm-2 control-label">Age</label>
                        <div class="col-sm-4">
                          <input type="text" name="age" class="form-control disabledboxes" id="" placeholder="Enter Age" value="${doctor.age}">
                        </div>
                      </div>
                     <div class="form-group">
                        <label for="" class="col-sm-2 control-label">Gender</label>
                         <div class="col-sm-8">
                        <div class="checkbox">
                          <label>
                            <input type="checkbox" name="gender" value="male">
                            Male
                          </label>
                        </div>
          
                        <div class="checkbox" >
                          <label>
                            <input type="checkbox" name="gender" value="female">
                            Female
                          </label>
                        </div>
          
                        <div class="checkbox">
                          <label>
                            <input type="checkbox" name="gender" value="others">
                            Others
                          </label>
                        </div>
                      </div>
                      </div>
                   <div class="form-group">
                        <label for="" class="col-sm-2 control-label">Address</label>
                        <div class="col-sm-3">
                          <input type="text" name="address" class="form-control disabledboxes" id="" placeholder="Enter Adress" value="${doctor.address}">
                        </div>
                        <div class="col-sm-2">
                          <input type="text" name="city" class="form-control disabledboxes" id="" placeholder="Enter City" value="${doctor.city}">
                        </div>
                        <div class="col-sm-2">
                          <input type="text" name="pincode" class="form-control disabledboxes" id="" placeholder="Enter Pincode" value="${doctor.pincode}">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="" class="col-sm-2 control-label">Contact number</label>
                        <div class="col-sm-4">
                          <input type="text" name="contactNumber" class="form-control disabledboxes" id="" placeholder="Enter Contact number" value="${doctor.contactNumber}">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="" class="col-sm-2 control-label">Qualification</label>
                        <div class="col-sm-4">
                          <input type="text" name="qualification" class="form-control disabledboxes" id="" placeholder="Enter Qualification" value="${doctor.qualification}">
                        </div>
                      </div>
                     
                    </div>
                      
                     
                    </div>
                      <!-- /.box-body -->
                      <div class="box-footer">
                        <button type="submit" class="btn btn-success" id="button1">Edit Doctor details</button>
                      </div>
                      <!-- /.box-footer -->
                    </form>
                  </div>
                  </div>
                  <!-- /.box -->
          </div>
</section>
    <!-- /.content -->
  <!-- /.content-wrapper -->

 	
 </div>
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
<script
		src="http://ajax.aspnetcdn.com/ajax/jquery.templates/beta1/jquery.tmpl.min.js"></script>
<script>
 function calladdusertemplate(){
	 debugger;
	var testHTML= $("#addusertemplate").tmpl();
		$("#userdiv").html(testHTML);


	 }


 
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


