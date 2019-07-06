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
  .text {
  display: block;
  width: 100px;
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
}
  
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
                     <input type="hidden" value="${patient.receiptData.id}" id="receiptId"> 
                    <form class="form-horizontal">
                      <div class="box-body">
                          <fieldset class="scheduler-border">
                              <legend class="scheduler-border">Receipt Details</legend>
                      <div class="form-group">
                        <label for="" class="col-sm-2 control-label">Reciept Number</label>
                        <div class="col-sm-2">
                            <input type="text" class="form-control disabledboxes" id="recieptNumber"  disabled value="${patient.receiptData.id}">
                        </div>
                        <label for="" class="col-sm-2 control-label" style="width:13%;">Reciept Date</label>
                        <div class="col-sm-2">
                          <input type="text" class="form-control disabledboxes" id="recieptDate" value="${patient.receiptData.receiptDate}" disabled >
                        </div>
                        <label for="" class="col-sm-2 control-label" style="width:13%;">Reciept Time</label>
                        <div class="col-sm-2">
                       <input type="text" class="form-control disabledboxes" id="recieptTime" value="${patient.receiptData.receiptTime}" disabled>
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
                          
                 <table id="example1" class="table table-bordered table-striped">
                   <tr>
                    <th  class="col-sm-2" style="text-align:center;width: 15%;" >Test Category</th>
                    <th class="col-sm-2" style="text-align:center">Test Name</th>
                    <th class="col-sm-2" style="text-align:center;width: 18%;">Doctor Name</th>
                    <th class="col-sm-3" style="text-align:center">Report Detail</th>
                    <th class="col-sm-2" style="text-align:center"></th>
                  	<th class="col-sm-2" style="text-align:center"></th>
                  </tr>
                
                </table>
                   <div id="fundraiser-table">
                     <input type="hidden" id="size" value="${labdetails.size()}">
                         <c:forEach items="${labdetails}" var="labDetails" varStatus='loop'>
                          
                        <div class="form-group templatedata">
                 			<input type="hidden" id="testdetailid${labDetails.testDetail.id}" value="${labDetails.testDetail.id}">
                         <div class="col-sm-2" >
                            <%-- <select class="form-control select2 select2-hidden-accessibl" id="testCategoryn${loop.index}" onchange="getTestName(${loop.index});" style="width: 100%;" tabindex="-1" aria-hidden="true" >
                              <option selected="selected">${labDetails.testDetail.testCategory}</option>
                              </select> --%>
                               <input type="text" id="testCategory${labDetails.testDetail.id}" class="form-control disabledboxes" value="${labDetails.testDetail.testCategory}" disabled/>
                          </div>
                          
                            <div class="col-sm-2" style="text-align:center">
                                <%-- <select class="form-control select2 select2-hidden-accessibl" id="specificTestn${loop.index}" onchange="gettestnames(${loop.index})" style="width: 100%;" tabindex="-1" aria-hidden="true" >
                                  <option selected="selected">${labDetails.testDetail.testName}</option>
                                </select> --%>
                                  <input type="text" id="specificTest${labDetails.testDetail.id}" class="form-control disabledboxes" value="${labDetails.testDetail.testName}" disabled/>
                              </div>
                                <!--  <label for="" class="col-sm-1 control-label">Amount</label> -->
                            
                               <!--  <label for="" class="col-sm-1 control-label">Doctor Charges</label> -->
                               
                                <!--  <label for="" class="col-sm-1 control-label">Total Amount</label> -->
                              <div class="col-sm-2" style="text-align:center">
                              <input type="hidden" id="docsize" value="${doctor.size()}" >
                               <select id="docName${labDetails.testDetail.id}" onchange="hidebutton(${labDetails.testDetail.id})" class="form-control select2 select2-hidden-accessible doc${loop.index}" style="width: 100%;" tabindex="-1" aria-hidden="true">
                                 <input type="hidden" id="dochidname${loop.index}" value="${labDetails.testDetail.doctorName}"/>
                                 <%--  <c:if test="${not empty labDetails.testDetail.doctorName}">
                                  <option   value="${labDetails.testDetail.doctorName}">${labDetails.testDetail.doctorName}</option>
                                  </c:if>
                                 <c:forEach items="${doctor}" var="doctorlist">
                                  <option   value="${doctorlist.sirName} ${doctorlist.firstName} ${doctorlist.middleName} ${doctorlist.lastName}">${doctorlist.sirName} ${doctorlist.firstName} ${doctorlist.middleName} ${doctorlist.lastName}</option>
                                  </c:forEach> --%>
                                </select> 
                                </div>
                               
                               <div class="col-sm-3" style="text-align:center">
                                 <input type="hidden" class="form-control disabledboxes"  value="${labDetails.testDetail.template}">
                                <%--  <span  id="spantemp${labDetails.testDetail.id}"  data-toggle="tooltip" data-html="true" title="Edit template" class="spantemps${labDetails.testDetail.id} "  style="display:block;text-overflow: ellipsis;width: 220px;height:40px;overflow: hidden; white-space: nowrap; cursor: pointer;" onclick="callmodel(${labDetails.testDetail.id});" >${labDetails.testDetail.template}</span> --%> 
                                <span  id="spantemp${labDetails.testDetail.id}" style="display:none;"  class="spantemps${labDetails.testDetail.id}"  style="display:block;text-overflow: ellipsis;width: 100px;overflow: hidden; white-space: nowrap;" onclick="callmodel(${labDetails.testDetail.id});" >${labDetails.testDetail.template}</span><a href="#" onclick="callmodel(${labDetails.testDetail.id});"><i class="fa fa-pencil" style="font-size:30px;color:green" aria-hidden="true"></i></a>

                              
                                </div>
                                
                                <div class="col-sm-1" style="text-align:center">
                                <button  type="button" id="save${labDetails.testDetail.id}" onclick="savelabdata(${labDetails.testDetail.id})"  class="btn btn-success">Save</button>
                                </div>
                                 
                                <div class="col-sm-1" style="text-align:center">
                                <button type="button" id="print${labDetails.testDetail.id}" onclick="printreport(${labDetails.testDetail.id})" class="btn btn-success">Print Report </button>
                                </div>
                                
                              
                        </div>
                        </c:forEach>
                        </div>
                         <div>
                        
                      </div>
                     
					
                        </fieldset>
<!-- 
                       <button  type="button" id="save" class="btn btn-success">Save</button>
                        <button type="button" id="print" onclick="printreceipt()" class="btn btn-success">Print Report </button>
                        -->
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
    
      <c:forEach items="${labdetails}" var="labDetails" varStatus='loop'>
     <div class="modal fade" id="exampleModal${labDetails.testDetail.id }" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content" style="background: #f2f4f6;">
        <div class="modal-header" style="border:none;">
            
          <!-- <h5 class="modal-title text-center" id="exampleModalLabel">VIDEO FEEDBACK</h5> -->
         
            <span aria-hidden="true">&times;</span>
       
        </div>
        <div class="modal-body">
           
        
         <div class="zR4n5">
           
          <%--   <div class="mb-10"><textarea  name="testTemplate${labDetails.testDetail.id}" id="temptextarea${labDetails.testDetail.id}" rows="5" cols="80">${labDetails.testDetail.template}</textarea></div> --%>
          <div class="mb-10"><textarea  style="display:none;" name="testTemplate${labDetails.testDetail.id}" id="temptextarea${labDetails.testDetail.id}" rows="5" cols="80">${labDetails.testDetail.template}</textarea></div>
          </div>
        </div>
        <div class="modal-footer" style="border:none;">
        <button type="button" id="savefeedback" onclick="cktemp(${labDetails.testDetail.id});" class="btn btn-success" style="text-decoration:none;color:#fff;" >Ok</button>
          <button type="button" class="btn btn-success" style="text-decoration:none;color:#fff;" data-dismiss="modal">Cancel</button>
        </div>
      </div>
    </div>
  </div>
  </c:forEach>
  
 
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
  <script src="https://cdn.ckeditor.com/4.11.4/standard/ckeditor.js"></script>


<!-- Page script -->
<script>
var arrObj=[];
var j=0;
var overall=0;
var loop1=1;
$(document).ready(function() {
	debugger;
	var size1=$('#size').val();
	for(i=0;i<size1;i++){
	  <c:forEach items="${doctor}" var="doctorlist">
	  $('.doc'+i).append(
             $('<option></option>').val('${doctorlist.sirName}'+' '+'${doctorlist.firstName}'+' '+'${doctorlist.middleName}'+' '+'${doctorlist.lastName}').html('${doctorlist.sirName}'+' '+'${doctorlist.firstName}'+' '+'${doctorlist.middleName}'+' '+'${doctorlist.lastName}')
				//$('<option></option>').val('${doctorlist.firstName}'+'${doctorlist.middleName}' ).html('${doctorlist.firstName}'+'${doctorlist.middleName}')
		          );
      if($('#dochidname'+i).val()!='')
	  $(".doc"+i).val($('#dochidname'+i).val());
	  </c:forEach>
	}
/* var doctor='${doctor}'
alert(doctor[0]);
	 $.each(doctor, function(val, text) {
           debugger;
          $('.doc').append(
                 $('<option></option>').val(doctor.sirName+' '+doctor.firstName+' '+doctor.middleName+' '+doctor.lastName).html(doctor.sirName+' '+doctor.firstName+' '+doctor.middleName+' '+doctor.lastName)
             );
         // $(".doc").val($('#test'+id).val());
       }); */
	
}) ;

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
	
	
		
		
$('span').on('mouseover mouseout',function(){
 //   $(this).find('.editInline').toggle();
	$(this).find('.editInline').toggle();
});
	
		
	
		
	

		
		 
		 function callmodel(id){
				$('#exampleModal'+id).modal();
				 CKEDITOR.replace('testTemplate'+id, {
				      // Define the toolbar groups as it is a more accessible solution.
				      toolbarGroups: [{
				          "name": "basicstyles",
				          "groups": ["basicstyles"]
				        },
				        {
				          "name": "links",
				          "groups": ["links"]
				        },
				        {
				          "name": "paragraph",
				          "groups": ["list", "blocks"]
				        },
				        {
				          "name": "document",
				          "groups": ["mode"]
				        },
				        {
				          "name": "insert",
				          "groups": ["insert"]
				        },
				        {
				          "name": "styles",
				          "groups": ["styles"]
				        },
				        {
				          "name": "about",
				          "groups": ["about"]
				        }
				      ],
				      // Remove the redundant buttons from toolbar groups defined above.
				      removeButtons: 'Underline,Strike,Subscript,Superscript,Anchor,Styles,Specialchar'
				    });
			
		        }

				function cktemp(id){
				debugger;
				var ckValue = CKEDITOR.instances["temptextarea"+id].getData();
				console.log(ckValue);
				 $("#spantemp"+id).html(ckValue); 
				 hidebutton(id)
				$('#exampleModal'+id).modal('toggle'); 
				/* var newtext=$("#spantemp"+id).text().substr(0, 30);
				$("#spantemp"+id).html(newtext+"..."+"<a href='#'><i class='fa fa-pencil fa-lg'></i></a>"); */
				}

				 function savelabdata(i){
					 debugger;
				    	var tests=new Array();
						
					    var a=	$("#fundraiser-table").find('.templatedata');
						/* for(i=0;i<$('#size').val();i++){
							 var data={
				    			    "id":$('#testdetailid'+i).val(),
				 					"testCategory":$('#testCategoryn'+i).val(),
				 					"testName":$('#specificTestn'+i).val(),
				 					"doctorName":$("#docName"+i).val(),
				 					"testTemplate":$("#testTemplate"+i).val(),
				 					};
				 			tests.push(data);
							} */
					  
					    
						    var data={
						    		"reciptId":$('#receiptId').val(),
						    		"id":$('#testdetailid'+i).val(),
				 					"testCategory":$('#testCategory'+i).val(),
				 					"testName":$('#specificTest'+i).val(),
				 					"doctorName":$("#docName"+i).val(),
				 					"template":$("#spantemp"+$('#testdetailid'+i).val()).html(),
									};
						console.log(JSON.stringify(tests));
						$.ajax({
				            url: 'saveLabData',
				            type: 'post',
				            contentType: "application/json",
				        	data: JSON.stringify(data),
				            success: function(response){
					            if(response){
				            		alert("Updated Data Sucessfully");
				            		 //$("#save").prop('disabled', true);
				            		$('#print'+i).attr('disabled',false);
				            	//	location.reload();
				            		}
				            	else{
				            		alert("Something Went Wrong");
				            		 

					            	}
				            },
				           
				        });
						
					} 
				  function printreport(id){
					 var form = $('<form action="printLabReport" method="post">' +
					 			  '<input type="text" name="reciptId" value="' +  $('#receiptId').val() + '" />' +
					 			  '<input type="text" name="testCategory" value="' +  $('#testCategory'+id).val() + '" />' +
					 			  '<input type="text" name="testName" value="' + $('#specificTest'+id).val() + '" />' +
					 			  '<input type="text" name="testTemplate" value="' +  $('#spantemp'+id).html() + '" />' +
					 			  '<input type="text" name="docName" value="' + $('#docName'+id+' :selected').text() + '" />' +
					 			  '</form>');
					 			$('body').append(form);
					 			form.submit();
					 } 


			function hidebutton(id){
				$('#print'+id).attr('disabled',true)
				}		 
</script>
<script
		src="http://ajax.aspnetcdn.com/ajax/jquery.templates/beta1/jquery.tmpl.min.js"></script>
</body>
</html>






