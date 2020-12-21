<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'studentUpdate.jsp' starting page</title>


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

    td {
        border: 1px;

        height: 40.4px;
        font-size: 14px;
    }
    table{
        margin-left: 100px;
    }
    input{
        width: 300px;
        height: 40px;
        border: none;
        border-bottom: #ddd 1px solid;
        border-radius: 0;
        outline: 0;
        font: inherit;
        font-size: .875rem;
    }
    .input_submit{
        width: 112px;
        height: 33.23px;
        background-color: #32aa66;
        text-align: center;
        color: #FFFFFF;
        margin-left: 120px;

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
        <div class="bar">
            <a href="#"> 学生基本信息</a>
        </div>

        <div class="bar">
            <a href="#"> 学生信息统计</a>
        </div>
        <div class="bar">
            <a href="#"> 新增学生信息</a>
        </div>
        <div class="bar" style="background-color:#24A260">
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
   <form action="studentUpdate" method="post">
            <table>
                <tr>
                    <td> ID</td>
                    <td><input  type="text" value="${student.id }" name="id" readonly="readonly"/></td>
                </tr>
                <tr>
                    <td> 学号</td>
                    <td><input  type="text" value="${student.studentId }" name="studentId"/></td>
                </tr>
                <tr>
                    <td>姓名</td>
                    <td><input  type="text"  value="${student.name }" name="name"/></td>
                </tr>
                <tr>
                    <td> 性别</td>
                    <td><input  type="text"  value=" ${student.sex }" name="sex"/></td>
                </tr>
                <tr>
                    <td> 年龄</td>
                    <td><input  type="text"  value="${student.age }" name="age"/></td>
                </tr>
                <tr>
                    <td>班级</td>
                    <td><input  type="text"  value=" ${student.clazz }" name="clazz"/></td>
                </tr>
                <tr>
                    <td>联系方式</td>
                    <td><input  type="text"  value="${student.phone }" name="phone"/></td>
                </tr>
                <tr >
                    <td colspan="2"><input type="submit" class="input_submit" value="修改"/></td>
                </tr>

            </table>
        </form>
    </div>
</div>
</body>
</html>