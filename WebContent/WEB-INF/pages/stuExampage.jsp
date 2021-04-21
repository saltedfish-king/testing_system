<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>考试答案查询</title>
<base href="<%=basePath%>"> 
<link rel="stylesheet" href="<%=basePath%>/BootStrap/css/bootstrap.min.css">
<script type="text/javascript" src="<%=basePath%>/scripts/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/BootStrap/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-md-2">
			<h4 class="text-primary">考试成绩：${exam.score }</h4>
		</div>
		<div class="col-md-2 col-md-offset-8 text-right" style="margin-top: 8px;margin-bottom: 5px">
			<a href="backHome?sid=${exam.studentId }"><span class="glyphicon glyphicon-home" style="font-size: 20px"></span>返回首页</a>
		</div>
	</div>
	<table id="chooseTable" class="table table-bordered table-condensed">
			<tr>
				<td>1.${exam.chooseTopics[0].topicMsg }</td>
				<td>你的答案：${Answer.choose1 }</td>
				<td>正确答案：${exam.chooseTopics[0].topicAnswer }</td>
			</tr>
			<tr>
				<td colspan="3">A.${exam.chooseTopics[0].chooseA }</td>
			</tr>
			<tr>
				<td colspan="3">B.${exam.chooseTopics[0].chooseB }</td>
			</tr>
			<tr>
				<td colspan="3">C.${exam.chooseTopics[0].chooseC }</td>
			</tr>
			<tr>
				<td colspan="3">D.${exam.chooseTopics[0].chooseD }</td>
			</tr>
			<tr>
				<td>2.${exam.chooseTopics[1].topicMsg }</td>
				<td>你的答案：${Answer.choose2 }</td>
				<td>正确答案：${exam.chooseTopics[1].topicAnswer }</td>
			</tr>
			<tr>
				<td colspan="3">${exam.chooseTopics[1].chooseA }</td>
			</tr>
			<tr>
				<td colspan="3">${exam.chooseTopics[1].chooseB }</td>
			</tr>
			<tr>
				<td colspan="3">${exam.chooseTopics[1].chooseC }</td>
			</tr>
			<tr>
				<td colspan="3">${exam.chooseTopics[1].chooseD }</td>
			</tr>
			<tr>
				<td>3.${exam.chooseTopics[2].topicMsg }</td>
				<td>你的答案：${Answer.choose3 }</td>
				<td>正确答案：${exam.chooseTopics[2].topicAnswer }</td>
			</tr>
			<tr>
				<td colspan="3">A.${exam.chooseTopics[2].chooseA }</td>
			</tr>
			<tr>
				<td colspan="3">B.${exam.chooseTopics[2].chooseB }</td>
			</tr>
			<tr>
				<td colspan="3">C.${exam.chooseTopics[2].chooseC }</td>
			</tr>
			<tr>
				<td colspan="3">D.${exam.chooseTopics[2].chooseD }</td>
			</tr>
			<tr>
				<td>4.${exam.chooseTopics[3].topicMsg }</td>
				<td>你的答案：${Answer.choose4 }</td>
				<td>正确答案：${exam.chooseTopics[3].topicAnswer }</td>
			</tr>
			<tr>
				<td colspan="3">A.${exam.chooseTopics[3].chooseA }</td>
			</tr>
			<tr>
				<td colspan="3">B.${exam.chooseTopics[3].chooseB }</td>
			</tr>
			<tr>
				<td colspan="3">C.${exam.chooseTopics[3].chooseC }</td>
			</tr>
			<tr>
				<td colspan="3">D.${exam.chooseTopics[3].chooseD }</td>
			</tr>
			<tr>
				<td>5.${exam.chooseTopics[4].topicMsg }</td>
				<td>你的答案：${Answer.choose5 }</td>
				<td>正确答案：${exam.chooseTopics[4].topicAnswer }</td>
			</tr>
			<tr>
				<td colspan="3">A.${exam.chooseTopics[4].chooseA }</td>
			</tr>
			<tr>
				<td colspan="3">B.${exam.chooseTopics[4].chooseB }</td>
			</tr>
			<tr>
				<td colspan="3">C.${exam.chooseTopics[4].chooseC }</td>
			</tr>
			<tr>
				<td colspan="3">D.${exam.chooseTopics[4].chooseD }</td>
			</tr>
			<tr>
				<td>6.${exam.chooseTopics[5].topicMsg }</td>
				<td>你的答案：${Answer.choose6 }</td>
				<td>正确答案：${exam.chooseTopics[5].topicAnswer }</td>
			</tr>
			<tr>
				<td colspan="3">A.${exam.chooseTopics[5].chooseA }</td>
			</tr>
			<tr>
				<td colspan="3">B.${exam.chooseTopics[5].chooseB }</td>
			</tr>
			<tr>
				<td colspan="3">C.${exam.chooseTopics[5].chooseC }</td>
			</tr>
			<tr>
				<td colspan="3">D.${exam.chooseTopics[5].chooseD }</td>
			</tr>
			<tr>
				<td>7.${exam.chooseTopics[6].topicMsg }</td>
				<td>你的答案：${Answer.choose7 }</td>
				<td>正确答案：${exam.chooseTopics[6].topicAnswer }</td>
			</tr>
			<tr>
				<td colspan="3">A.${exam.chooseTopics[6].chooseA }</td>
			</tr>
			<tr>
				<td colspan="3">B.${exam.chooseTopics[6].chooseB }</td>
			</tr>
			<tr>
				<td colspan="3">C.${exam.chooseTopics[6].chooseC }</td>
			</tr>
			<tr>
				<td colspan="3">D.${exam.chooseTopics[6].chooseD }</td>
			</tr>
			<tr>
				<td>8.${exam.chooseTopics[7].topicMsg }</td>
				<td>你的答案：${Answer.choose8 }</td>
				<td>正确答案：${exam.chooseTopics[7].topicAnswer }</td>
			</tr>
			<tr>
				<td colspan="3">A.${exam.chooseTopics[7].chooseA }</td>
			</tr>
			<tr>
				<td colspan="3">B.${exam.chooseTopics[7].chooseB }</td>
			</tr>
			<tr>
				<td colspan="3">C.${exam.chooseTopics[7].chooseC }</td>
			</tr>
			<tr>
				<td colspan="3">D.${exam.chooseTopics[7].chooseD }</td>
			</tr>
		</table>
		填空题<br>
	--------------------------------------<br>
		<table class="table text-center table-bordered table-condensed" id="fullTable">
				<tr><td>${exam.fullTopics[0].topicMsg }</td>
					<td>你的答案：${Answer.stuAnswer[0] }</td>
					<td>正确答案：${exam.fullTopics[0].topicAnswer }</td>
				</tr>
				<tr><td>${exam.fullTopics[1].topicMsg }</td>
					<td>你的答案：${Answer.stuAnswer[1] }</td>
					<td>正确答案：${exam.fullTopics[1].topicAnswer }</td>
				</tr>
				<tr><td>${exam.fullTopics[2].topicMsg }</td>
					<td>你的答案：${Answer.stuAnswer[2] }</td>
					<td>正确答案：${exam.fullTopics[2].topicAnswer }</td>
				</tr>
				<tr><td>${exam.fullTopics[3].topicMsg }</td>
					<td>你的答案：${Answer.stuAnswer[3] }</td>
					<td>正确答案：${exam.fullTopics[3].topicAnswer }</td>
				</tr>
				<tr><td>${exam.fullTopics[4].topicMsg }</td>
					<td>你的答案：${Answer.stuAnswer[4] }</td>
					<td>正确答案：${exam.fullTopics[4].topicAnswer }</td>
				</tr>
				<tr><td>${exam.fullTopics[5].topicMsg }</td>
					<td>你的答案：${Answer.stuAnswer[5] }</td>
					<td>正确答案：${exam.fullTopics[5].topicAnswer }</td>
				</tr>
		</table>
</div>
</body>
</html>