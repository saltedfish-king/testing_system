<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改选择题</title>
</head>
<body>
<form action="updateChoose">
	<input type="hidden" name="cid" value="${choose.cid }">
	<input type="hidden" name="teacherId" value="${choose.teacherId }">
	题目：<input type="text" name="topicMsg" value="${choose.topicMsg }"><br>
	答案：<input type="text" name="topicAnswer" value="${choose.topicAnswer }"><br>
	A：<input type="text" name="chooseA" value="${choose.chooseA }"><br>
	B:<input type="text" name="chooseB" value="${choose.chooseB }"><br>
	C:<input type="text" name="chooseC" value="${choose.chooseC }"><br>
	D:<input type="text" name="chooseD" value="${choose.chooseD }"><br>
	<input type="submit" value="修改">
</form>
</body>
</html>