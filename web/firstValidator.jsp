<%@ page pageEncoding="GBK" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<html>
<head>
    <title>第一个Validator程序</title>
</head>
<body>
<html:form action="firstValidator">
    姓 名：
        <html:text property="name"/>
            <span style="color: red; ">
                <html:errors property="name"/>
            </span>
    <p>
    年 龄：
        <html:text property="age"/>&nbsp;&nbsp;<span style="color: red; ">
        <html:errors property="age"/></span>
    <p>
    EMail：
        <html:text property="email"/>&nbsp;&nbsp;<span style="color: red; ">
    <html:errors property="email"/></span>
    <p>
        <html:submit value="提交"/>
    </html:form>
</body>
</html>