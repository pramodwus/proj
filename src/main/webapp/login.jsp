<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Buttons</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="<spring:url value="../../css/bootstrap.min.css"/>">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<spring:url value="../../css/font-awesome.min.css"/>">
  <!-- Ionicons -->
  <link rel="stylesheet" href="<spring:url value="../../css/ionicons.min.css"/>">
  <!-- Theme style -->
  <link rel="stylesheet" href="<spring:url value="../../css/AdminLTE.min.css"/>">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="<spring:url value="../../css/_all-skins.min.css"/>">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    <style>
        body, html {
            height: 100%;
            background-repeat: no-repeat;           
            background: #cfd8dc;
        }
        .dropdown-menu{
            width: 100%;
        }
        .card-container.card {
            max-width: 400px;
            padding: 40px 40px;
        }
        .btn {
            font-weight: 700;
            height: 36px;
            -moz-user-select: none;
            -webkit-user-select: none;
            user-select: none;
            cursor: default;
        }
        .card {
            background-color: #F7F7F7;
            padding: 20px 25px 30px;
            margin: 0 auto 25px;
            margin-top: 100px;
            -moz-border-radius: 2px;
            -webkit-border-radius: 2px;
            border-radius: 2px;
            -moz-box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
            -webkit-box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
            box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
        }
        .profile-img-card {
            width: 96px;
            height: 96px;
            margin: 0 auto 10px;
            display: block;
            -moz-border-radius: 50%;
            -webkit-border-radius: 50%;
            border-radius: 50%;
        }
        .profile-name-card {
            font-size: 16px;
            font-weight: bold;
            text-align: center;
            margin: 10px 0 0;
            min-height: 1em;
        }
        .reauth-email {
            display: block;
            color: #404040;
            line-height: 2;
            margin-bottom: 10px;
            font-size: 14px;
            text-align: center;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            -moz-box-sizing: border-box;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
        }
        .form-signin #inputEmail,
        .form-signin #inputPassword {
            direction: ltr;
            height: 44px;
            font-size: 16px;
        }
        .form-signin input[type=email],
        .form-signin input[type=password],
        .form-signin input[type=text],
        .form-signin button {
            width: 100%;
            display: block;
            margin-bottom: 10px;
            z-index: 1;
            position: relative;
            -moz-box-sizing: border-box;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
        }
        .form-signin .form-control:focus {
            border-color: rgb(104, 145, 162);
            outline: 0;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgb(104, 145, 162);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgb(104, 145, 162);
        }
        .btn.btn-signin{
            background-color: linear-gradient(rgb(104, 145, 162), rgb(12, 97, 33));
            padding: 0px;
            font-weight: 700;
            font-size: 14px;
            height: 36px;
            -moz-border-radius: 3px;
            -webkit-border-radius: 3px;
            border-radius: 3px;
            border: none;
            -o-transition: all 0.218s;
            -moz-transition: all 0.218s;
            -webkit-transition: all 0.218s;
            transition: all 0.218s;
            
        }
        .btn.btn-signin a{
            color:#fff;
            text-decoration: none;
        }
        .btn.btn-signin:hover,.btn.btn-signin:active,.btn.btn-signin:focus {
            background-color: rgb(12, 97, 33);
            color:#fff;
        }
        .forgot-password {
            color: rgb(104, 145, 162);
        }
        .forgot-password:hover,.forgot-password:active,.forgot-password:focus{
            color: rgb(12, 97, 33);
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="card card-container">
          
            <img id="profile-img" class="profile-img-card" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
            <p id="profile-name" class="profile-name-card"></p>
            <form class="form-signin" action="/login" method="post">
                <span id="reauth-email" class="reauth-email"></span>
                <input type="email" name="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
                <input type="password" name="password" id="inputPassword" class="form-control" placeholder="Password" required>
               <!--  <div class="input-group-btn">
                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="true">Roles
                      <span class="fa fa-caret-down"></span></button>
                    <ul class="dropdown-menu">
                      <li><a href="#">Front End Desk</a></li>
                      <li><a href="#">Lab Assistant</a></li>
                      <li><a href="#">Back Office</a></li>
                      <li><a href="#">Admin</a></li>
                      <li><a href="frontEnd">Front End Desk</a></li>
                      <li><a href="#">Lab Assistant</a></li>
                      <li><a href="#">Back Office</a></li>
                      <li><a href="#">Admin</a></li>
                    </ul>
                  </div>-->
                <div id="remember" class="checkbox" >
                    <label>
                        <input type="checkbox"> Remember me
                    </label>
                </div> 
                	<c:if test="${not empty sessionScope.message}">
					<span style="color: red"><c:out
							value="${sessionScope.message}" /></span>
					<c:remove var="message" scope="session" />
				</c:if>
                <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Sign in</button>
			
			
			</form>
            <a href="forgotpassword" class="forgot-password">
                Forgot the password?
            </a>
        </div>        
    </div>
    <!-- jQuery 3 -->
<script async="" src="//www.google-analytics.com/analytics.js"></script><script src="../../js/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="<spring:url value="../../js/bootstrap.min.js"/>"></script>
<!-- FastClick -->
<script src="<spring:url value="../../js/fastclick.js"/>"></script>
<!-- AdminLTE App -->
<script src="<spring:url value="../../js/adminlte.min.js"/>"></script>
<!-- AdminLTE for demo purposes -->
<script src="<spring:url value="../../js/demo.js"/>"></script>

</body>
</html>


