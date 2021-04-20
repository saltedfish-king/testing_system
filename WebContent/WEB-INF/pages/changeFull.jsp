<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改填空题</title>
</head>
<body>
<form action="updateFull">
	<input type="hidden" name="fid" value="${full.fid }">
		<input type="hidden" name="teacherId" value="${full.teacherId }">
	题目：<input type="text" name="topicMsg" value="${full.topicMsg }"><br>
	答案：<input type="text" name="topicAnswer" value="${full.topicAnswer }"><br>
	<input type="submit" value="修改">
</form>
</body>
</html>