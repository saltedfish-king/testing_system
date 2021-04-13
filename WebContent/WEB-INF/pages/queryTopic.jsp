<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>发布题目</title>
</head>
<body>
<table>
	<tr>
		<td>题目内容</td>
		<td>题目选项A</td>
		<td>题目选项B</td>
		<td>题目选项C</td>
		<td>题目选项D</td>
		<td>题目答案</td>
		<td>修改题目</td>
	</tr>
	<c:forEach items="${chooses }" var="choose">
		<tr>
			<td>${choose.topicMsg }</td>
			<td>${choose.chooseA }</td>
			<td>${choose.chooseB }</td>
			<td>${choose.chooseC }</td>
			<td>${choose.chooseD }</td>
			<td>${choose.topicAnswer }</td>
			<td><input type="button" id="${choose.cid }" value="修改" onclick="changeChoose(this)"> </td>
		</tr>
	</c:forEach>
</table>
<table>
	<tr>
		<td>题目内容</td>
		<td>题目答案</td>
		<td>修改题目</td>
	</tr>
	<c:forEach items="${fulls }" var="full">
		<tr>
		<td>${full.topicMsg }</td>
		<td>${full.topicAnswer }</td>
		<td><input type="button" id="${full.fid }" value="修改" onclick="changeFull(this)"> </td>
	</tr>
	</c:forEach>
</table>
</body>
<script type="text/javascript">
	function changeChoose(e) {
		var cid = e.id;
		window.location.href = "changeChoose?cid="+cid+"";
	}
	function changeFull(e) {
		var fid = e.id;
		window.location.href = "changeFull?fid="+fid+"";
	}
</script>
</html>