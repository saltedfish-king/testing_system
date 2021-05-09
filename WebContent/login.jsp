<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<link rel="stylesheet" href="<%=basePath%>/BootStrap/css/bootstrap.min.css">
<link rel="stylesheet" href="./css/loginCss.css">
<script type="text/javascript" src="./scripts/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
	$(function(){
	    $('.homepage').hide();
	    $('.box').delay(500).effect("bounce", { times: 8 }, 800);
	    $('.box').hide().slideDown(500);
	  
	});
	
	function stuLogin(){
		window.location.href = "stuLogin.jsp";
	}
	function teaLogin(){
		window.location.href = "teacherLogin.jsp";
	}
</script>
<body>
<div class="intro">
  <div class="black"></div>  
  <div class="white"></div>
  <div class="boxfather">
    <div class="box">
      <h1>WELCOME</h1>
      <button onclick="stuLogin()">学生登录</button>
      <button onclick="teaLogin()">教师登录</button>
    </div>
  </div>
  
</div>
</body>
</html>