<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生登录</title>
<link rel="stylesheet" href="./css/login.css" type="text/css">
<script type="text/javascript">
	window.onload = function getMsg() {
		var query = window.location.search.substring(1);
		var parameters = query.split("&");
		for(var i=0;i<parameters.length;i++){
			var msg = parameters[i].split("=");
			if(msg[0] == "msg"){
				if(msg[1] == 1){
					alert("学号不存在！");
				}
				else if(msg[1] == 2){
					alert("密码错误！");
				}
			}
		}
	}
</script>
</head>
<body>
<!-- <form action="stuLogin">
	学号:<input type="text" name="sid"/><br>
	密码:<input type="password" name="password"/><br>
	<input type="submit" value="登录"/>
</form> -->
<div class="login-box">
  <h2>Login</h2>
  <form action="stuLogin">
    <div class="user-box">
      <input type="text" name="sid" required="required">
      <label>学号</label>
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