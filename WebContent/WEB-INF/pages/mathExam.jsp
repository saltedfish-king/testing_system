<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>数学考试</title>
</head>
<body>
${exam.examName }<br>
选择题：<br>
--------------------------------------<br>
<form action="submitExam" id="subForm" method="post">
	<input type="submit" value="交卷" id="sub">
	<input type="hidden" name="subjects" value="${exam.examSubject }">
	<input type="hidden" name="examId" value="${exam.eid }">
	<table id="chooseTable">
		<tr><td colspan="2">1.${exam.chooseTopics[0].topicMsg }</td></tr>
		<tr>
			<td><input type="radio" name="choose1" value="${exam.chooseTopics[0].chooseA }"></td>
			<td>A.${exam.chooseTopics[0].chooseA }</td>
		</tr>
		<tr>
			<td><input type="radio" name="choose1" value="${exam.chooseTopics[0].chooseB }"></td>
			<td>B.${exam.chooseTopics[0].chooseB }</td>
		</tr>
		<tr>
			<td><input type="radio" name="choose1" value="${exam.chooseTopics[0].chooseC }"></td>
			<td>C.${exam.chooseTopics[0].chooseC }</td>
		</tr>
		<tr>
			<td><input type="radio" name="choose1" value="${exam.chooseTopics[0].chooseD }"></td>
			<td>D.${exam.chooseTopics[0].chooseD }</td>
		</tr>
		<tr><td colspan="2">2.${exam.chooseTopics[1].topicMsg }</td></tr>
		<tr>
			<td><input type="radio" name="choose2" value="${exam.chooseTopics[1].chooseA }"></td>
			<td>A.${exam.chooseTopics[1].chooseA }</td>
		</tr>
		<tr>
			<td><input type="radio" name="choose2" value="${exam.chooseTopics[1].chooseB }"></td>
			<td>B.${exam.chooseTopics[1].chooseB }</td>
		</tr>
		<tr>
			<td><input type="radio" name="choose2" value="${exam.chooseTopics[1].chooseC }"></td>
			<td>C.${exam.chooseTopics[1].chooseC }</td>
		</tr>
		<tr>
			<td><input type="radio" name="choose2" value="${exam.chooseTopics[1].chooseD }"></td>
			<td>D.${exam.chooseTopics[1].chooseD }</td>
		</tr>
		<tr><td colspan="2">3.${exam.chooseTopics[2].topicMsg }</td></tr>
		<tr>
			<td><input type="radio" name="choose3" value="${exam.chooseTopics[2].chooseA }"></td>
			<td>A.${exam.chooseTopics[2].chooseA }</td>
		</tr>
		<tr>
			<td><input type="radio" name="choose3" value="${exam.chooseTopics[2].chooseB }"></td>
			<td>B.${exam.chooseTopics[2].chooseB }</td>
		</tr>
		<tr>
			<td><input type="radio" name="choose3" value="${exam.chooseTopics[2].chooseC }"></td>
			<td>C.${exam.chooseTopics[2].chooseC }</td>
		</tr>
		<tr>
			<td><input type="radio" name="choose3" value="${exam.chooseTopics[2].chooseD }"></td>
			<td>D.${exam.chooseTopics[2].chooseD }</td>
		</tr>
		<tr><td colspan="2">4.${exam.chooseTopics[3].topicMsg }</td></tr>
		<tr>
			<td><input type="radio" name="choose4" value="${exam.chooseTopics[3].chooseA }"></td>
			<td>A.${exam.chooseTopics[3].chooseA }</td>
		</tr>
		<tr>
			<td><input type="radio" name="choose4" value="${exam.chooseTopics[3].chooseB }"></td>
			<td>B.${exam.chooseTopics[3].chooseB }</td>
		</tr>
		<tr>
			<td><input type="radio" name="choose4" value="${exam.chooseTopics[3].chooseC }"></td>
			<td>C.${exam.chooseTopics[3].chooseC }</td>
		</tr>
		<tr>
			<td><input type="radio" name="choose4" value="${exam.chooseTopics[3].chooseD }"></td>
			<td>D.${exam.chooseTopics[3].chooseD }</td>
		</tr>
		<tr><td colspan="2">5.${exam.chooseTopics[4].topicMsg }</td></tr>
		<tr>
			<td><input type="radio" name="choose5" value="${exam.chooseTopics[4].chooseA }"></td>
			<td>A.${exam.chooseTopics[4].chooseA }</td>
		</tr>
		<tr>
			<td><input type="radio" name="choose5" value="${exam.chooseTopics[4].chooseB }"></td>
			<td>B.${exam.chooseTopics[4].chooseB }</td>
		</tr>
		<tr>
			<td><input type="radio" name="choose5" value="${exam.chooseTopics[4].chooseC }"></td>
			<td>C.${exam.chooseTopics[4].chooseC }</td>
		</tr>
		<tr>
			<td><input type="radio" name="choose5" value="${exam.chooseTopics[4].chooseD }"></td>
			<td>D.${exam.chooseTopics[4].chooseD }</td>
		</tr>
		<tr><td colspan="2">6.${exam.chooseTopics[5].topicMsg }</td></tr>
		<tr>
			<td><input type="radio" name="choose6" value="${exam.chooseTopics[5].chooseA }"></td>
			<td>A.${exam.chooseTopics[5].chooseA }</td>
		</tr>
		<tr>
			<td><input type="radio" name="choose6" value="${exam.chooseTopics[5].chooseB }"></td>
			<td>B.${exam.chooseTopics[5].chooseB }</td>
		</tr>
		<tr>
			<td><input type="radio" name="choose6" value="${exam.chooseTopics[5].chooseC }"></td>
			<td>C.${exam.chooseTopics[5].chooseC }</td>
		</tr>
		<tr>
			<td><input type="radio" name="choose6" value="${exam.chooseTopics[5].chooseD }"></td>
			<td>D.${exam.chooseTopics[5].chooseD }</td>
		</tr>
		<tr><td colspan="2">7.${exam.chooseTopics[6].topicMsg }</td></tr>
		<tr>
			<td><input type="radio" name="choose7" value="${exam.chooseTopics[6].chooseA }"></td>
			<td>A.${exam.chooseTopics[6].chooseA }</td>
		</tr>
		<tr>
			<td><input type="radio" name="choose7" value="${exam.chooseTopics[6].chooseB }"></td>
			<td>B.${exam.chooseTopics[6].chooseB }</td>
		</tr>
		<tr>
			<td><input type="radio" name="choose7" value="${exam.chooseTopics[6].chooseC }"></td>
			<td>C.${exam.chooseTopics[6].chooseC }</td>
		</tr>
		<tr>
			<td><input type="radio" name="choose7" value="${exam.chooseTopics[6].chooseD }"></td>
			<td>D.${exam.chooseTopics[6].chooseD }</td>
		</tr>
		<tr><td colspan="2">8.${exam.chooseTopics[7].topicMsg }</td></tr>
		<tr>
			<td><input type="radio" name="choose8" value="${exam.chooseTopics[7].chooseA }"></td>
			<td>A.${exam.chooseTopics[7].chooseA }</td>
		</tr>
		<tr>
			<td><input type="radio" name="choose8" value="${exam.chooseTopics[7].chooseB }"></td>
			<td>B.${exam.chooseTopics[7].chooseB }</td>
		</tr>
		<tr>
			<td><input type="radio" name="choose8" value="${exam.chooseTopics[7].chooseC }"></td>
			<td>C.${exam.chooseTopics[7].chooseC }</td>
		</tr>
		<tr>
			<td><input type="radio" name="choose8" value="${exam.chooseTopics[7].chooseD }"></td>
			<td>D.${exam.chooseTopics[7].chooseD }</td>
		</tr>
	</table>
	填空题<br>
--------------------------------------<br>
	<table align="center" id="fullTable">
		<c:forEach items="${exam.fullTopics }" var="full">
			<tr><td>${full.topicMsg }</td>
				<td><input type="text" name="stuAnswer"></td>
			</tr>
		</c:forEach>
	</table>
</form>
</body>
</html>