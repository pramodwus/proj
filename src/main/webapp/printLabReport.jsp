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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
   <link rel="stylesheet" href="../../css/AdminLTE.min.css">
   <!-- AdminLTE Skins. Choose a skin from the css/skins
        folder instead of downloading all of them to reduce the load. -->
   <link rel="stylesheet" href="../../css/_all-skins.min.css">
     <!-- DataTables -->
  <link rel="stylesheet" href="../../css/dataTables.bootstrap.min.css">
  <link rel="stylesheet"
           href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
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
  <style type="text/css" media="print">
 
 @page { size : portrait }
      @page rotated { size : landscape }
      table { page : rotated }

</style>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
  <header class="main-header">
    <!-- Logo -->
    <a href="../index.html" class="logo">
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
          <c:if test="${roles=='frontdesklabassistant'}">
          <li><a href="frontdesk"><i class="fa fa-circle-o"></i>Patient</a></li>
          <li><a href="receipt"><i class="fa fa-circle-o"></i>Receipt</a></li>
          
            <li class="active"><a href="labassistant"><i class="fa fa-circle-o"></i>LabAssistant</a></li>
            </c:if>
             <c:if test="${roles=='labassistant'}">
            	 <li class="active"><a href="labassistant"><i class="fa fa-circle-o"></i>LabAssistant</a></li>
            </c:if>
         <!--  <li><a href="doctor.html"><i class="fa fa-circle-o"></i>Doctor</a></li>
          <li><a href="user.html"><i class="fa fa-circle-o"></i>User</a></li>
          <li><a href="test.html"><i class="fa fa-circle-o"></i>Test</a></li> -->
          <!-- <li><a href="#"><i class="fa fa-circle-o"></i>Report Template</a></li> -->
          
            <!--   <li><a href="report_template.html"><i class="fa fa-circle-o"></i>Report Template</a></li>  -->
            </section>
              <!-- </li>
            </ul>        
         
         /.sidebar -->
        </aside>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- <section class="content-header">         
      <div class="box-header ui-sortable-handle" style="cursor: move;">  
          <h3 class="box-title">Create New Test Template</h3>
          <div class="pull-right box-tools">
              <button type="button" class="btn bg-olive btn-flat"><a href="/front_end_desk/create_new_reciept.html" style="text-decoration:none;color:#fff;">Create New Receipt</a></button>
          </div>
        </div>
    </section>     -->
    <!-- Main content -->    
      <!-- Info boxes -->
<section class="content">
    <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
                <div class="box box-info">
            <form class="form-horizontal">
                <div class="box-body">
                    <div class="form-group">
                        <label for="" class="col-sm-4 control-label">Patient Name- ${patient.firstName}</label>
                        <div class="col-sm-3">
                       
                        </div>
                        <label for="" class="col-sm-4 control-label" style="">Age/Gender- ${patient.ageYear}.${patient.ageMonth}/ ${patient.gender}</label>
                        <div class="col-sm-3">
                         
                        </div>                       
                      </div>
                      <div class="form-group">
                            <label for="" class="col-sm-3 control-label">Referred By- ${refDoc}</label>
                            <div class="col-sm-3">
                              <!-- <input type="text" class="form-control disabledboxes" id="recieptNumber" placeholder="123456789" disabled=""> -->
                            </div>
                            <label for="" class="col-sm-4 control-label" style="">Date- ${date}</label>
                            <div class="col-sm-4">
                              <!-- <input type="text" class="form-control disabledboxes" id="recieptDate" placeholder="15/04/2019" disabled=""> -->
                            </div>                       
                          </div>
                         
                     </div>
                     <h2 style="text-align: center;padding:5rem 0px;"> ${labdata.testName} ${labdata.testCategory}</h2>
                     
            </form>
            <div style="font-size: 1.8rem;padding: 1rem 4rem 20rem;">
                    <p>${labdata.testTemplate}</p>
                    
                </div>
        </div>
    </div>
    <div class="col-sm-2"></div>
</div>
 <div class="">
                 <button  id="printButton" onclick="printReport();" class="btn btn-success" style="text-decoration:none;color:#fff;">Print</a></button>
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
<!-- Sparkline -->
<!-- DataTables -->
<script src="../../js/jquery.dataTables.min.js"></script>
<script src="../../js/dataTables.bootstrap.min.js"></script>
<!-- page script -->
<script src="../../js/jquery.sparkline.min.js"></script>
<!-- SlimScroll -->
<script src="../../js/jquery.slimscroll.min.js"></script>
<!-- ChartJS -->
<script src="../../js/chart.js/Chart.js"></script>
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
      var abc =  localStorage.getItem("newData");    
      // alert(abc);
      $("#newValue").text(abc);
     
    });

    function printReport(){
        $('#printButton').hide();
    	window.print();
        }
  </script>
</body>
</html>
