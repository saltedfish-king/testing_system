<%@page import="java.io.Console"%>
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
<title>界面首页</title>
<base href="<%=basePath%>"> 
<link rel="stylesheet" href="<%=basePath%>/BootStrap/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=basePath%>/css/Homepage.css">
<script type="text/javascript" src="<%=basePath%>/scripts/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/BootStrap/js/bootstrap.min.js"></script>

</head>
<body>
<div id="viewport">
  <!-- SideBar -->
  <div id="sidebar">
    <header>
      <a>${student.stuName }</a>
    </header>
    <ul class="nav">
      <li>
        <a onclick="changeStu()">
          <i class="zmdi zmdi-widgets"></i> 修改个人信息
        </a>
      </li>
      <li onclick="getScore()">
        <a>
          <i class="zmdi zmdi-view-dashboard"></i> 查看试卷
        </a>
      </li>
      <li>
        <a onclick="toExam()">
          <i class="zmdi zmdi-link"></i> 进入考试
        </a>
      </li>
      <!-- 
      <li>
        <a href="#">
          <i class="zmdi zmdi-calendar"></i> Events
        </a>
      </li>
      <li>
        <a href="#">
          <i class="zmdi zmdi-info-outline"></i> About
        </a>
      </li>
      <li>
        <a href="#">
          <i class="zmdi zmdi-settings"></i> Services
        </a>
      </li>
      <li>
        <a href="#">
          <i class="zmdi zmdi-comment-more"></i> Contact
        </a>
      </li> -->
    </ul>
  </div>
  
  <!-- Content -->
  <div id="content">
    <nav class="navbar navbar-default">
      <div class="container-fluid">
        <ul class="nav navbar-nav navbar-right">
          <li>
            <a href="#"><i class="zmdi zmdi-notifications text-danger"></i>
            </a>
          </li>
          <li><a>学生界面</a></li>
        </ul>
      </div>
    </nav>
    <div class="container-fluid">
    
     <!-- 学生修改密码 -->
     <div class="menu" style="display: none" id="changeStu">
     	<div class="row">
     		<div class="col-md-4 col-md-offset-4">
     			<form action="changeStu" role="form">
				<div class="form-group">
					<label>学号:</label>
					${student.sid }
				</div>
				<div class="form-group">
					<label>学生姓名:</label>
					${student.stuName }
				</div>
				<div class="form-group">
					<label>密码:</label>
					<input type="text" class="form-control" name="password" placeholder="${student.password }"><br>
				</div>
					<input type="submit" class="btn btn-info text-center" id="submit" value="修改"><br>
				</form>
     		</div>
     	</div>
     </div>
    
     <!-- 试卷成绩单 -->
     <div class="menu" id="grade" style="display:none">
		<table class="table table-striped table-hover table-bordered text-center">
				<tr>
					<th class="text-center">试卷名称</th>
					<th class="text-center">试卷科目</th>
					<th class="text-center">成绩</th>
					<th class="text-center">查看试卷</th>
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
					<td><input type="button" class="btn btn-info" id="${exam.eid }" value="查看" onclick="getEid(this)"></td>
				</tr>
			</c:forEach>
		</table>
      </div>
     <div class="row">
     	<div class="col-md-4 col-md-offset-4 text-center">
	      <!-- 选择考试科目 -->
		  <div class="menu" style="display: none" id="exam">
			<form action="createExam" role="form">
				<div class="form-group">
					<input type="hidden" name="studentId" value="${student.sid }">
					<label for="examName">试卷名称：</label>
					<input type="text" class="form-control" id="examName" name="examName"> 
				</div>
				<div class="form-group">
					<label for="examSubject">试卷科目：</label>
					<div class="row">
						<div class="col-md-4 col-md-offset-4 text-center">
						<select class="form-control" id="examSubject" name="examSubject">
						<option value="0">语文</option>
						<option value="1">数学</option>
						<option value="2">英语</option>
					</select> 
						</div>
					</div>
				</div>
				<input type="submit" class="btn btn-success" value="生成试卷">
			</form>
		  </div>
     	</div>
     </div>
     
	</div>
  </div>
</div>
</body>
<script type="text/javascript">
	function getEid(e){
		var eid = e.id;
		window.location.href = "getExamByScore?eid="+eid+"";
	}
	function getScore(){
		$.ajax({
			type : 'POST',  
	        contentType : 'application/json',  
	        url : 'getScore',  
	        dataType : 'json',  
	        success : function(data) {  
	        }
		});
		$(".menu").hide();
		$("#grade").css('display','block');
	}
	function toExam(){
		$(".menu").hide();
		$("#exam").css('display','block');
	}
	function changeStu(){
		$(".menu").hide();
		$("#changeStu").show();
	}
</script>
</html>