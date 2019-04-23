<%@ page pageEncoding="GBK" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<html>
<head>
    <title>测试动态Form</title>
    <html:base/>
</head>
<body>
<html:form action="dynamic">
姓 名：<html:text property="name"/>&nbsp;&nbsp;
<p>
    年 龄：<html:text property="age"/>&nbsp;&nbsp;
<p>
    工 资：<html:text property="salary"/>&nbsp;&nbsp;
<p>
    爱好1：<html:text property="hobby" value=""/>&nbsp;&nbsp;
<p>
    爱好2：<html:text property="hobby" value=""/>&nbsp;&nbsp;
<p>
    爱好3：<html:text property="hobby" value=""/>&nbsp;&nbsp;
<p>
    map：<html:text property="hello(a)" value=""/>&nbsp;&nbsp;
<p>
    map：<html:text property="hello(b)" value=""/>&nbsp;&nbsp;
<p>
        <html:submit value="提交"/>
    </html:form>
</body>
</html>