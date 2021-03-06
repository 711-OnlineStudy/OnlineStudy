<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加学生信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<link rel="stylesheet" type="text/css" href="css/common.css">
	<link rel="stylesheet" type="text/css" href="css/oper.css">
	
	<!-- 判断管理员输入的信息是否符合要求begin -->
	<script type="text/javascript">
	function checkUname(){
        var sStudentID=document.getElementById("SStudentID");
        
         if(sStudentID.value == "")
        {
       		alert("用户名不能为空!");
       		sStudentID.focus();
           return false; 
        }
        return true; 
     }
     function checkPass(){
        var sPwd=document.getElementById("SPwd");
        
         if(sPwd.value == "")
        {
       		alert("密码不能为空!");
       		sPwd.focus();
           return false; 
        }else if(sPwd.value.length>20|| sPwd.value.length<6){
           alert("密码长度必须在6~20位之间");
           sPwd.value="";
           sPwd.focus();
           return false;
        }
        return true; 
     }
     function  CheckValidate(){
     var sPwd=document.getElementById("SPwd");
     var sPwdConfirm=document.getElementById("SPwdConfirm");
     if(sPwd.value!=sPwdConfirm.value){
        alert("两次密码不一样,请重新输入");
        sPwdConfirm.value="";
        sPwdConfirm.focus();
           return false; 
     }
       return true;
     }
  </script>
  <!-- 判断管理员输入的信息是否符合要求end -->
  </head>
  
  <body>
	<div class="nav"><span class="icon-font"></span><span>学生管理</span><span>&gt</span><span>添加新学生</span></div>

	<!-- 添加学生信息的表单begin -->
	<div id="content">
	<form enctype="multipart/form-data" method="post" action="servlet/StudentServlet" onsubmit="return CheckValidate()">
		<input type="hidden" name="op" value="add">
		<table>
			<tr class="depth"><th>学生学号</th><td><input type="text" name="SStudentID" id="SStudentID" class="inputEle" /></td></tr>
	   		<tr class="shallow"><th>学生姓名</th><td><input type="text" name="SName" id="SName" class="inputEle"/></td></tr>
	   		<tr class="depth"><th>性别</th><td><input type="text" name="SSex" id="SSex" class="inputEle"/></td></tr>
	   		<tr class="shallow"><th>所在系</th><td><input type="text" name="SDepartment" id="SDepartment" class="inputEle"/></td></tr>
	   		<tr class="depth"><th>班级</th><td><input type="text" name="SClass" id="SClass" class="inputEle"/></td></tr>
	   		<tr class="shallow"><th>自我介绍</th><td><input type="text" name="SIntroduction" id="SIntroduction" class="inputEle"/></td></tr>
	   		<tr class="depth"><th>邮箱</th><td><input type="text" name="SEmail" id="SEmail" class="inputEle"/></td></tr>
	   		<tr class="shallow"><th>学生照片</th><td><input type="file" name="SImg" id="SImg" class="inputEle"/></td></tr>
	   		<tr class="depth"><th>联系方式</th><td><input type="text" name="SContactWay" id="SContactWay" class="inputEle"/></td></tr>
	   		<tr class="shallow"><th>密码</th><td><input type="password" name="SPwd" id="SPwd" class="inputEle" onblur="return checkPass()"/></td></tr>
	   		<tr class="depth"><th>确认密码</th><td><input type="password" name="SPwdConfirm" id="SPwdConfirm" class="inputEle"/></td></tr>
	   		<tr class="shallow"><td colspan="2"><input type="submit" value="添加" class="btn orange"/></td></tr>
		</table>
	</form>
    </div>
   <!-- 添加学生信息表单end-->
  </body>
</html>
