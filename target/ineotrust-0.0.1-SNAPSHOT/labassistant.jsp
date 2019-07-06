
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
    <a href="index.html" class="logo">
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
         
          
          
          <!-- <li class="treeview">
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
                  <li><a href="#"><i class="fa fa-circle-o"></i>Admin</a></li>
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
                      <li><a href="summary_doctor.html"><i class="fa fa-circle-o"></i>Summary For Doctors</a></li>
                      <li><a href="summary_hospital.html"><i class="fa fa-circle-o"></i>Summary For Hospital</a></li>
                      <li><a href="#"><i class="fa fa-circle-o"></i>Admin</a></li>
                  </ul>
                  </li> -->
              <li><a href="#"><i class="fa fa-circle-o"></i>Lab Assistant</a></li>

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
            <h3 class="box-title">Laboratory</h3>
            <small>Assistant</small>
            <!-- tools box -->
            <div class="pull-right box-tools">
                <!-- <button type="button" class="btn bg-olive btn-flat" style="margin-right: 10px;"><a href="patient_registration.html" style="text-decoration:none;color:#fff;">Add New Patient</a></button> -->
                <!-- <button type="button" class="btn bg-olive btn-flat"><a href="create-new-reciept.html" style="text-decoration:none;color:#fff;">Create New Receipt</a></button> -->
                
            </div>
         
            <!-- /. tools -->
          </div>
      </section>
    <!-- Main content -->
    <section class="content">
   <!--  <textarea id="testTemplate4" style="border: none" >hello</textarea> -->
        <div class="box">
            <!-- <div class="box-header">
              <h3 class="box-title"></h3>
            </div> -->
            <!-- /.box-header -->
            <!-- <select id="dummy">
            <option value="hello">hello</option>
            <option value="hi">hi</option>
            </select> -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                  <tr>
                    <th>Receipt ID</th>
                    <th>Test Category</th>
                    <th>Test Name</th>
                    <th>Doctor Name</th>
                    <th>Details</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                 <c:forEach items="${testdetails}" var="labdetails" varStatus="loop">
                <tr>
                	<input id="receiptId${labdetails.testDetail.id}" type="hidden" value="${labdetails.testDetail.reciptId}"/>
                	<input id="testCategory${labdetails.testDetail.id}" type="hidden" value="${labdetails.testDetail.testCategory}"/>
                	<input id="testName${labdetails.testDetail.id}" type="hidden" value="${labdetails.testDetail.testName}"/>
                	
                    <td>${labdetails.testDetail.reciptId}</td>
                    <td>${labdetails.testDetail.testCategory}</td>
                    <td>${labdetails.testDetail.testName}</td>
                    <td>
                     <select id="docName${labdetails.testDetail.id}" class="form-control select2 select2-hidden-accessible" style="width: 100%;" tabindex="-1" aria-hidden="true">
                                 <c:forEach items="${doctor}" var="doctorlist">
                                  <option   value="">${doctorlist.name}</option>
                                  </c:forEach>
                                 
                                </select> 
                                </td>
                    <td><textarea id="testTemplate${labdetails.testDetail.id}" style="border: none" >${labdetails.testTemplate}</textarea></td>
                   
                    <td>
                      <div class="">
                      <button type="submit" onclick="submitLabData('${labdetails.testDetail.id}');" class="btn btn-success" style="text-decoration:none;color:#fff;">Save</a></button>
                       <button type="submit" onclick="submitPrint('${labdetails.testDetail.id}')" class="btn btn-success" style="text-decoration:none;color:#fff;">Print</a></button>
                      </div>
                    </td>
                </tr>
               
                </c:forEach>
                  <!-- <tr>
                    <td>1001</td>
                    <td>X-ray</td>
                    <td>Leg X-ray</td>
                    <td>Chirag Sadana</td>
                    <td>
                        <div class="">
                            <button type="button" class="btn btn-success">
                                <a href="update_report_template.html" style="text-decoration:none;color:#fff;">Update Report</a>
                            </button>
                          </div>
                    </td>                 
                  </tr> -->
                         
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

function submitLabData(id){
	obj={
			"reciptId": $('#receiptId'+id).val(),
			"testCategory": $('#testCategory'+id).val(),
			"testName": $('#testName'+id).val(),
			"testTemplate": $('#testTemplate'+id).val(),
			"docName":$('#docName'+id+' :selected').text()	
			}
	$.ajax({
       url: 'saveLabData',
        type: 'post',
        contentType: "application/json",
    	 data: JSON.stringify(obj),
        success: function(response){
        	
         
         
        },
       
    });
}

function submitPrint(id){
	var form = $('<form action="printLabReport" method="post">' +
			  '<input type="text" name="reciptId" value="' +  $('#receiptId'+id).val() + '" />' +
			  '<input type="text" name="testCategory" value="' +  $('#testCategory'+id).val() + '" />' +
			  '<input type="text" name="testName" value="' + $('#testName'+id).val() + '" />' +
			  '<input type="text" name="testTemplate" value="' +  $('#testTemplate'+id).val() + '" />' +
			  '<input type="text" name="docName" value="' + $('#docName'+id+' :selected').text() + '" />' +
			  '</form>');
			$('body').append(form);
			form.submit();
}


function fun(){
	$('#id01').modal();
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



