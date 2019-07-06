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
 
   <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
   <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
   <!--[if lt IE 9]>
   <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
   <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
   <![endif]-->
 
   <!-- Google Font -->
       <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
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
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
  <header class="main-header">
    <!-- Logo -->
    <a href="../index.html" class="logo">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini"><b>SB</b></span>
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg"><b>SaiBaba Hospital</b></span>
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
          <li class="active"><a href="frontdesk"><i class="fa fa-circle-o"></i>Patient</a></li>
          <li><a href="receipt"><i class="fa fa-circle-o"></i>Reciept</a></li>
          <c:if test="${roles=='frontdesklabassistant'}">
            <li><a href="labassistant"><i class="fa fa-circle-o"></i>LabAssistant</a></li>
            </c:if>
        <!--   <li><a href="doctor.html"><i class="fa fa-circle-o"></i>Doctor</a></li>
          <li><a href="user.html"><i class="fa fa-circle-o"></i>User</a></li>
          <li><a href="test.html"><i class="fa fa-circle-o"></i>Test</a></li> -->
          <!-- <li><a href="#"><i class="fa fa-circle-o"></i>Report Template</a></li> -->
        <!--   <li class="treeview">
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
              </li> -->
           <!--   <li class="active treeview menu-open">
                      <a href="#">
                        <i class="fa fa-circle-o"></i> <span>Report Template</span>
                        <span class="pull-right-container">
                          <i class="fa fa-angle-left pull-right"></i>
                        </span>
                      </a>
                        <ul class="treeview-menu"> 
                            <li class="active"><a href="/maintenance"><i class="fa fa-circle-o"></i>Maintenance</a></li>
                            <li><a href="summary_doctor.html"><i class="fa fa-circle-o"></i>Summary For Doctors</a></li>
                            <li><a href="summary_hospital.html"><i class="fa fa-circle-o"></i>Summary For Hospital</a></li>
                            <li><a href="#"><i class="fa fa-circle-o"></i>Admin</a></li>
                        </ul>
                        </li>
                        <li>
                        <a href="/labassistant"><i class="fa fa-circle-o"></i>Lab Assistant</a></li>  -->
                    
            </section>
          <!-- </li>
        </ul>        
     
     /.sidebar -->
    </aside>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <!-- <section class="content-header">
      <h1>
       Front Desk Role Dashboard
        <small></small>
      </h1>     
    </section> -->
    <section class="content-header">         
      <div class="box-header ui-sortable-handle" style="cursor: move;">  
          <h3 class="box-title">Edit Patient Details</h3>
          <!-- tools box -->
        <!--   <div class="pull-right box-tools">
              <button type="button" class="btn bg-olive btn-flat"><a href="create-new-reciept.html" style="text-decoration:none;color:#fff;">Create New Receipt</a></button>
          </div> -->
          
          <!-- /. tools -->
        </div>
    </section>
    
    <!-- Main content -->
    
      <!-- Info boxes -->
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
                    <c:if test="${msg1=='sucess'}">
                      <center> <span style="color:green">Patient Updated Successfully</span></center>
                      </c:if>
                    <form class="form-horizontal" method="post" action="/updatepatient">
                      <div class="box-body">
                      <div class="form-group">
                        <label for="" class="col-sm-2 control-label">Name</label>
                         <div class="col-sm-1" style="width:14%;">
                            <!-- <input type="text" class="form-control disabledboxes" id="" placeholder="First Name" style="width: 50px;"> -->
                            <select name="sirName" class="form-control select2" style="width: 57px;padding: 6px;width:100%;" required>
                                <option selected>${patient.sirName}</option>
                                 <option>Mr.</option>
                                <option>Mrs.</option>
                                <option>Ms.</option>
                                <option>Baby Of</option>
                                <option>Master</option>
                              </select>
                          </div>
                        <div class="col-sm-3">
                          <input type="text" class="form-control disabledboxes" id="" value="${patient.firstName}" required name="firstName">
                        </div>
                         
                        <div class="col-sm-2">
                          <input type="text" class="form-control disabledboxes" id="" value="${patient.middleName}" placeholder="Middle Name" name="middleName">
                        </div>
                        
                        <div class="col-sm-3">
                          <input type="text" class="form-control disabledboxes" id="" value="${patient.lastName}" required name="lastName">
                        </div>
                      </div>
                    <div class="form-group">
                        <label for="" class="col-sm-2 control-label">Age</label>
                        <div class="col-sm-1"  style="width:13%;">
                          <input type="number" class="form-control disabledboxes" id="" name="ageYear" value="${patient.ageYear}" required>
                        </div>
                        <label for="" class="col-sm-1 control-label" style="text-align: left !important">years</label>
                         <div class="col-sm-1"  style="width:13%;">
                          <input type="number" class="form-control disabledboxes" id=""  name="ageMonth" value="${patient.ageMonth}" required>
                        </div>
                        <label for="" class="col-sm-1 control-label" style="text-align: left !important">months</label>
                      </div>
                      <div class="form-group">
                        <label for="" class="col-sm-2 control-label">Gender</label>
                        <div class="col-sm-10">
                          <div class="radio">
                            <label>
                             
                              <input type="radio" name="gender" id="optionsRadios1" value="male"  <c:if test="${patient.gender == 'male'}">  checked   </c:if>  >
                              Male
                             
                            </label>
                            <label>
                          
                              <input type="radio" name="gender" id="optionsRadios1" value="female"  <c:if test="${patient.gender == 'female'}">  checked     </c:if>  >
                              Female
                          
                            </label>
                            <label>
                         
                              <input type="radio" name="gender" id="optionsRadios1" value="other"     <c:if test="${patient.gender == 'other'}">  checked   </c:if>  >
                              Others
                            
                            </label>
                          </div>
                          

                        </div>
                      </div>
                        <div class="form-group">
                        <label for="" class="col-sm-2 control-label">Contact No.</label>
                       <div class="col-sm-1" style="width:11%;">
                           <input type="text" class="form-control disabledboxes" id=""  value="+91" disabled required>
                        </div>
                        <div class="col-sm-3" style="width:22%;">
                          <input type="tel" class="form-control disabledboxes" id="phone" value="${patient.contactNumber}" name="contactNumber" pattern="^\d{10}$" required>
                         
                        </div>
                      </div> 
                      
                      <div class="form-group">
                        <label for="" class="col-sm-2 control-label">Address Line 1</label>
                        <div class="col-sm-9">
                          <input type="text" class="form-control disabledboxes" id="" value="${patient.address}" name="address" required>
                        </div>
                      </div>
                      
                       <div class="form-group">
                        <label for="" class="col-sm-2 control-label">City</label>
                        <div class="col-sm-4">
                          <input type="tel" class="form-control disabledboxes" id=""   name="city" value="${patient.city}" required>
                         
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label for="" class="col-sm-2 control-label">PinCode</label>
                        <div class="col-sm-4">
                          <input type="tel" class="form-control disabledboxes" id="pincode"   name="pincode" value="${patient.pincode}" pattern="^\d{6}$" required>
                         </div>
                      </div>
                      
                       <input type="hidden"  name="id" value="${patient.id}">
                       <%--  <input type="hidden"  name="receipt" value="${patient.receipt.id}"> --%>
                      
                       
                      
                      <!-- <div class="form-group">
                        <label for="" class="col-sm-2 control-label">City</label>
                        <div class="col-sm-9">
                          <input type="text" class="form-control disabledboxes" id="" placeholder="Noida">
                        </div>
                      </div>
                      <div class="form-group">
                          <label for="" class="col-sm-2 control-label">State</label>
                          <div class="col-sm-9">
                            <input type="text" class="form-control disabledboxes" id="" placeholder="NCR">
                          </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Country</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control disabledboxes" id="" placeholder="India">
                            </div>
                          </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Pincode</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control disabledboxes" id="" placeholder="120019">
                            </div>
                          </div> -->
                    
                      
                     
                    </div>
                      <!-- /.box-body -->
                      <div class="box-footer">
                        <button type="submit" class="btn btn-success" id="button1" style="text-decoration: none;color:white;">Save Patient details</button>
                      </div>
                      <!-- /.box-footer -->
                    </form>
                  </div>
                  </div>
                  <!-- /.box -->
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



       $( "#phone" ).keypress(function(e) {
				 var str=$('#phone').val();
				 if((e.keyCode>32 && e.keyCode<48) || e.keyCode>57 || str.length>9){
					//alert('number not valid');
					 e.preventDefault();
				 }
			});
	 
    $( "#pincode" ).keypress(function(e) {
		 var str=$('#pincode').val();
		 if((e.keyCode>32 && e.keyCode<48) || e.keyCode>57 || str.length>5){
			//alert('number not valid');
			 e.preventDefault();
		 }
	 });
  </script>
</body>
</html>



