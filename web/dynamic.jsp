<%@ page pageEncoding="GBK" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<html>
<head>
    <title>���Զ�̬Form</title>
    <html:base/>
</head>
<body>
<html:form action="dynamic">
�� ����<html:text property="name"/>&nbsp;&nbsp;
<p>
    �� �䣺<html:text property="age"/>&nbsp;&nbsp;
<p>
    �� �ʣ�<html:text property="salary"/>&nbsp;&nbsp;
<p>
    ����1��<html:text property="hobby" value=""/>&nbsp;&nbsp;
<p>
    ����2��<html:text property="hobby" value=""/>&nbsp;&nbsp;
<p>
    ����3��<html:text property="hobby" value=""/>&nbsp;&nbsp;
<p>
    map��<html:text property="hello(a)" value=""/>&nbsp;&nbsp;
<p>
    map��<html:text property="hello(b)" value=""/>&nbsp;&nbsp;
<p>
        <html:submit value="�ύ"/>
    </html:form>
</body>
</html>