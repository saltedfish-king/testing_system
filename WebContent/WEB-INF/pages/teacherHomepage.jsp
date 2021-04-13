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

--------------------------------<br>
<a href="insertChoose.jsp">添加选择题</a>
<a href="insertFull.jsp">添加填空题</a>
<a href="insertLarge.jsp">添加主观题</a>
<a href="queryTopic?tid=${teacher.tid }">查看自己发布的题目</a>
</body>
</html>