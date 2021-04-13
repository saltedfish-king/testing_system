<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生登录</title>
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
<form action="stuLogin">
	学号:<input type="text" name="sid"/><br>
	密码:<input type="password" name="password"/><br>
	<input type="submit" value="登录"/>
</form>
</body>
</html>