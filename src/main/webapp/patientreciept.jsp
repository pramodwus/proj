<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Advanced form elements</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="../../css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="../../css/ionicons.min.css">
  <!-- daterange picker -->
  <link rel="stylesheet" href="../../daterangepicker.css">
  <!-- bootstrap datepicker -->
  <link rel="stylesheet" href="../../css/bootstrap-datepicker.min.css">
  <!-- iCheck for checkboxes and radio inputs -->
  <link rel="stylesheet" href="../../css/all.css">
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <!-- Bootstrap Color Picker -->
  <link rel="stylesheet" href="../../css/bootstrap-colorpicker.min.css">
  <!-- Bootstrap time Picker -->
  <link rel="stylesheet" href="../../css/bootstrap-timepicker.min.css">
  <!-- Select2 -->
  <link rel="stylesheet" href="../../css/select2.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="../../css/_all-skins.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
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
          <li class="active"><a href="receipt"><i class="fa fa-circle-o"></i>Reciept</a></li>
          <li><a href="doctor"><i class="fa fa-circle-o"></i>Doctor</a></li>
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
              <li class="active treeview menu-open">
                      <a href="#">
                        <i class="fa fa-circle-o"></i> <span>Report Template</span>
                        <span class="pull-right-container">
                          <i class="fa fa-angle-left pull-right"></i>
                        </span>
                      </a>
                        <ul class="treeview-menu"> 
                            <li class="active"><a href="/maintenance"><i class="fa fa-circle-o"></i>Maintenance</a></li>
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
                    <form class="form-horizontal">
                      <div class="box-body">
                          <fieldset class="scheduler-border">
                              <legend class="scheduler-border">Receipt Details</legend>
                      <div class="form-group">
                        <label for="" class="col-sm-2 control-label">Reciept Number</label>
                        <div class="col-sm-2">
                          <input type="text" class="form-control disabledboxes" id="recieptNumber" placeholder="123456789" disabled>
                        </div>
                        <label for="" class="col-sm-2 control-label" style="width:13%;">Reciept Date</label>
                        <div class="col-sm-2">
                          <input type="text" class="form-control disabledboxes" id="recieptDate" placeholder="15/04/2019" disabled>
                        </div>
                        <label for="" class="col-sm-2 control-label" style="width:13%;">Reciept Time</label>
                        <div class="col-sm-2">
                          <input type="text" class="form-control disabledboxes" id="recieptTime" placeholder="00:00 AM" disabled>
                        </div>
                      </div>
                      </fieldset>


                      <fieldset class="scheduler-border">
                          <legend class="scheduler-border">Patient Details</legend>  
                          <!-- <div class="form-group">
                              <label for="" class="col-sm-2 control-label">Search Patient</label>
                              <div class="col-sm-4">
                                  <input type="text" class="form-control disabledboxes" id="" placeholder="Enter details to be search.....">
                                </div>
                          </div>                     -->
                          <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Patient Name</label>
                              <div class="col-sm-1">
                                <select class="form-control" style="width: 57px;padding: 6px;">
                                  <option selected="selected">Mr.</option>
                                  <option>Mrs.</option>
                                  <option>Ms.</option>
                                </select>
                              </div>
                              <div class="col-sm-3">
                                <input type="text" class="form-control disabledboxes" id="" placeholder="Chirag" disabled>
                              </div>
                              <div class="col-sm-3">
                                <input type="text" class="form-control disabledboxes" id="" placeholder="S" disabled>
                              </div>
                              <div class="col-sm-3">
                                <input type="text" class="form-control disabledboxes" id="" placeholder="Sadana" disabled>
                              </div>
                          </div>
                          <div class="form-group">
                            <label for="" class="col-sm-2 control-label">Gender</label>
                              <div class="col-sm-4">
                                <div class="radio">
                                  <label>
                                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                                    Male
                                  </label>
                                  <label>
                                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1">
                                    Female
                                  </label>
                                  <label>
                                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1">
                                    Others
                                  </label>
                                </div>                         
                              </div>
                          
                          <label for="" class="col-sm-2 control-label">Contact No.</label>
                          <div class="col-sm-4">
                              <input type="text" class="form-control disabledboxes" placeholder="9876543210" disabled>
                            </div>
                          </div>
                      </fieldset>


                      <fieldset class="scheduler-border">
                          <legend class="scheduler-border">Test Details</legend>
                          
                 <script id="list_template" type="text/x-jquery-tmpl">
                      <div class="form-group">                 
                        <div class="col-sm-2">
                          <input type="text" class="form-control disabledboxes" id="testCategory" placeholder="X-Ray" disabled>
                        </div>                         
                        <div class="col-sm-2">
                          <input type="text" class="form-control disabledboxes" id="specificTest" placeholder="chest X-ray" disabled>
                        </div>
                        <div class="col-sm-1">
                          <input type="text" class="form-control disabledboxes" id="testAmount" placeholder="1000" disabled>
                        </div>
                        <div class="col-sm-1"">
                          <input type="text" class="form-control disabledboxes" id="discountAmount" placeholder="50%" disabled>
                        </div>
                        <div class="col-sm-1">
                          <input type="text" class="form-control disabledboxes" id="doctorPercentage" placeholder="50%" disabled>
                        </div>
                        <div class="col-sm-1">
                          <input type="text" class="form-control disabledboxes" id="hospitalAmount" placeholder="450" disabled>
                        </div>
                        <div class="col-sm-1">
                          <input type="text" class="form-control disabledboxes" id="doctorAmount" placeholder="50" disabled>
                        </div>
                        <div class="col-sm-2">
                            <input type="text" class="form-control disabledboxes" id="refDoctor" placeholder="Chirag Sadana" disabled>
                        </div>
                        <div class="col-sm-1">
                            <button type="button" id="button-remove" class="btn btn-social-icon btn-success"><i class="fa fa-trash"></i></button>
                        </div>
                      </div>                        
                  </script> 
                    <div><div id="fundraiser-table"></div></div>
                        <div class="form-group">                 
                          <div class="col-sm-2">
                            <select class="form-control select2 select2-hidden-accessibl" id="testCategory" style="width: 100%;" tabindex="-1" aria-hidden="true">
                              <option selected="selected">Test Category</option>
                              <option>X-ray</option>
                              <option>Sonography With Print</option>
                              <option>Sonography Without Print</option>
                              <option>Echo</option>
                              <option>LFT</option>
                              <option>Blood Test</option>
                            </select>
                          </div>
                          <div class="col-sm-2">
                              <select class="form-control select2 select2-hidden-accessibl" id="specificTest" style="width: 100%;" tabindex="-1" aria-hidden="true">
                                <option selected="selected">Select Test</option>
                                <option>Chest X-ray</option>
                                <option>Sonography With Print</option>
                                <option>Echo</option>
                                <option>CBT</option>
                                <option>LFT</option>
                                <option>Blood Test</option>
                              </select>
                            </div>
                            <div class="col-sm-1">
                                <input type="text" class="form-control disabledboxes" id="testAmount" placeholder="1000" disabled>
                            </div>
                            <div class="col-sm-2">
                                <input type="text" class="form-control disabledboxes" id="discountAmount" placeholder="Discount Amount">
                            </div>
                            <div class="col-sm-1">
                                <input type="text" class="form-control disabledboxes" id="doctorPercentage" placeholder="10%" disabled>
                            </div>
                            <div class="col-sm-1">
                              <input type="text" class="form-control disabledboxes" id="hospitalAmount" placeholder="450" disabled>
                            </div>
                            <div class="col-sm-1">
                              <input type="text" class="form-control disabledboxes" id="doctorAmount" placeholder="50" disabled>
                            </div>
                            <div class="col-sm-2">
                              <input type="text" class="form-control disabledboxes" id="refDoctor" placeholder="Referred Doctor">
                            </div>
                        </div>
                        <button type="button" class="btn btn-success" id="button1">Add Test Details</button><br>

                        <div class="form-group">
                          <label for="" class="col-sm-3 control-label">Total Discount Amount</label>
                          <div class="col-sm-1">
                            <input type="text" class="form-control disabledboxes" id="" placeholder="500" disabled>
                          </div>
                          <label for="" class="col-sm-3 control-label">Total Hospital Amount</label>
                          <div class="col-sm-1">
                            <input type="text" class="form-control disabledboxes" id="" placeholder="450" disabled>
                          </div>
                          <label for="" class="col-sm-3 control-label">Total Payable Amount</label>
                          <div class="col-sm-1">
                            <input type="text" class="form-control disabledboxes" id="" placeholder="500" disabled>
                          </div>
                        </div>
                        </fieldset>

                        <button type="submit" class="btn btn-success">Save & Print Reciept</button>

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
//       TestSubCat :testSub,
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
    $('#button1').click(function(e){
      var listTemplate = $("#list_template").tmpl({});
      $('#fundraiser-table').append(listTemplate);
        e.preventDefault();
        if(x < max_fields_limit){
          x++;
          $("#fundraiser-table").append(listTemplate);
        }
    });  
    $("#fundraiser-table").on("click","#button-remove", function(e){
      e.preventDefault(); 
      $("#fundraiser-table").children().last().remove();
      x--;
     });
});

</script>
<script type="text/javascript" src="../../js/jquery_tmpl.js"></script>
</body>
</html>



