<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="org.ruohan.bean.Student"%>
<%@page import="org.ruohan.dao.StudentDao"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'studentList.jsp' starting page</title>
<%
				ArrayList<Student> students = StudentDao.getStudents();
				request.setAttribute("students", students);
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
        height: 600px;
        background-color: #FFFFFF;
        margin-top: 2px;
        margin-left: 2px;
    }

    .box_bar, .box_main {
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
        border-bottom: 1px solid rgba(34, 36, 38, .1);
        font-size: 14px;
        text-align: center;
    }
    .a_update,.a_del{
        text-decoration: none;
        color: black;
        cursor: pointer;
    }
</style>
<body>


<div class="box">
    <div class="box_top">

    </div>
    <div class="box_bar">
        <div class="bar">
            <a href="#"> 首页</a>
        </div>
        <div class="bar">
            <a href="#"> 年级列表</a>
        </div>
        <div class="bar">
            <a href="#"> 班级列表</a>
        </div>
        <div class="bar" style="background-color:#24A260">
            <a href="#"> 学生基本信息</a>
        </div>

        <div class="bar">
            <a href="#"> 学生信息统计</a>
        </div>
        <div class="bar">
            <a href="#"> 新增学生信息</a>
        </div>
        <div class="bar">
            <a href="#"> 修改学生信息</a>
        </div>
        <div class="bar">
            <a href="#"> 删除学生信息</a>
        </div>

        <div class="bar">
            <a href="#"> 课程列表</a>
        </div>
        <div class="bar">
            <a href="#"> 新增课程</a>
        </div>
        <div class="bar">
            <a href="#"> 考试信息</a>
        </div>
        <div class="bar">
            <a href="#"> 考试信息统计</a>
        </div>
        <div class="bar">
            <a href="#"> 新增考试</a>
        </div>
        <div class="bar">
            <a href="#"> 学生成绩</a>
        </div>
        <div class="bar">
            <a href="#"> 成绩统计</a>
        </div>
        <div class="bar">
            <a href="#"> 学生通讯录</a>
        </div>
        <div class="bar">
            <a href="#"> 管理员信息</a>
        </div>
        <div class="bar">
            <a href="#"> 退出系统</a>
        </div>
    </div>
    <div class="box_main">
        <table>
            <tr>
                <th>
                    学号
                </th>
                <th>
                    姓名
                </th>
                <th>
                    性别
                </th>
                <th>
                    年龄
                </th>
                <th>
                    班级
                </th>
                <th>
                    联系方式
                </th>
                <th>
                    操作
                </th>
            </tr>
            <c:forEach items="${students}" var="student">
            <tr>
                <td>
                    ${student.studentId }
                </td>
                <td>
                    ${student.name }
                </td>
                <td>
                    ${student.sex }
                </td>
                <td>
                    ${student.age }
                </td>
                <td>
                    ${student.clazz }
                </td>
                <td>
                    ${student.phone }
                </td>
                <td>
                     <a href="studentToUpdate?id=${student.id }" class="a_update">修改</a>   <a href="studentDel?id=${student.id }" class="a_del">删除</a>
                </td>
            </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
<script>
    $(function () {
        $(".a_del").click(
            function () {
                if(confirm("是否确认删除！")){

                    location.href = "studentDel?id=${student.id }";
                }
            }
        )
    });
</script>
</html>
