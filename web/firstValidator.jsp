<%@ page pageEncoding="GBK" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<html>
<head>
    <title>��һ��Validator����</title>
</head>
<body>
<html:form action="firstValidator">
    �� ����
        <html:text property="name"/>
            <span style="color: red; ">
                <html:errors property="name"/>
            </span>
    <p>
    �� �䣺
        <html:text property="age"/>&nbsp;&nbsp;<span style="color: red; ">
        <html:errors property="age"/></span>
    <p>
    EMail��
        <html:text property="email"/>&nbsp;&nbsp;<span style="color: red; ">
    <html:errors property="email"/></span>
    <p>
        <html:submit value="�ύ"/>
    </html:form>
</body>
</html>