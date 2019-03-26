<%@ page pageEncoding="GBK" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<html>
<head>
    <title>访问JSP内嵌对象和Struts配置对象</title>
</head>
<body>
<bean:page id="myRequest" property="request"/>
myRequest.characterEncoding = ${myRequest.characterEncoding}
<br>
myRequest.contextPath = ${myRequest.contextPath}
<%
    out.println(myRequest.getParameter("abc"));
%>
<br>
<bean:struts id="myHtmlTagsForm" formBean="htmlTagsForm"/><br>
myHtmlTagsForm.type = ${myHtmlTagsForm.type}<br>
myHtmlTagsForm = ${myHtmlTagsForm}<br>
<bean:struts id="myHtmlTags" mapping="/htmlTags"/><br>
myHtmlTags.type = ${myHtmlTags.type}<br>
myHtmlTags = ${myHtmlTags}<br>
<bean:struts id="myNewProduct" forward="newProduct"/><br>
myNewProduct.path = ${myNewProduct.path}<br>
myNewProduct = ${myNewProduct}<br>
</body>
</html>
