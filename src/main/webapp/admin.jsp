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
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Admin</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
            <ul class="treeview-menu">
                <li class="active"><a href="home"><i class="fa fa-circle-o"></i>User</a></li>
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
            <h3 class="box-title">User</h3>
            <small>List</small>
            <!-- tools box -->
            <div class="pull-right box-tools">
                <button  class="btn bg-olive btn-flat" style="margin-right: 10px;"><a href="adduser" style="text-decoration:none;color:#fff;">Add New User</a></button>
               <!--   <button type="button" class="btn bg-olive btn-flat"><a href="patientreciept" style="text-decoration:none;color:#fff;">Create New Receipt</a></button> -->
                
            </div>
         
            <!-- /. tools -->
          </div>
      </section>
    <!-- Main content -->
    <div id="userdiv">
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
                    <th>Sequence</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email Id</th>
                    <th>Role</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach items="${list}" var="userList" varStatus="loop">
                <tr>
                    <td>${loop.index+1}</td>
                    <td style="text-transform: capitalize">${userList.firstName}</td>
                    <td style="text-transform: capitalize">${userList.lastName}</td>
                    <td >${userList.email}</td>
                    
                      <c:forEach items="${userList.roles}" var="roles">
                      <td style="text-transform: capitalize">${roles.role}</td>
                     </c:forEach>
                     <td>
                      <div class="">
                      <button onclick="edituser('${userList.email}')" class="btn btn-success"><i class="fa fa-pencil"></i></button> 
                        <!-- <a href="edituser" class="btn btn-social-icon btn-success"><i class="fa fa-pencil"></i></a> -->
                        <!--  <button type="button" class="btn btn-success">
                          <a href="create-new-reciept.html" style="text-decoration:none;color:#fff;">New Receipt</a>
                      </button> -->
                         <button type="button" id="button-remove" onclick="deleteuser(${userList.id})" class="btn btn-social-icon btn-success"><i class="fa fa-trash"></i></button>
                                
                      </div>
                      
                    </td>
                </tr>
                </c:forEach> 
            


          
                </tfoot>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
    </section>
    <!-- /.content -->
  </div>
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
function edituser(email){
	var form = $('<form action="edituserpage" method="post">' +
			  '<input type="text" name="email" value="' + email + '" />' +
			  '</form>');
			$('body').append(form);
			form.submit();
}
 function calladdusertemplate(){
	 debugger;
	var testHTML= $("#addusertemplate").tmpl();
		$("#userdiv").html(testHTML);
		

	 }

function deleteuser(id){
	var message=confirm("Do You really want to Delete this user");
	if(message==true){
		$.ajax({
	        url: 'deleteuser',
	        type: 'post',
	        data: {"id":id},
	        success: function(response){
		        location.reload();
	        },
	       
	    });
	}

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




