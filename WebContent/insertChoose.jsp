<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加选择题</title>
</head>
<body>
<form action="insertChoose">
	<input type="hidden" name="teacherId" value="${teacher.tid }">
	题目：<input type="text" name="topicMsg"><br>
	答案：<input type="text" name="topicAnswer"><br>
	A：<input type="text" name="chooseA"><br>
	B:<input type="text" name="chooseB"><br>
	C:<input type="text" name="chooseC"><br>
	D:<input type="text" name="chooseD"><br>
	<input type="hidden" name="subjects" value="${teacher.subjects }"><br>
	<input type="submit" id="submit" value="添加选择题"><br>
</form>
</body>
</html>