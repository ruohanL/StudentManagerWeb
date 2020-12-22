<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'studentInfo.jsp' starting page</title>

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

    .box_bar, .box_main ,table,.div_photo{
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
        margin-top: 53px;
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
        border-radius: 0;
        outline: 0;
        font: inherit;
        font-size: .875rem;
    }
    .div_photo{
        width: 100px;
        height: 200px;
        margin-left: 180px;
        margin-top: 100px;
    }
    .span_photo{
        margin-left: 50px;
        font-size: 14px;
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

        <div class="bar" style="background-color:#24A260">
            <a href="studentInfo.jsp"> 学生详情</a>
        </div>
        <div class="bar">
            <a href="studentAdd.jsp"> 新增学生</a>
        </div>
        <div class="bar">
            <a href="studentSearch.jsp"> 搜索学生</a>
        </div>
        <div class="bar">
            <a href="managerInfo.jsp"> 管理员信息</a>
        </div>
        <div class="bar">
            <a href="index.jsp"> 退出系统</a>
        </div>
    </div>
    <div class="box_main">
      
            <table>
                <tr>
                    <td> ID</td>
                    <td><input  type="text" value="${student.id }" name="id" readonly="readonly"/></td>
                </tr>
                <tr>
                    <td> 学号</td>
                    <td><input  type="text" value="${student.studentId }" readonly="readonly"/></td>
                </tr>
                <tr>
                    <td>姓名</td>
                    <td><input  type="text"  value="${student.name }" readonly="readonly"/></td>
                </tr>
                <tr>
                    <td> 性别</td>
                    <td><input  type="text"  value=" ${student.sex }" readonly="readonly"/></td>
                </tr>
                <tr>
                    <td> 年龄</td>
                    <td><input  type="text"  value="${student.age }" readonly="readonly"/></td>
                </tr>
                <tr>
                    <td>班级</td>
                    <td><input  type="text"  value=" ${student.clazz }" readonly="readonly"/></td>
                </tr>
                <tr>
                    <td>手机号</td>
                    <td><input  type="text"  value="${student.phone }" readonly="readonly"/></td>
                </tr>
                <tr>
                    <td>邮箱</td>
                    <td><input  type="text"  value="${student.email }" readonly="readonly"/></td>
                </tr>
                <tr>
                    <td>职位</td>
                    <td><input  type="text"  value="${student.position }" readonly="readonly"/></td>
                </tr>
                <tr>
                    <td>身份证号</td>
                    <td><input  type="text"  value="${student.id_card }" readonly="readonly"/></td>
                </tr>
                <tr>
                    <td>家庭地址</td>
                    <td><input  type="text"  value="${student.address }" readonly="readonly"/></td>
                </tr>
            </table>
            <div class="div_photo"><img src="img/test.svg"><span class="span_photo">照片</span></div>
      
    </div>
</div>
</body>
<script>
    $(function () {
        $(".bar").hover(
            function () {
                $(this).css("background-color", "#24A260")
            }, function () {
                $(this).css("background-color", "#26ab65")
            }
        )
    });
</script>
</html>