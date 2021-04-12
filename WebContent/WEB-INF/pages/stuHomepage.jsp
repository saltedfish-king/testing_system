<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生首页</title>
</head>
<body>
${student }
<a href="getScore?sid=${student.sid }">查看成绩（也可以查看试卷）</a>
<a href="examSubjects.jsp">进行考试</a>
</body>
</html>