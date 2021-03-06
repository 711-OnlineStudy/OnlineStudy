<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理员主页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	<link rel="stylesheet" type="text/css" href="css/adminIndex.css">
 
  </head>
  
  <body>
    <div id="top_frame">
		<span id="log">在线学习平台管理系统</span>
		<span id="main_menu">
			<ul >
				<li><a href="#">管理员</a></li>
				<li><a href="#">修改密码</a></li>
				<li><a href="#">退出</a></li>
			</ul>
		</span>
    </div>
    <div id="left_frame">
		<ul>
			<li style="text-align:center;font-weight:bolder;font-size:28px;">菜&nbsp;&nbsp;单</li>
			<li>
				<ul>
					<li><a href="javascript:changeMenu(1)"><span class="icon-font">&#xe022;</span>学生管理</a></li>
					<li id="second1">
						<ul>
							<li><a href="admin/StudentManagement/addStudent.jsp" target="right"><span class="icon-font">&#xe020;</span>添加学生信息</a></li>
							<li><a href="admin/StudentManagement/studentList.jsp" target="right"><span class="icon-font">&#xe018;</span>查看学生信息</a></li>
						</ul>
					</li>
					<li><a href="javascript:changeMenu(2)"><span class="icon-font">&#xe016;</span>课程管理</a></li>
					<li id="second2">
						<ul>
							<li><a href="admin/createCourse.jsp" target="right"><span class="icon-font">&#xe014;</span>添加课程信息</a></li>
							<li><a href="admin/courseList.jsp" target="right"><span class="icon-font">&#xe012;</span>查看课程信息</a></li>
						</ul>
					</li>
					<a href="javascript:changeMenu(3)"><span class="icon-font">&#xe016;</span>公共信息管理</a></li>
					<li id="second3">
						<ul>
							<li><a href="book/addbook.jsp" target="right"><span class="icon-font">&#xe014;</span>查看公共信息</a></li>
							<li><a href="book/booklist.jsp" target="right"><span class="icon-font">&#xe012;</span>修改公共信息</a></li>
						</ul>
					</li>
					<a href="javascript:changeMenu(4)"><span class="icon-font">&#xe016;</span>标签栏设置</a></li>
					<li id="second4">
						<ul>
							<li><a href="admin/TabBarsManagement/directionOperation.jsp" target="right"><span class="icon-font">&#xe014;</span>方向设置</a></li>
							<li><a href="admin/TabBarsManagement/sortOperation.jsp" target="right"><span class="icon-font">&#xe012;</span>分类设置</a></li>
							<li><a href="admin/TabBarsManagement/typeOperation.jsp" target="right"><span class="icon-font">&#xe012;</span>类型设置</a></li>
						</ul>
					</li>
					<li><a href="list.jsp" target="right"><span class="icon-font">&#xe026;</span>系统管理</a></li>
				</ul>
			</li>
		</ul>
    </div>
    <div id="main_frame">
    	<iframe width="100%" class="content_container" height="100%" frameborder="0" scroll="auto" name="right" src="admin/comment.jsp">
    	</iframe>
    </div>
  </body>
  <script type="text/javascript">
  for(var i=1;i<=4;i++){
  		document.getElementById("second"+i).style.display="none";
  	}  
  function changeMenu(index){

  	for(var i=1;i<=4;i++){
  		if(index==i)
  			document.getElementById("second"+i).style.display="block";
  		else
  			document.getElementById("second"+i).style.display="none";
  	}
  }
  </script>
</html>
