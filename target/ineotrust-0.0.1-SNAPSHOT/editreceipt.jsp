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
  .control-label{
    text-align: left !important;
  }
  .margin {
    margin: 10px 0px;
}
fieldset.scheduler-border {
    border: 1px groove #ddd !important;
    padding: 0 1.4em 1.4em 1.4em !important;
    margin: 0 0 1.5em 0 !important;
    -webkit-box-shadow:  0px 0px 0px 0px #000;
            box-shadow:  0px 0px 0px 0px #000;
}

    legend.scheduler-border {
        font-size: 1.2em !important;
        font-weight: bold !important;
        text-align: left !important;
        width:auto;
        padding:0 10px;
        border-bottom:none;
    }
</style>

</head>
<body class="hold-transition skin-blue sidebar-mini">
<c:set var="i" value="1"></c:set>
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
                  <img src="../dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
                  <span class="hidden-xs">Dheeraj Kishore</span>
                </a>
                <ul class="dropdown-menu">
                  <!-- User image -->
                  <li class="user-header">
                    <img src="../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
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
                      <a href="logout" class="btn btn-default btn-flat">Sign out</a>
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
          <li class="active"><a href="receipt"><i class="fa fa-circle-o"></i>Reciept</a></li>
         <!--  <li><a href="doctor.html"><i class="fa fa-circle-o"></i>Doctor</a></li>
          <li><a href="user.html"><i class="fa fa-circle-o"></i>User</a></li>
          <li><a href="test.html"><i class="fa fa-circle-o"></i>Test</a></li> -->
          <!-- <li><a href="#"><i class="fa fa-circle-o"></i>Report Template</a></li> -->
          <li class="treeview">
            <a href="#">
              <i class="fa fa-circle-o"></i> <span>Report</span>
              <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
            </a>
              <ul class="treeview-menu"> 
                  <li><a href="daily_cash_report.html"><i class="fa fa-circle-o"></i>Daily Cash Report</a></li>
                  <li><a href="summary_doctor.html"><i class="fa fa-circle-o"></i>Summary For Doctors</a></li>
                  <li><a href="summary_hospital.html"><i class="fa fa-circle-o"></i>Summary For Hospital</a></li>
                  <!-- <li><a href="#"><i class="fa fa-circle-o"></i>Admin</a></li> -->
              </ul>
              </li> 
            <!--   <li><a href="report_template.html"><i class="fa fa-circle-o"></i>Report Template</a></li>  -->
            </section>
          <!-- </li>
        </ul>        
     
     /.sidebar -->
    </aside>
      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
          <section class="content-header">         
              <div class="box-header ui-sortable-handle" style="cursor: move;">  
                  <h3 class="box-title">Create New Reciept</h3>
                  <!-- tools box -->
                  <!-- <div class="pull-right box-tools">
                      <button type="button" class="btn bg-olive btn-flat"><a href="create-new-reciept.html" style="text-decoration:none;color:#fff;">Create New Receipt</a></button>
                  </div> -->
               
                  <!-- /. tools -->
                </div>
            </section>
        <!-- Content Header (Page header) -->
        <!-- <section class="content-header">
          <h1>
                Create New Reciept 
            <small></small>
          </h1>     
        </section> -->
        <!-- Main content -->
        <section class="content">
          <!-- Info boxes -->
          <div class="row">
              <div class="col-md-12">
                  <!-- Horizontal Form -->
                  <div class="box box-info">
                    <div class="box-header with-border">
                      <h3 class="box-title"></h3>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                    <input type="hidden" value="${patient.receipt.id}" id="receiptId">
                    <form class="form-horizontal">
                      <div class="box-body">
                          <fieldset class="scheduler-border">
                              <legend class="scheduler-border">Receipt Details</legend>
                      <div class="form-group">
                        <label for="" class="col-sm-2 control-label">Reciept Number</label>
                        <div class="col-sm-2">
                          <input type="text" class="form-control disabledboxes" id="recieptNumber"  disabled value="${patient.receipt.id}">
                        </div>
                        <label for="" class="col-sm-2 control-label" style="width:13%;">Reciept Date</label>
                        <div class="col-sm-2">
                          <input type="text" class="form-control disabledboxes" id="recieptDate" value="${patient.receipt.receiptDate}" disabled >
                        </div>
                        <label for="" class="col-sm-2 control-label" style="width:13%;">Reciept Time</label>
                        <div class="col-sm-2">
                          <input type="text" class="form-control disabledboxes" id="recieptTime" value="${patient.receipt.receiptTime}" disabled>
                        </div>
                      </div>
                      </fieldset>


                      <fieldset class="scheduler-border">
                          <legend class="scheduler-border">Patient Details</legend>  
                                            
                          <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Patient Name</label>
                              <div class="col-sm-1">
                                <select class="form-control" style="width: 57px;padding: 6px;" disabled>
                                  <option selected="selected">Mr.</option>
                                  <option>Mrs.</option>
                                  <option>Ms.</option>
                                </select>
                              </div>
                              <div class="col-sm-3">
                                <input type="text" class="form-control disabledboxes" id="" value="${patient.firstName}"  disabled>
                              </div>
                               <c:if test="${not empty patient.middleName}">
                              <div class="col-sm-3">
                                <input type="text" class="form-control disabledboxes" id="" value="${patient.middleName}" disabled>
                              </div>
                               </c:if>
                              <div class="col-sm-3">
                                <input type="text" class="form-control disabledboxes" id="" value="${patient.lastName}" disabled>
                              </div>
                          </div>
                          <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Sex</label>
                              <div class="col-sm-4">
                                <div class="radio">
                                  <label>
                                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" <c:if test="${patient.gender == 'male'}">  checked </c:if> <c:if test="${patient.gender != 'male'}">  disabled </c:if> >
                                    Male
                                  </label>
                                  <label>
                                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" <c:if test="${patient.gender == 'female'}">  checked   </c:if>  <c:if test="${patient.gender != 'female'}">  disabled   </c:if> >
                                    Female
                                  </label>
                                  <label>
                                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" <c:if test="${patient.gender == 'other'}">  checked   </c:if>  <c:if test="${patient.gender != 'other'}">  disabled   </c:if> >
                                    Others
                                  </label>
                                </div>                         
                              </div>
                          
                          <label for="" class="col-sm-2 control-label">Contact No.</label>
                          <div class="col-sm-4">
                              <input type="text" class="form-control disabledboxes" value="${patient.contactNumber}" disabled>
                            </div>
                          </div>
                            <div class="form-group">
                             <label for="" class="col-sm-2 control-label">Address </label>
                               <div class="col-sm-4">
                                 <input type="text" class="form-control disabledboxes" id="" value="${patient.address}" disabled>
                              </div> 
                              <label for="" class="col-sm-2 control-label">City</label>
                            <div class="col-sm-2">
                                <input type="tel" class="form-control disabledboxes" id=""  value="${patient.city}" disabled>
                             </div>
                            </div>
                               <div class="form-group">
                                <label for="" class="col-sm-2 control-label">PinCode</label>
                                  <div class="col-sm-3">
                                 <input type="tel" class="form-control disabledboxes" id="" value="${patient.pincode}"  disabled>
                                  </div>
                               </div>
                      </fieldset>




                      <fieldset class="scheduler-border">
                          <legend class="scheduler-border">Test Details</legend>
                          
                 <script id="list_template" type="text/x-jquery-tmpl">
                     <!-- <div class="form-group" id="datatemplate">
                 			<div class="col-sm-2">
                            <input type="text" class="form-control disabledboxes" id="testCategorytempl" disabled>
                          </div>
                          
                            <div class="col-sm-2">
                                <input type="text" class="form-control disabledboxes" id="specificTesttemple" disabled>
                              </div>
                              <div class="col-sm-2" style="width: 13%;">
                                  <input type="text" class="form-control disabledboxes" id="testAmounttemple"  disabled>
                                </div>
                                <div class="col-sm-2" style="width:13%;">
                                    <input type="text" class="form-control disabledboxes" id="assignedDoctortemple"  disabled>
                                </div>
									<div class="col-sm-2" style="width:13%;">
                                    <input type="text" class="form-control disabledboxes" id="assignedDoctortemple"  disabled>
                                </div>
                                <div class="col-sm-1" style="width:15%;">
                                    <input type="text" class="form-control disabledboxes" id="refDoctortemple"  disabled>
                                </div>
                                <div class="col-sm-1">
                                    <button type="button" id="button-remove" class="btn btn-social-icon btn-success"><i class="fa fa-trash"></i></button>
                                </div>
                        </div>-->
                		<div class="form-group templatedata" id="${'$'}{x}">
                 
                          <div class="col-sm-2">
                            <select class="form-control select2 select2-hidden-accessibl" onchange="gettestnamefortemplate(${'$'}{x})" id="testCategory${'$'}{x}" style="width: 100%;" tabindex="-1" aria-hidden="true">
                              <option selected="selected">Test Category</option>
                                <c:forEach items="${testList}" var="list">
                                  <option value="${list.testCategory}">${list.testCategory}</option>
                                   </c:forEach> 
                            </select>
                          </div>
                          
                            <div class="col-sm-2" >
                                <select class="form-control select2 select2-hidden-accessibl" id="specificTest${'$'}{x}" onchange="call('${'$'}{x}')" style="width: 100%;" tabindex="-1" aria-hidden="true">
                                  <option selected="selected">Test Name</option>
                                  <c:forEach items="${testList}" var="list">
                                  <option value="${list.testName}">${list.testName}</option>
                                   </c:forEach>

                                </select>
                              </div>
                                <!--  <label for="" class="col-sm-1 control-label">Amount</label> -->
                              <div class="col-sm-1" style="width: 10%;">
                                   <input type="text" class="form-control disabledboxes"  id="testAmount${'$'}{x}"   disabled>
                                </div>
                               <!--  <label for="" class="col-sm-1 control-label">Doctor Charges</label> -->
                               <div class="col-sm-1" style="width: 10%;">
                                    <input type="text" class="form-control disabledboxes"  onkeyup="caldiscountamntfortemplate(${'$'}{x});" id="totaltemp${'$'}{x}" >
                                </div>
                                <!--  <label for="" class="col-sm-1 control-label">Total Amount</label> -->
                               <div class="col-sm-1" style="width: 10%;">
                                    <input type="text" class="form-control disabledboxes" id="hospitalCharges${'$'}{x}"   disabled>
                                </div>
 								<div class="col-sm-1" style="width: 10%;">
                                    <input type="text" class="form-control disabledboxes"  id="doctorCharges${'$'}{x}"  disabled>
                                </div>
                                <!-- <label for="" class="col-sm-1 control-label">Referred Doctor</label> -->
 									<!-- <input type="hidden" class="form-control disabledboxes" id="totaltemp${'$'}{x}" > -->
 								 <input type="hidden" class="form-control disabledboxes" id="docpercent${'$'}{x}" >
                                <div class="col-sm-2">
                                
                                    <input type="text" class="form-control disabledboxes" id="refDoctor${'$'}{x}"  required>
                                </div>
							
                          
								<div class="col-sm-1">
                                    <button type="button" onclick="deletetest(${'$'}{x})" id="button-remove" class="btn btn-social-icon btn-success"><i class="fa fa-trash"></i></button>
                                </div>
                        </div>
                     
                      </script>
                      <table id="example1" class="table table-bordered table-striped">
                
                  <tr >
                    <th  class="col-sm-2"  style="text-align:center ">Test Category</th>
                    <th class="col-sm-2" style="text-align:center">Test Name</th>
                    <th class="col-sm-1" style="text-align:center;width: 9%;">Amount</th>
                    <th class="col-sm-1" style="text-align:center;width: 11%;">Discounted Amount</th>
                    <th class="col-sm-1" style="text-align:center;width: 10%;">Hospital charges</th>
                    <th class="col-sm-1" style="text-align:center;width: 11%;">Doctor Charges</th>
                    <th class="col-sm-2" style="text-align:center">Referred Doctor</th>
                      <th class="col-sm-2" style="text-align:center">Remove</th>
                  </tr>
                
                </table>
                     <input type="hidden" id="size" value="${testdetail.size()}">
                         <c:forEach items="${testdetail}" var="testDetail" varStatus='loop'>
                        <div class="form-group">
                 			<input type="hidden" id="testdetailid${loop.index}" value="${testDetail.id}">
                          <div class="col-sm-2">
                            <select class="form-control select2 select2-hidden-accessibl" id="testCategoryn${loop.index}" onchange="getTestName(${loop.index});" style="width: 100%;" tabindex="-1" aria-hidden="true" >
                              <option selected="selected">${testDetail.testCategory}</option>
                                <c:forEach items="${testList}" var="list">
                                  <option value="${list.testCategory}">${list.testCategory}</option>
                                   </c:forEach>  
                            </select>
                          </div>
                          
                            <div class="col-sm-2">
                                <select class="form-control select2 select2-hidden-accessibl" id="specificTestn${loop.index}" onchange="gettestnames(${loop.index})" style="width: 100%;" tabindex="-1" aria-hidden="true" >
                                  <option selected="selected">${testDetail.testName}</option>
                                <%--  <c:forEach items="${testList}" var="list">
                                  <option value="${list.testName}">${list.testName}</option>
                                   </c:forEach>  --%>
                                </select>
                              </div>
                                <!--  <label for="" class="col-sm-1 control-label">Amount</label> -->
                              <div class="col-sm-2" style="width: 10%;">
                                   <input type="text" class="form-control disabledboxes" id="testAmountn${loop.index}" value="${testDetail.testAmount}" disabled>
                                </div>
                               <!--  <label for="" class="col-sm-1 control-label">Doctor Charges</label> -->
                                <div class="col-sm-2" style="width: 10%;">
                                    <input type="text" class="form-control disabledboxes" onkeyup="caldiscount(${loop.index})" id="totaln${loop.index}"  value="${testDetail.totalAmount}">
                                </div>
                                <!--  <label for="" class="col-sm-1 control-label">Total Amount</label> -->
                                <div class="col-sm-1" style="width: 10%;">
                                    <input type="text" class="form-control disabledboxes"  id="hospitalChargesn${loop.index}"  value="${testDetail.hospitalCharges}"  disabled>
                                </div>
                                <div class="col-sm-1" style="width: 10%;">
                                    <input type="text" class="form-control disabledboxes"  id="doctorChargesn${loop.index}"  value="${testDetail.doctorCharges}"  disabled>
                                </div>
                                <!-- <label for="" class="col-sm-1 control-label">Referred Doctor</label> -->
                                <div class="col-sm-2">
                               <%--   <input type="hidden" class="form-control disabledboxes" id="totaln${loop.index}" value="${testDetail.totalAmount}"> --%>
                                 <input type="hidden" class="form-control disabledboxes" id="docpercentn${loop.index}" >
                                    <input type="text" class="form-control disabledboxes" id="refDoctorn${loop.index}"  value="${testDetail.referredDoctor}"  >
                                </div>
                               <div class="col-sm-1">
                                    <button type="button" id="button-remove" onclick="deletevalues(${testDetail.id})" class="btn btn-social-icon btn-success"><i class="fa fa-trash"></i></button>
                                </div> 
                        </div>
                        </c:forEach>
                         <div>
                        <div id="fundraiser-table">
                        
                     
                        </div>
                      </div>
                        <button type="button" class="btn btn-success" id="button1">Add Test Details</button><br>
						  <button type="button" class="btn btn-success" id="totalamt">Calculate Total</button>
                        <div class="form-group">
                         <label for="" class="col-sm-2 control-label">Total Test Amount</label>
                         <!--  <div class="col-sm-2">
                            <input type="text" class="form-control disabledboxes" id="" placeholder="Enter Test Amount">
                          </div>
                          <label for="" class="col-sm-2 control-label">Total Discount</label>
                          <div class="col-sm-2">
                            <input type="text" class="form-control disabledboxes" id="" placeholder="Enter Test Amount">
                          </div> -->
                          <!--  <div class="col-sm-2" ">
                           <button type="button" class="btn btn-success" id="totalamt">Calculate Total</button>
                           </div> -->
                          <div class="col-sm-2">
                            <input type="text" class="form-control disabledboxes" id="overall"  value="${patient.receipt.overallRs}" disabled>
                          </div>
                        </div>
                        </table>
                        </fieldset>

                       <button  type="button" id="save" class="btn btn-success">Edit</button>
                        <button type="button" id="print" onclick="printreceipt()"class="btn btn-success">Print Receipt </button>
                       
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
<!-- Select2 -->
<script src="../../js/select2.full.min.js"></script>
<!-- InputMask -->
<script src="../../js/jquery.inputmask.js"></script>
<script src="../../js/jquery.inputmask.date.extensions.js"></script>
<script src="../../js/jquery.inputmask.extensions.js"></script>
<!-- date-range-picker -->
<script src="../../js/moment.min.js"></script>
<script src="../../js/daterangepicker.js"></script>
<!-- bootstrap datepicker -->
<script src="../../js/bootstrap-datepicker.min.js"></script>
<!-- bootstrap color picker -->
<script src="../../js/bootstrap-colorpicker.min.js"></script>
<!-- bootstrap time picker -->
<script src="../../js/bootstrap-timepicker.min.js"></script>
<!-- SlimScroll -->
<script src="../../js/jquery.slimscroll.min.js"></script>
<!-- iCheck 1.0.1 -->
<script src="../../js/icheck.min.js"></script>
<!-- FastClick -->
<script src="../../js/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../../js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../js/demo.js"></script>



<!-- Page script -->
<script>
var arrObj=[];
var j=0;
var overall=0;
var loop1=1;

var tests=new Array();
  $(function () {
    //Initialize Select2 Elements
    $('.select2').select2()

    //Datemask dd/mm/yyyy
    $('#datemask').inputmask('dd/mm/yyyy', { 'placeholder': 'dd/mm/yyyy' })
    //Datemask2 mm/dd/yyyy
    $('#datemask2').inputmask('mm/dd/yyyy', { 'placeholder': 'mm/dd/yyyy' })
    //Money Euro
    $('[data-mask]').inputmask()

    //Date range picker
    $('#reservation').daterangepicker()
    //Date range picker with time picker
    $('#reservationtime').daterangepicker({ timePicker: true, timePickerIncrement: 30, format: 'MM/DD/YYYY h:mm A' })
    //Date range as a button
    $('#daterange-btn').daterangepicker(
      {
        ranges   : {
          'Today'       : [moment(), moment()],
          'Yesterday'   : [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
          'Last 7 Days' : [moment().subtract(6, 'days'), moment()],
          'Last 30 Days': [moment().subtract(29, 'days'), moment()],
          'This Month'  : [moment().startOf('month'), moment().endOf('month')],
          'Last Month'  : [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
        },
        startDate: moment().subtract(29, 'days'),
        endDate  : moment()
      },
      function (start, end) {
        $('#daterange-btn span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'))
      }
    )

    //Date picker
    $('#datepicker').datepicker({
      autoclose: true
    })

    //iCheck for checkbox and radio inputs
    $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
      checkboxClass: 'icheckbox_minimal-blue',
      radioClass   : 'iradio_minimal-blue'
    })
    //Red color scheme for iCheck
    $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
      checkboxClass: 'icheckbox_minimal-red',
      radioClass   : 'iradio_minimal-red'
    })
    //Flat red color scheme for iCheck
    $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
      checkboxClass: 'icheckbox_flat-green',
      radioClass   : 'iradio_flat-green'
    })

    //Colorpicker
    $('.my-colorpicker1').colorpicker()
    //color picker with addon
    $('.my-colorpicker2').colorpicker()

    //Timepicker
    $('.timepicker').timepicker({
      showInputs: false
    })
  });
  
$(document).ready(function() {
	 $('#totalamt').trigger('click');
	 $('#totalamt').hide();
//  $("#button1").click(function(){
//    var testCat = $("#testCategory").val();
//    var testSub = $("#testSubcategory").val();
//    var test = $("#specificTest").val();
//    var amount = $("#testAmount").val();
//    var discount = $("#discountAmount").val();
//    var refDoc = $("#refDoctor").val();
   
//   //  console.log(typeof(test),refDoc,amount);

//    if(testCat != "Test Category" && testSub != "Test Sub Category" &&  test != "Select Test" && amount !== "" && amount !== null && amount != undefined && refDoc !== "" && refDoc !== null && refDoc != undefined && discount !== "" && discount !== null && discount != undefined){
//      alert("hello");
//      var obj = {
//       TestCat :testCat,
//       TestSubCat :testSub,$('#doctorCharges').val(dcharge);
//       Amount :amount,
//       Test : test,
//       Discount :discount,
//       RefDoc : refDoc
//      }
//      console.log(obj);
//      localStorage.setItem("data", JSON.stringify(obj));
//      var dataObj = JSON.parse(localStorage.getItem("data"));
//      console.log(dataObj.Amount);
//    }
//   });
// });
	
	 var max_fields_limit = 10;
	 var x = 1;
	    $('#save').click(function(e){
		    debugger;
	    	 var loop=1;
			
		    var a=	$("#fundraiser-table").find('.templatedata');
			for(i=0;i<$('#size').val();i++){
				 var data={
	    			    "id":$('#testdetailid'+i).val(),
	 					"testCategory":$('#testCategoryn'+i).val(),
	 					"testName":$('#specificTestn'+i).val(),
	 					"testAmount":$('#testAmountn'+i).val(),
	 					"hospitalCharges":$('#hospitalChargesn'+i).val(),
	 					"doctorCharges":$('#doctorChargesn'+i).val(),
	 					"totalAmount":$('#totaln'+i).val(),
	 					"referredDoctor":$('#refDoctorn'+i).val(),
	 					"reciptId":$('#receiptId').val()
	 					};
	 			tests.push(data);
				}
		    a.each(function(i,k){
		    
			    var data={
			    		 "id":null,
						"testCategory":$(k).find('#testCategory'+loop).val(),
						"testName":$(k).find('#specificTest'+loop).val(),
						"testAmount":$(k).find('#testAmount'+loop).val(),
						"hospitalCharges":$(k).find('#hospitalCharges'+loop).val(),
						"doctorCharges":$(k).find('#doctorCharges'+loop).val(),
						"totalAmount":$(k).find('#totaltemp'+loop).val(),
						"referredDoctor":$(k).find('#refDoctor'+loop).val(),
						"reciptId":$('#receiptId').val()
						};
				tests.push(data);
				loop++;
				});
		    
		  		
		  		var value={
		  				"testDetail":tests,
		  				"overallRs":$('#overall').val()
				  		};
			console.log(JSON.stringify(tests));
			$.ajax({
	         url: 'savedetail',
	            type: 'post',
	            contentType: "application/json",
	        	 data: JSON.stringify(value),
	            success: function(response){
		            if(response==""){
	            		alert("duplicate test");
	            		location.reload();
	            		}
	            	else{
	            		location.reload();
		            	}
	            },
	           
	        });
			
		}); 

		
	    $('#button1').click(function(e){
	      var listTemplate = $("#list_template").tmpl({x});
	      
	      $('#fundraiser-table').append(listTemplate);
	      
	        e.preventDefault();
	        if(x < max_fields_limit){
	          x++;
	          $("#fundraiser-table").append(listTemplate);
	        }
	        
	    });  
	   /*  $("#fundraiser-table").on("click","#button-remove", function(e){
	      e.preventDefault(); 
	      $("#fundraiser-table").children().last().remove();
	      x--;
	     }); */
	});
	var data=0;
	function deletetest(id){
		debugger;
		var loop =1;
		/*  data= parseInt($('#overall').val())-parseInt($('#totalAmount'+id).val());
		 $('#overall').val(data) */
			var val=parseInt($('#overall').val())-parseInt($('#totaltemp'+id).val());
		$('#'+id).remove();
			
			 $('#overall').val(val) 
			 $('#totalamt').trigger('click');
		/*  var a=	$("#fundraiser-table").find('.templatedata');
		    a.each(function(i,k){
		    	 var a=$(this).attr('id');
		    	 
			    total=total+parseFloat($(k).find('#total'+a).val());
			  loop1++
				}); */
		 
		}

	
	 function gettestnames(id){
		var obj={
						"testCategory":$('#testCategoryn'+id).val(),
						"testName":$('#specificTestn'+id).val()
						};
		$.ajax({
            url: 'getTest',
            type: 'post',
            contentType: "application/json",
        	 data: JSON.stringify(obj),
            success: function(response){
                $('#totaln'+id).val(0);
            	 $('#docpercentn'+id).val(response.doctorpercentage)
			   $('#testAmountn'+id).val(response.rate);
  			  var dcharge=(response.doctorpercentage*response.rate)/100;
              $('#doctorChargesn'+id).val(dcharge);
              var hospitalcharges=response.rate-dcharge;
              $('#hospitalChargesn'+id).val(hospitalcharges);
              $('#totaln'+id).val(response.rate);
              $('#totalamt').trigger('click');
            },
           
        });
		}
		
		
		/* $('#temp').on('change','#specificTest1',function(){
			alert('hello');
			var obj={
						"testCategory":$('#testCategory1').val(),
						"testName":$('#specificTest1').val()
						};
		$.ajax({
            url: 'getTest',
            type: 'post',
            contentType: "application/json",
        	 data: JSON.stringify(obj),
            success: function(response){
            	var testHTML= $("#addusertemplate").tmpl();
        		$("#userdiv").html(testHTML);
              $('#testAmount').val(response.rate); 
              var dcharge=(response.doctorpercentage*response.rate)/100;
              $('#discountAmount1').val(dcharge);
              var total=response.rate-dcharge;
              $('#totalAmount1').val(total);
            },
           
        });
		}) */
		function call(count){
		 
			var obj={
					"testCategory":$('#testCategory'+count).val(),
					"testName":$('#specificTest'+count).val()
					};
	$.ajax({
        url: 'getTest',
        type: 'post',
        contentType: "application/json",
    	 data: JSON.stringify(obj),
        success: function(response){
            debugger;
        	$('#totaln'+count).val(0);
        	 $('#docpercent'+count).val(response.doctorpercentage)
			   $('#testAmount'+count).val(response.rate);
            var dcharge=(response.doctorpercentage*response.rate)/100;
            $('#doctorCharges'+count).val(dcharge);
            var hospitalcharges=response.rate-dcharge;
            $('#hospitalCharges'+count).val(hospitalcharges);
            $('#totaltemp'+count).val(response.rate);
            $('#totalamt').trigger('click');
        },
       
    });
		}
	 $('#print').click(function(e){
		 
	 });

	 //for fetching the test name at on change of testcatagory
	 function getTestName(id){
		 $.ajax({
	            url: 'getTestNames',
	            type: 'post',
	            data: {"testCategory":$('#testCategoryn'+id).val()},
	            success: function(response){
	            	$('#specificTestn'+id).empty().append('<option>Select test</option>');
		            $.each(response, function(val, text) {
			            $('#specificTestn'+id).append(
		                    $('<option></option>').val(text.testName).html(text.testName)
		                );
		            });
	             },
	           
	        });
		 }
	 function gettestnamefortemplate(id){
		 $.ajax({
	            url: 'getTestNames',
	            type: 'post',
	            data: {"testCategory":$('#testCategory'+id).val()},
	            success: function(response){
	            	$('#specificTest'+id).empty().append('<option>Select test</option>');
		            $.each(response, function(val, text) {
			            $('#specificTest'+id).append(
		                    $('<option></option>').val(text.testName).html(text.testName)
		                );
		            });
	             },
	           
	        });
		 }

	 function caldiscount(id){
		 
		 if(parseInt($('#totaln'+id).val())<=parseInt($('#testAmountn'+id).val()) || $('#totaln'+id).val()==''){
			
			var totalamount=$('#testAmountn'+id).val();
			var disamount;
			if($('#totaln'+id).val()==''){
				//$('#totaln'+id).val('0');
				disamount=0;
			}
	 		else
	 			 disamount=parseInt($('#totaln'+id).val());
			 var docpercent=$('#docpercentn'+id).val();
			  var dcharge=(docpercent*disamount)/100;
			  $('#doctorChargesn'+id).val(dcharge);
              var hospitalcharges=disamount-dcharge;
              $('#hospitalChargesn'+id).val(hospitalcharges);
              //$('#totaln'+id).val(disamount);
              $('#totalamt').trigger('click');
             
		 }
		 }
		 
		 function caldiscountamntfortemplate(id1){
		 if(parseInt($('#totaltemp'+id1).val())<=parseInt($('#testAmount'+id1).val()) || $('#totaltemp'+id1).val()==''){
				var totalamount=$('#testAmount'+id1).val();
				var disamount;
				if($('#totaltemp'+id1).val()=='')
					 disamount=0;
		 		else
		 			 disamount=totalamount-parseInt($('#totaltemp'+id1).val());
				 var docpercent=$('#docpercent'+id1).val();
	              var dcharge=(docpercent*disamount)/100;
	              $('#doctorCharges'+id1).val(dcharge);
	              var hospitalcharges=disamount-dcharge;
	              $('#hospitalCharges'+id1).val(hospitalcharges);
	              //$('#totaltemp'+id1).val(disamount);
	              $('#totalamt').trigger('click');
			 }
		 }

	 $('#totalamt').on('click',function(){
		debugger;
		var totaln=0;
		var total=0;
		for(i=0;i<$('#size').val();i++){
			if($('#totaln'+i).val()=='')
				totaln=0;
			else
				totaln=parseFloat($('#totaln'+i).val());
			total=total+totaln;
			}
		//var total= parseFloat($('#overall').val());
			 var a=	$("#fundraiser-table").find('.templatedata');
			    a.each(function(i,k){
			    	 var a=$(this).attr('id');
			    	 if($('#totaltemp'+a).val()=='')
							totaln=0;
						else
							totaln=parseFloat($('#totaltemp'+a).val());
				    total=total+totaln;
				 });
			
			    $('#overall').val(total);
		 })
		
		/* 
		$("#discountAmount").focusout(function(){
			if($('#discountAmount').val()=="")
			$('#discountAmount').val(0);
});
	 function makevaluezero(id3){
		 if($('#discountAmount'+id3).val()=="")
		 $('#discountAmount'+id3).val(0);
		 } */

		 function deletevalues(id){
			 
			 /* var form = $('<form action="deletetest" method="post">' +
					  '<input type="text" name="receiptId" value="' + $('#receiptId').val() + '" />' +
					  '<input type="text" name="testDetailId" value="' +id + '" />' +
					  '</form>');
					$('body').append(form);
					form.submit(); */
			var obj={
							"receiptId":$('#receiptId').val(),
							"testDetailId":id
							};
			 $.ajax({
		            url: 'deletetest',
		            type: 'post',
		            
		            data: obj,
		            success: function(response){
		            	location.reload();
		            }
		        });
				
			 }
		 function printreceipt(){

			 var form = $('<form action="printreceipt" method="post">' +
					 '<input type="text" name="receiptId" value="' + $('#receiptId').val() + '" />' +
					  '</form>');
					$('body').append(form);
					form.submit(); 
			 }
</script>
<script
		src="http://ajax.aspnetcdn.com/ajax/jquery.templates/beta1/jquery.tmpl.min.js"></script>
</body>
</html>




