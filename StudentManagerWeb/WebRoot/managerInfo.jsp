<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="org.ruohan.bean.User"%>
<%@page import="org.ruohan.dao.UserDao"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'managerInfo.jsp' starting page</title>
		<%
			User user = UserDao.getUser();
			request.setAttribute("user", user);
		%>
	</head>
	<script src="js/jquery-3.3.1.js"></script>
	<style>
body {
	background-color: #f9f9f9;
	font-size: 16px;
}

.box_top {
	width: 1248px;
	height: 103px;
	background-color: #FFFFFF;
	margin-top: 1px;
	border-bottom: 2px solid #00ad5f;
}

.box_bar {
	width: 230.25px;
	background-color: #FFFFFF;
	margin-top: 2px;
	margin-left: 2px;
}

.bar {
	width: 202.25px;
	height: 33px;
	margin: 0 auto;
	background-color: #26ab65;
}

.box_main {
	width: 997.75px;
	background-color: #FFFFFF;
	margin-top: 2px;
	margin-left: 2px;
}

.box_bar,.box_main {
	display: inline-block;
	vertical-align: top;
}

.box {
	width: 1248px;
	height: 698px;
	background-color: #FFFFFF;
	margin: 0 auto;
}

a {
	text-decoration: none;
	color: #FFFFFF;
	cursor: pointer;
	font-size: 14px;
	line-height: 33px;
	margin-left: 10px;
}

table {
	margin-top: 33px;
}

th {
	background: #f9fafb;
	border: 1px;
	width: 178.267px;
	height: 42px;
	border-bottom: 1px solid rgba(34, 36, 38, .1);
	font-size: 14px;
}

td {
	border: 1px;
	width: 178.267px;
	height: 40.4px;
	font-size: 14px;
	text-align: center;
}

table {
	margin-left: 100px;
}

input {
	width: 300px;
	height: 40px;
	border: none;
	border-radius: 0;
	outline: 0;
	font: inherit;
	font-size: .875rem;
}

.div_update {
	background-color: #00ad5f;
	width: 100px;
	margin-left: 140px;
	margin-top: 50px;
}
</style>
	<body>


		<div class="box">
			<div class="box_top">

			</div>
			<div class="box_bar">
				<div class="bar">
					<a href="main.jsp"> 首页</a>
				</div>
				<div class="bar">
					<a href="clazzList.jsp"> 班级列表</a>
				</div>
				<div class="bar">
					<a href="studentList.jsp"> 学生列表</a>
				</div>

				<div class="bar">
					<a href="studentSearch.jsp"> 学生详情</a>
				</div>
				<div class="bar">
					<a href="studentAdd.jsp"> 新增学生</a>
				</div>
				<div class="bar">
					<a href="studentSearch.jsp"> 搜索学生</a>
				</div>
				<div class="bar" style="background-color: #24A260">
					<a href="managerInfo.jsp"> 管理员信息</a>
				</div>
				<div class="bar">
					<a href="index.jsp"> 退出系统</a>
				</div>
			</div>
			<div class="box_main">
				<table>
					<tr>
						<td>
							ID
						</td>
						<td>
							<input type="text" value="${user.id }" name="id"
								readonly="readonly" />
						</td>
					</tr>
					<tr>
						<td>
							姓名
						</td>
						<td>
							<input type="text" value="${user.name }" name="name"
								readonly="readonly" />
						</td>
					</tr>
					<tr>
						<td>
							账户
						</td>
						<td>
							<input type="text" value="${user.userName }" readonly="readonly" />
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<div class="div_update">
								<a href="userToUpdate?id=${user.id }">点击修改密码</a>
							</div>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</body>
	<script>
	$(function() {
		$(".bar").hover(function() {
			$(this).css("background-color", "#24A260")
		}, function() {
			$(this).css("background-color", "#26ab65")
		})
	});
</script>
</html>