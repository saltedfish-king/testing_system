<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>英语考试</title>
</head>
<body>
${exam.examName }<br>
选择题：<br>
--------------------------------------<br>
<form action="">
	<input type="submit" value="交卷">
	<input type="hidden" name="${exam.eid }">
	<table>
		<c:forEach items="${exam.chooseTopics }" var="choose">
			<tr><td colspan="2">${choose.topicMsg }</td></tr>
			<tr>
				<td><input type="radio" name="${choose.cid }" value="${choose.chooseA }"></td>
				<td>${choose.chooseA }</td>
			</tr>
			<tr>
				<td><input type="radio" name="${choose.cid }" value="${choose.chooseB }"></td>
				<td>${choose.chooseB }</td>
			</tr>
			<tr>
				<td><input type="radio" name="${choose.cid }" value="${choose.chooseC }"></td>
				<td>${choose.chooseC }</td>
			</tr>
			<tr>
				<td><input type="radio" name="${choose.cid }" value="${choose.chooseD }"></td>
				<td>${choose.chooseD }</td>
			</tr>
		</c:forEach>
	</table>
	填空题<br>
--------------------------------------<br>
	<table align="center">
		<c:forEach items="${exam.fullTopics }" var="full">
			<tr><td>${full.topicMsg }</td>
				<td><input type="text" name="stuAnswer"></td>
			</tr>
		</c:forEach>
	</table>
</form>
</body>
</html>