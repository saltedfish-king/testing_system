<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教师首页</title>
<script type="text/javascript" src="scripts/jquery-3.1.1.min.js"></script>
<script type="text/javascript">

</script>
</head>
<body>
${teacher.tid }
<form action="insertChoose">
	<input type="hidden" name="teacherId" value="${teacher.tid }">
	题目：<input type="text" name="topicMsg"><br>
	答案：<input type="text" name="topicAnswer"><br>
	A：<input type="text" name="chooseA"><br>
	B:<input type="text" name="chooseB"><br>
	C:<input type="text" name="chooseC"><br>
	D:<input type="text" name="chooseD"><br>
	科目：<input type="text" name="subjects"><br>
	<input type="submit" id="submit" value="添加选择题"><br>
</form>
--------------------------------<br>
<a href="insertChoose.jsp">添加选择题</a>
<a href="insertFull.jsp">添加填空题</a>
<a href="insertLarge.jsp">添加主观题</a>
</body>
</html>