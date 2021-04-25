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
<title>教师界面</title>
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
      <a>${teacher.tName }</a>
    </header>
    <ul class="nav">
      <li>
        <a onclick="topicShow(event)">
          <i class="zmdi zmdi-view-dashboard"></i> 添加题目
          <span class="caret"></span>
        </a>
        <div class="topics">
        <ul>
        	<li onclick="getChoose()">添加选择题</li>
        	<li onclick="getFull()">添加填空题</li>
        </ul>
        </div>
      </li>
      <li>
        <a onclick="toQuery()">
          <i class="zmdi zmdi-link"></i> 查看已发布题目
        </a>
      </li>
      <li>
        <a onclick="toQueryScore()">
          <i class="zmdi zmdi-widgets"></i> 查询学生成绩
        </a>
      </li>
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
          <li><a>教师界面</a></li>
        </ul>
      </div>
    </nav>
    <div class="container-fluid">
    
     <!-- 添加选择题 -->
     <div class="menu" style="display: none" id="choose">
     <div class="row">
     	<div class="col-md-6 col-md-offset-3">
			<form action="insertChoose" role="form">
				<input type="hidden" name="teacherId" value="${teacher.tid }">
				<div class="form-group">
					<label for="topicMsg">题目:</label>
					<input type="text" id="topicMsg" class="form-control" name="topicMsg">
				</div>
				<div class="form-group">
					<label for="topicAnswer">答案:</label>
					<input type="text" id="topicAnswer" class="form-control" name="topicAnswer">
				</div>
				<div class="form-group">
					<label for="chooseA">A:</label>
					<input type="text" id="chooseA" class="form-control" name="chooseA">
				</div>
				<div class="form-group">
					<label for="chooseB">B:</label>
					<input type="text" id="chooseB" class="form-control" name="chooseB">
				</div>
				<div class="form-group">
					<label for="chooseC">C:</label>
					<input type="text" id="chooseC" class="form-control" name="chooseC">
				</div>
				<div class="form-group">
					<label for="chooseD">D:</label>
					<input type="text" id="chooseD" class="form-control" name="chooseD">
				</div>
				<input type="hidden" name="subjects" value="${teacher.subjects }">
				<input type="submit" class="btn btn-success text-center" id="submit" value="添加选择题">
			</form>
     	</div>
     </div>
      </div>
     <!-- 添加填空题 -->
     <div class="menu" style="display: none" id="full">
	     <div class="row">
	     	<div class="col-md-6 col-md-offset-3">
				<form action="insertFull" role="form">
				<div class="form-group">
					<label>题目:</label>
					<input type="text" class="form-control" name="topicMsg"><br>
				</div>
				<div class="form-group">
					<label>答案:</label>
					<input type="text" class="form-control" name="topicAnswer"><br>
				</div>
					<input type="hidden" name="teacherId" value="${teacher.tid }">
					<input type="hidden" name="subjects" value="${teacher.subjects }"><br>
					<input type="submit" class="btn btn-success text-center" id="submit" value="添加选择题"><br>
				</form>
	     	</div>
	     </div>
      </div>
     <div class="row">
     	<div>
	      <!-- 查看题目 -->
		  <div class="menu" style="display: none" id="queryTopic">
		  	<table class="table table-striped table-hover table-bordered">
				<tr>
					<th>题目内容</th>
					<th>题目选项A</th>
					<th>题目选项B</th>
					<th>题目选项C</th>
					<th>题目选项D</th>
					<th>题目答案</th>
					<th>修改题目</th>
				</tr>
				<c:forEach items="${chooses }" var="choose">
					<tr>
						<td>${choose.topicMsg }</td>
						<td>${choose.chooseA }</td>
						<td>${choose.chooseB }</td>
						<td>${choose.chooseC }</td>
						<td>${choose.chooseD }</td>
						<td>${choose.topicAnswer }</td>
						<td><input type="button" class="btn btn-info" data-toggle="modal" id="${choose.cid }" value="修改" onclick="changeChoose(this)"></td>
					</tr>
				</c:forEach>
			</table>
			<table class="table table-striped table-hover table-bordered">
				<tr>
					<th>题目内容</th>
					<th>题目答案</th>
					<th>修改题目</th>
				</tr>
				<c:forEach items="${fulls }" var="full">
					<tr>
					<td>${full.topicMsg }</td>
					<td>${full.topicAnswer }</td>
					<td><input type="button" class="btn btn-info" data-toggle="modal"  id="${full.fid }" value="修改" onclick="changeFull(this)"> </td>
				</tr>
				</c:forEach>
			</table>
			<div class="modal fade" id="chooseChange" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			    <div class="modal-dialog">
			        <div class="modal-content">
			            <div class="modal-header">
			                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			                <h4 class="modal-title" id="myModalLabel">修改选择题</h4>
			            </div>
			            <div class="modal-body">
			            	<form action="updateChoose" role="form">
								<input type="hidden" name="cid" id="change_cid">
								<input type="hidden" name="teacherId" id="changeC_teacherId">
								<div class="form-group">
									题目:<input type="text" class="form-control" name="topicMsg" id="changeC_topicMsg">
									答案:<input type="text" class="form-control" name="topicAnswer" id="changeC_topicAnswer">
								</div>
								<div class="form-group">
									A:<input type="text" class="form-control" name="chooseA" id="change_chooseA">
									B:<input type="text" class="form-control" name="chooseB" id="change_chooseB">
									C:<input type="text" class="form-control" name="chooseC" id="change_chooseC">
									D:<input type="text" class="form-control" name="chooseD" id="change_chooseD">
								</div>
								<input type="submit" value="修改" class="btn btn-info">
							</form>
						</div>
			            <div class="modal-footer">
			                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
			            </div>
			        </div>
			    </div>
			</div>
			<div class="modal fade" id="fullChange" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			    <div class="modal-dialog">
			        <div class="modal-content">
			            <div class="modal-header">
			                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			                <h4 class="modal-title" id="myModalLabel">修改填空题</h4>
			            </div>
			            <div class="modal-body">
				            <form action="updateFull" role="form">
								<input type="hidden" name="fid" id="change_fid">
								<input type="hidden" name="teacherId" id="changeF_teacherId">
								<div class="form-group">
									题目：<input type="text" class="form-control" name="topicMsg" id="changeF_topicMsg">
								</div>
								<div class="form-group">
									答案：<input type="text" class="form-control" name="topicAnswer" id="changeF_topicAnswer">
								</div>
								<input type="submit" class="btn btn-info" value="修改">
							</form>
						</div>
			            <div class="modal-footer">
			                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
			            </div>
			        </div>
			    </div>
			</div>
		  </div>
     	</div>
     </div>
     
     <!-- 查询学生成绩 -->
     <div class="menu" style="display: none" id="score">
	     <div class="row">
	     	<div class="col-md-8 col-md-offset-2">
				<form action="queryScoreSort" class="form-horizontal" role="form">
				<div class="form-group">
					<label class="col-md-2 col-md-offset-4">按学号:</label>
					<div class="col-md-2">
						<select class="form-control" name="sequence" id="sequence">
							<option value="0">升序</option>
							<option value="1">降序</option>
						</select>
					</div>
					<div class="col-md-2 col-md-offset-2">
						<input type="button" onclick="showScore()" class="btn btn-info text-center" value="查询">
					</div>
				</div>
				</form>
	     	</div>
	     </div>
	     <div class="row" id="scoreAsc" style="display: none">
	     	<div class="col-md-8 col-md-offset-2">
		     	<table class="table table-striped table-hover table-bordered">
		     		<tr>
		     			<th>试卷名称</th>
		     			<th>学生学号</th>
		     			<th>学生姓名</th>
		     			<th>学生成绩</th>
		     		</tr>
		     		<c:forEach items="${scoresAsc }" var="score">
		     			<tr>
		     				<td>${score.examName }</td>
		     				<td>${score.studentId }</td>
		     				<td>${score.stuName }</td>
		     				<td>${score.score }</td>
		     			</tr>
		     		</c:forEach>
		     	</table>
	     	</div>
	     </div>
	     <div class="row" id="scoreDesc" style="display: none">
	     	<div class="col-md-8 col-md-offset-2">
		     	<table class="table table-striped table-hover table-bordered">
		     		<tr>
		     			<th>试卷名称</th>
		     			<th>学生学号</th>
		     			<th>学生姓名</th>
		     			<th>学生成绩</th>
		     		</tr>
		     		<c:forEach items="${scoresDesc }" var="score">
		     			<tr>
		     				<td>${score.examName }</td>
		     				<td>${score.studentId }</td>
		     				<td>${score.stuName }</td>
		     				<td>${score.score }</td>
		     			</tr>
		     		</c:forEach>
		     	</table>
	     	</div>
	     </div>
      </div>
     
	</div>
  </div>
</div>
</body>
<script type="text/javascript">
	function getChoose(){
		/* $.ajax({
			type : 'POST',  
	        contentType : 'application/json',  
	        url : 'getScore',  
	        dataType : 'json',  
	        success : function(data) {  
	        }
		}); */
		$(".menu").hide();
		$("#choose").css('display','block');
	}
	function getFull(){
		$(".menu").hide();
		$("#full").css('display','block');
	}
	function topicShow(){
		var isShow = $(".topics")[0].style.display === "block";
		if(isShow){
			$(".topics").css('display','none');
		}else {
			$(".topics").css('display','block');
		}
	}
	
	function toQuery(){
		$(".menu").hide();
		$("#queryTopic").show();
	}
	function changeChoose(e) {
		var cid = e.id;
		$.ajax({
			type : 'POST',  
	        contentType : 'application/json',  
	        url : 'changeChoose',
	        data : cid,
	        dataType : 'json',  
	        success : function(data) {  
	        	$("#change_cid").val(data.cid);
	        	$("#changeC_teacherId").val(data.teacherId);
	        	$("#changeC_topicAnswer").val(data.topicAnswer);
	        	$("#change_chooseA").val(data.chooseA);
	        	$("#change_chooseB").val(data.chooseB);
	        	$("#change_chooseC").val(data.chooseC);
	        	$("#change_chooseD").val(data.chooseD);
	        	$("#changeC_topicMsg").val(data.topicMsg);
	        	$('#chooseChange').modal('show');
	        }
		}); 
		/* window.location.href = "changeChoose?cid="+cid+""; */
	}
	function changeFull(e) {
		var fid = e.id;
		$.ajax({
			type : 'POST',  
	        contentType : 'application/json',  
	        url : 'changeFull',
	        data : fid,
	        dataType : 'json',  
	        success : function(data) {  
	        	$("#change_fid").val(data.fid);
	        	$("#changeF_teacherId").val(data.teacherId);
	        	$("#changeF_topicMsg").val(data.topicMsg);
	        	$("#changeF_topicAnswer").val(data.topicAnswer);
	        	$('#fullChange').modal('show');
	        }
		}); 
		/* window.location.href = "changeFull?fid="+fid+""; */
	}
	
	function toQueryScore(){
		$(".menu").hide();
		$("#score").show();
	}
	
	function showScore() {
		if($("#sequence option:selected").val() == 0){
			$("#scoreDesc").hide();
			$("#scoreAsc").show();
		}else {
			$("#scoreAsc").hide();
			$("#scoreDesc").show();
		}
	}
</script>
</html>