<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>成绩单</title>
</head>
<body>
<table>
		<tr>
			<td>试卷名称</td>
			<td>试卷科目</td>
			<td>成绩</td>
			<td>查看试卷</td>
		</tr>
	<c:forEach items="${exams }" var="exam">
		<tr>
			<td>${exam.examName }</td>
			<c:if test="${exam.examSubject == 0 }">
			<td>语文</td>
			</c:if>
			<c:if test="${exam.examSubject == 1 }">
			<td>数学</td>
			</c:if>
			<c:if test="${exam.examSubject == 2 }">
			<td>英语</td>
			</c:if>
			<td>${exam.score }</td>
			<td><input type="button" value="查看"></td>
		</tr>
	</c:forEach>
</table>
</body>
</html>