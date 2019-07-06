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
      <script src="https://cdn.ckeditor.com/4.11.4/standard/ckeditor.js"></script>
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
            <h3 class="box-title">Edit Test</h3>
            
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
                     <c:if test="${testmsg1=='sucess'}">
                      <center> <span style="color:green">Test Data Updated Sucessfully!</span></center>
                      </c:if>
                      <c:if test="${testmsg1=='error'}">
                      <center> <span style="color:red">test name and category alreay in another test!</span></center>
                      </c:if>
                    <form class="form-horizontal" action="editTest" method="post">
                      <div class="box-body">
                      <div class="form-group">
                        <label for="" class="col-sm-2 control-label">Test Category</label>
                        <div class="col-sm-4">
                            <!-- <input type="text" class="form-control disabledboxes" id="" placeholder="First Name" style="width: 50px;"> -->
                            <!-- <select name="testCategory" class="form-control select2 select2-hidden-accessible" style="width: 100%;" tabindex="-1" aria-hidden="true">
                                  <option   value="Sonography">Sonography</option>
                                  <option   value="Sonography">Sonography without film</option>
                                  <option  value="X-ray">X-ray</option>
                                  <option  value="Echo3">Echo3</option>
                                </select> -->
                                 <input type="text" name="testCategory" class="form-control disabledboxes" id="" placeholder="Enter Test Name" value="${test.testCategory}">  
                          </div>
                        
                      </div>
                      <div class="form-group">
                        <label for="" class="col-sm-2 control-label">Test Name</label>
                        <div class="col-sm-4">
                          <input type="text" name="testName" class="form-control disabledboxes" id="" placeholder="Enter Test Name" value="${test.testName}">
                        </div>
                      </div>
 						<div class="form-group">
                        <label for="" class="col-sm-2 control-label">Rate</label>
                        <div class="col-sm-4">
                          <input type="text" name="rate" class="form-control disabledboxes" id="" placeholder="Enter Rate" value="${test.rate}">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="" class="col-sm-2 control-label">Doctor Percentage</label>
                        <div class="col-sm-4">
                          <input type="text" name="doctorpercentage" class="form-control disabledboxes" id="" placeholder="Enter Doctor Percentage" value="${test.doctorpercentage}">
                        </div>
                      </div>
                     
                    <div class="form-group">
                        <label for="" class="col-sm-2 control-label">Test Template</label>
                        <div class="col-sm-10">
                       
                          <textarea  id="testtemp" name="testTemplate" rows="5" cols="80">${test.testTemplate }</textarea>
                        </div>
                      </div>
                      <input type="hidden" name="id" value="${test.id}">
                      
                    </div>
                      <!-- /.box-body -->
                      <div class="box-footer">
                        <button type="submit" class="btn btn-success" id="button1">Save Test details</button>
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

$(document).ready(function() {
	
	 CKEDITOR.replace( 'testTemplate' );
});
 /* function calladdusertemplate(){
	 debugger;
	var testHTML= $("#addusertemplate").tmpl();
		$("#userdiv").html(testHTML);
		

	 } */
	 /*  $('#button1').on('click',function(){
			alert($('#testtemp').text());
			return false;
		 })  
 */

 
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




