<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教师登录</title>
<link rel="stylesheet" href="./css/login.css" type="text/css">
<script type="text/javascript" src="scripts/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	function login() {
		var query = window.location.search.substring(1);
		var parameters = query.split("&");
		console.log(parameters);
		for(var i=0;i<parameters.length;i++){
			var msg = parameters[i].split("=");
			if(msg[0] == "msg"){
				if(msg[1] == 1){
					alert("工号不存在！");
				}
				else if(msg[1] == 2){
					alert("密码错误！");
				}
			}
		}
	}
	login();
	});
</script>
</head>
<body>
<!-- <form action="teacherLogin">
	教师工号:<input type="text" name="tid" id="tid"/><br>
	密码:<input type="password" name="password" id="password"/><br>
	<input type="submit" value="登录" id="button"/>
</form> -->
<div class="login-box">
  <h2>Login</h2>
  <form action="teacherLogin">
    <div class="user-box">
      <input type="text" name="tid" required="required">
      <label>教师工号</label>
    </div>
    <div class="user-box">
      <input type="password" name="password" required="required">
      <label>密码</label>
    </div>
    
    <div id="sub">
    <input type="submit" id="submit" value="登录">
    </div>
  </form>
</div>
</body>
</html>