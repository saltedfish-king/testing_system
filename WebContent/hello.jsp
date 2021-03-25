<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="getStu?id=1">查看自己的信息</a>
<form action="insertTopic">
	name:<input type="text" name="topicAnswer"><br/>
	msg:<input type="text" name="topicMsg"><br/>
	level:<input type="text" name="topicLevel"><br/>
	kind:<input type="text" name="topicKind"><br/>
	subject:<input type="text" name="subjects"><br/>
	<input type="submit" value="添加题目信息">
</form>
</body>
</html>