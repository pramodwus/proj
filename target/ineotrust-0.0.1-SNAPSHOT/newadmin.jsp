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
  <title>Dashboard|Admin</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="../../css/bootstrap.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <!-- <link rel="stylesheet" href="../../css/font-awesome.min.css"> -->
  <link rel="stylesheet" href="../../css/ionicons.min.css">
  <link rel="stylesheet" href="../../css/AdminLTE.min.css">
  <link rel="stylesheet" href="../../css/_all-skins.min.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<style>
	.requireFld{
    	font-size: 12px;
    	color: red;
    	float: left; 
    	width: 4em; 
    	margin-right: 1em; 
    }
</style>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="home" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>Bell</b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Bellurbis</b></span>
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
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Admin</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
            <ul class="treeview-menu">
                <li><a href="test"><i class="fa fa-circle-o"></i>User</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i>Doctor</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i>Test</a></li>
                 <li><a href="#"><i class="fa fa-circle-o"></i>Template</a></li>
              
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
    <!-- /.sidebar -->
  </aside>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Admin
        <small>Panel</small>
      </h1>     
    </section>
    <section class="content-header">         
        <div class="box-header ui-sortable-handle" style="cursor: move;">  
            <!-- <h1>
                Admin
                <small>Panel</small>
              </h1>  -->
            <!-- tools box -->
            <!-- <div class="pull-right box-tools">
                <button type="button" class="btn bg-olive btn-flat"><a href="#" style="text-decoration:none;color:#fff;">Add New User</a></button>
                <button type="button" class="btn bg-olive btn-flat"><a href="#" style="text-decoration:none;color:#fff;">Edit User</a></button>
            </div> -->
            <div class="row">
              <div class="col-md-6">
                  <!-- Horizontal Form -->
                  <div class="box box-info">
                    <div class="box-header with-border">
                      <h3 class="box-title">Add New User</h3>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                      <c:if test="${msg=='sucess'}">
                      <center> <span style="color:green">User Added Sucessfully!</span></center>
                      </c:if>
                      <c:if test="${msg=='error'}">
                      <center> <span style="color:red">User Already Exist!</span></center>
                      </c:if>
                   <form  class="form-horizontal" action="saveUser" method="post">
                  <!--  <form class="form-horizontal"> -->
                      <div class="box-body">
                      <div class="form-group">
                        <label for="" class="col-sm-3 control-label">First Name</label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control disabledboxes" id="firstname1" name="firstname" placeholder="Enter your first name" required>
                        <!--   <label class="requireFld" id="firstNameError">not valid</label> -->
                        <!-- <span id="firstname1error" class="requireFld">not valid</span>  -->
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="" class="col-sm-3 control-label">Last Name</label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control disabledboxes" id="lastname1" name="lastname" placeholder="Enter your last name" required>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="" class="col-sm-3 control-label">Email Id</label>
                        <div class="col-sm-8">
                          <input type="email" class="form-control disabledboxes" id="emailId1" name="emailId" placeholder="Enter your email" required>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="" class="col-sm-3 control-label">Password</label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control disabledboxes" id="password1" name="password" placeholder="Enter Password" required>
                        </div>
                      </div>
                    <div class="form-group">
											<label for="" class="col-sm-3 control-label">Role</label>
											<div class="col-sm-8">
												<select id="role1" name ="role" class="form-control disabledboxes" required>
													<option value="frontdesk">Front Desk</option>
													<option value="backoffice">Back Office</option>
													<option value="labassistant">Lab Assistant</option>
												</select>
											</div>
										</div>
                     
                    </div>
                      <!-- /.box-body -->
                      <div class="box-footer">
                        <button type="submit" class="btn btn-success" id="button1">Add New User</button>
                      </div>
                      <!-- /.box-footer -->
                    </form>
                  </div>
                  </div>
                  <!-- /.box -->
                  <div class="col-md-6">
                    <!-- Horizontal Form -->
                    <div class="box box-info">
                      <div class="box-header with-border">
                        <h3 class="box-title">Modify User</h3>
                      </div>
                      <!-- /.box-header -->
                      <!-- form start -->
                      <c:if test="${msg1=='sucess'}">
                      <center> <span style="color:green">User Updated Sucessfully!</span></center>
                      </c:if>
                      <c:if test="${msg1=='error'}">
                      <center> <span style="color:red">User does not Exist!</span></center>
                      </c:if>
                      <form class="form-horizontal" action ="editUser" method="post"> 
                        <div class="box-body">
                        <div class="form-group">
                        <label for="" class="col-sm-3 control-label">First Name</label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control disabledboxes" name="firstname" placeholder="Enter your first name" required>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="" class="col-sm-3 control-label">Last Name</label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control disabledboxes" name="lastname" placeholder="Enter your last name" required>
                        </div>
                      </div>
                        <div class="form-group">
                          <label for="" class="col-sm-3 control-label">Email Id</label>
                          <div class="col-sm-8">
                            <input type="email" class="form-control disabledboxes" name="emailId" placeholder="Enter your email" required >
                          </div>
                        </div>
                        <div class="form-group">
                          <label for="" class="col-sm-3 control-label">Password</label>
                          <div class="col-sm-8">
                            <input type="text" class="form-control disabledboxes" name="password" placeholder="Enter Password" required >
                          </div>
                        </div>
										<div class="form-group">
											<label for="" class="col-sm-3 control-label">Role</label>
											<div class="col-sm-8">
												<select class="form-control disabledboxes" name="role" required>
													<option value="frontdesk">Front Desk</option>
													<option value="backoffice">Back Office</option>
													<option value="labassistant">Lab Assistant</option>
												</select>
											</div>
										</div>

									</div>
                        <!-- /.box-body -->
                        <div class="box-footer">
                          <button type="submit" class="btn btn-success" id="button1">Modify Existing User</button>
                        </div>
                        <!-- /.box-footer -->
                      </form>
                    </div>
                    </div>
          </div>
          <div class="row">
            <div class="col-md-6">
                <!-- Horizontal Form -->
                <div class="box box-info">
                  <div class="box-header with-border">
                    <h3 class="box-title">Add New Doctor</h3>
                  </div>
                  <!-- /.box-header -->
                  <!-- form start -->
                  <c:if test="${docmsg=='sucess'}">
                      <center> <span style="color:green">Doctor Data Added Sucessfully!</span></center>
                      </c:if>
                      <c:if test="${docmsg=='error'}">
                      <center> <span style="color:red">Doctor Data Already Exist!</span></center>
                      </c:if>
                  <form class="form-horizontal" action="adddoctor" method="post">
                    <div class="box-body">
                    <div class="form-group">
                      <label for="" class="col-sm-3 control-label">Name</label>
                      <div class="col-sm-8">
                        <input type="text" class="form-control disabledboxes" name="name" placeholder="Enter Name" required> 
                      </div>
                    </div>
					 <div class="form-group">
                      <label for="" class="col-sm-3 control-label">Email</label>
                      <div class="col-sm-8">
                        <input type="email" class="form-control disabledboxes" name="email" placeholder="Enter Email" required>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="" class="col-sm-3 control-label">Sex</label>
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
                      <label for="" class="col-sm-3 control-label">Age</label>
                      <div class="col-sm-8">
                        <input type="text" class="form-control disabledboxes" name="age" placeholder="Enter Age" required>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="" class="col-sm-3 control-label">Address</label>
                      <div class="col-sm-8">
                        <input type="text" class="form-control disabledboxes" name="address" placeholder="Enter Address" required>
                      </div>
                    </div>
                     <div class="form-group">
                      <label for="" class="col-sm-3 control-label">City</label>
                      <div class="col-sm-8">
                        <input type="text" class="form-control disabledboxes" name="city" placeholder="Enter City" required>
                      </div>
                    </div>
                     <div class="form-group">
                      <label for="" class="col-sm-3 control-label">Pincode</label>
                      <div class="col-sm-8">
                        <input type="text" class="form-control disabledboxes" name="pincode" placeholder="Enter Pincode" required>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="" class="col-sm-3 control-label">Phone Number</label>
                      <div class="col-sm-8">
                        <input type="text" class="form-control disabledboxes" name="contactNumber" placeholder="Enter Phone Number" required>
                      </div>
                    </div>
                     <div class="form-group">
                      <label for="" class="col-sm-3 control-label">Qualification</label>
                      <div class="col-sm-8">
                        <input type="text" class="form-control disabledboxes" name="qualification" placeholder="Enter Qualification" required>
                      </div>
                    </div>
                   
                  </div>
                    <!-- /.box-body -->
                    <div class="box-footer">
                      <button type="submit" class="btn btn-success" id="button1">Add New Doctor</button>
                    </div>
                    <!-- /.box-footer -->
                  </form>
                </div>
                </div>
                <!-- /.box -->
                <div class="col-md-6">
                  <!-- Horizontal Form -->
                  <div class="box box-info">
                    <div class="box-header with-border">
                      <h3 class="box-title">Modify Doctor Details</h3>
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
                      <label for="" class="col-sm-3 control-label">Name</label>
                      <div class="col-sm-8">
                        <input type="text" class="form-control disabledboxes" name="name" placeholder="Enter Name" required>
                      </div>
                    </div>
					 <div class="form-group">
                      <label for="" class="col-sm-3 control-label">Email</label>
                      <div class="col-sm-8">
                        <input type="email" class="form-control disabledboxes" name="email" placeholder="Enter Email" required>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="" class="col-sm-3 control-label">Sex</label>
                      <div class="col-sm-8">
                        <div class="checkbox">
                          <label>
                            <input type="checkbox" name="gender" value="male" >
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
                      <label for="" class="col-sm-3 control-label">Age</label>
                      <div class="col-sm-8">
                        <input type="text" class="form-control disabledboxes" name="age" placeholder="Enter Age" required> 
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="" class="col-sm-3 control-label">Address</label>
                      <div class="col-sm-8">
                        <input type="text" class="form-control disabledboxes" name="address" placeholder="Enter Address" required>
                      </div>
                    </div>
                     <div class="form-group">
                      <label for="" class="col-sm-3 control-label">City</label>
                      <div class="col-sm-8">
                        <input type="text" class="form-control disabledboxes" name="city" placeholder="Enter City" required>
                      </div>
                    </div>
                     <div class="form-group">
                      <label for="" class="col-sm-3 control-label">Pincode</label>
                      <div class="col-sm-8">
                        <input type="text" class="form-control disabledboxes" name="pincode" placeholder="Enter Pincode" required>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="" class="col-sm-3 control-label">Phone Number</label>
                      <div class="col-sm-8">
                        <input type="text" class="form-control disabledboxes" name="contactNumber" placeholder="Enter Phone Number" required>
                      </div>
                    </div>
                     <div class="form-group">
                      <label for="" class="col-sm-3 control-label">Qualification</label>
                      <div class="col-sm-8">
                        <input type="text" class="form-control disabledboxes" name="qualification" placeholder="Enter Qualification " required>
                      </div>
                    </div>
                   
                  </div>
                      <!-- /.box-body -->
                      <div class="box-footer">
                        <button type="submit" class="btn btn-success" id="button1">Modify Doctor Details</button>
                      </div>
                      <!-- /.box-footer -->
                    </form>
                  </div>
                  </div>
        </div> 
        <div class="row">
          <div class="col-md-6">
              <!-- Horizontal Form -->
              <div class="box box-info">
                <div class="box-header with-border">
                  <h3 class="box-title">Add New Test</h3>
                </div>
                <!-- /.box-header -->
                <!-- form start -->
                 <c:if test="${testmsg=='sucess'}">
                      <center> <span style="color:green">Test Added Sucessfully!</span></center>
                      </c:if>
                      <c:if test="${testmsg=='error'}">
                      <center> <span style="color:red">Test Already Exist!</span></center>
                      </c:if>
                <form class="form-horizontal" action="addTest" method="post">
                  <div class="box-body">
                      <div class="form-group">
                          <label for="" class="col-sm-3 control-label">List of Test</label>
                          <div class="col-sm-8">
                            <!-- <input type="text" class="form-control disabledboxes" id="assignedDoctor" placeholder="ABC"> -->
                            <select name="testCategory" class="form-control select2 select2-hidden-accessible" style="width: 100%;" tabindex="-1" aria-hidden="true">
                                  <option   value="Sonography">Sonography</option>
                                  <option  value="X-ray">X-ray</option>
                                  <option  value="Echo3">Echo3</option>
                                </select>
                          </div>
                        </div>
                  <!-- <div class="form-group">
                    <label for="" class="col-sm-3 control-label">Name</label>
                    <div class="col-sm-8">
                      <input type="email" class="form-control disabledboxes" id="emailId" placeholder="Enter name">
                    </div>
                  </div> -->
                  <div class="form-group">
                    <label for="" class="col-sm-3 control-label">Rate</label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control disabledboxes" name="rate" placeholder="Enter rate" required>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="" class="col-sm-3 control-label">Doctor</label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control disabledboxes" name="doctorName" placeholder="Enter doctor name" required>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="" class="col-sm-3 control-label">Percentage %</label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control disabledboxes" name="doctorpercentage" placeholder="Enter percentage" required>
                    </div>
                  </div>
                  
                 
                </div>
                
                  <!-- /.box-body -->
                  <div class="box-footer">
                    <button type="submit" class="btn btn-success" id="button1">Add Test</button>
                  </div>
                  <!-- /.box-footer -->
                </form>
              </div>
              </div>
              <div class="col-md-6">
                  <!-- Horizontal Form -->
                  <div class="box box-info">
                    <div class="box-header with-border">
                      <h3 class="box-title">Modify Test</h3>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                   <c:if test="${testmsg1=='sucess'}">
                      <center> <span style="color:green">Test Updated Sucessfully!</span></center>
                      </c:if>
                      <c:if test="${testmsg1=='error'}">
                      <center> <span style="color:red">Test does not Exist!</span></center>
                      </c:if>
                    <form class="form-horizontal" action="editTest" method="post">
                  <div class="box-body">
                      <div class="form-group">
                          <label for="" class="col-sm-3 control-label">List of Test</label>
                          <div class="col-sm-8">
                            <!-- <input type="text" class="form-control disabledboxes" id="assignedDoctor" placeholder="ABC"> -->
                            <select name="testCategory" class="form-control select2 select2-hidden-accessible" style="width: 100%;" tabindex="-1" aria-hidden="true">
                                  <option   value="Sonography">Sonography</option>
                                  <option  value="X-ray">X-ray</option>
                                  <option  value="Echo3">Echo3</option>
                                </select>
                          </div>
                        </div>
                  <!-- <div class="form-group">
                    <label for="" class="col-sm-3 control-label">Name</label>
                    <div class="col-sm-8">
                      <input type="email" class="form-control disabledboxes" id="emailId" placeholder="Enter name">
                    </div>
                  </div> -->
                  <div class="form-group">
                    <label for="" class="col-sm-3 control-label">Rate</label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control disabledboxes" name="rate" placeholder="Enter rate" required>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="" class="col-sm-3 control-label">Doctor</label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control disabledboxes" name="doctorName" placeholder="Enter doctor name" required>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="" class="col-sm-3 control-label">Percentage %</label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control disabledboxes" name="doctorpercentage" placeholder="Enter percentage" required>
                    </div>
                  </div>
                  
                 
                </div>
                    
                      <!-- /.box-body -->
                      <div class="box-footer">
                        <button type="submit" class="btn btn-success" id="button1">Modify Test</button>
                      </div>
                      <!-- /.box-footer -->
                    </form>
                  </div>
                  </div>
            <!-- /. tools -->
          </div>
      </section>
    <!-- Main content -->
    <!-- <section class="content"> -->
      <!-- Info boxes -->
<!--       
    </section> -->
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="../../js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="../../js/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../../js/adminlte.min.js"></script>
<!-- Sparkline -->
<!-- <script src="../../js/jquery.sparkline.min.js"></script>
<!-- SlimScroll -->
 <script src="../../js/jquery.slimscroll.min.js"></script> 
<!-- ChartJS -->
 <script src="../../js/Chart.js"></script> 
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
 <script src="../../js/dashboard2.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../js/demo.js"></script>
</body>
<script>
/* $(document).ready(function(){
	$(".requireFld").hide();
})

$("#addUserForm").submit(function() {
	alert("hello");
    if (validationIsTrue()) {
      return false;
    }
    else {
      return false;
    }
  });
  
  function validationIsTrue(){
	  var flag = true;
		if ($('#firstname').val().trim() == '') {
			$("#firstname1error").fadeIn();
			flag = false;
		}
	  } */
/* function submitUser(){
	debugger;
	alert('hello');
	 var dataString=JSON.stringify(createJson());
	 $.ajax({
		type :'POST',
	    crossDomain: true,
		dataType : 'json',
		contentType : "application/json",
	    url:'saveUser',
	    data: dataString,
	    success: function (response) {
		    debugger;
		    alert("sucess");
           location.href="/adminpage"
		    } 
		});
}
function createJson(){
	var obj={
			"roles":[{
				"role":$( "#role1 option:selected" ).text()
				}],
			"email":$('#emailId1').val(),
			"password":$('#password1').val(),
			"name":$('#firstname1').val(),
			"lastName":$('#lastname1').val()
			}
	return obj;
} */
</script>
</html>
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
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Admin</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
            <ul class="treeview-menu">
                <li><a href="login"><i class="fa fa-circle-o"></i>User</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i>Doctor</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i>Test</a></li>
                 <li><a href="#"><i class="fa fa-circle-o"></i>Template</a></li>
              
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
                  </tr>
                </thead>
                <tbody>
               <c:forEach items="${list}" var="userList" varStatus="loop">
                <tr>
                    <td>${loop.index+1}</td>
                    <td>${userList.firstName}</td>
                    <td>${userList.lastName}</td>
                    <td>${userList.email}</td>
                    <c:forEach items="${userList.roles}" var="roles">
                      <td>${roles.role}</td>
                     </c:forEach>
                    <td>
                      <div class="">
                      <button onclick="edituser('${userList.email}')" class="btn btn-success"><i class="fa fa-pencil"></i></button> 
                        <!-- <a href="edituser" class="btn btn-social-icon btn-success"><i class="fa fa-pencil"></i></a> -->
                        <!--  <button type="button" class="btn btn-success">
                          <a href="create-new-reciept.html" style="text-decoration:none;color:#fff;">New Receipt</a>
                      </button> -->
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

