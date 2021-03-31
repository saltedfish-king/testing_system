<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>考试科目选择页面</title>
</head>
<body>
<form action="createExam">
	<input type="hidden" name="studentId" value="${student.id }">
	试卷名称：<input type="text" name="examName">
	试卷科目：<select name="examSubject">
				<option value="0">语文</option>
				<option value="1">数学</option>
				<option value="2">英语</option>
			 </select>
	<input type="submit" value="生成试卷">
</form>
</body>
</html>