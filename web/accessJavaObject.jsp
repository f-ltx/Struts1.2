<%@ page pageEncoding="GBK" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<html>
<head>
    <title>访问Java对象</title>
</head>
<body>
<%--  建立actionform.HtmlTagsForm对象实例 --%>
<jsp:useBean id="htmlTagsForm" class="actionform.HtmlTagsForm"/>
<jsp:setProperty name="htmlTagsForm" property="name" value="李宁"/>
<%--  测试bean:define标签 --%>
<bean:define id="myBeanVar" name="htmlTagsForm" property="name"/>
${myBeanVar}
<%
    String[] arr = new String[10];
    pageContext.setAttribute("arr", arr);
%>
<%--  测试bean:size标签 --%>
<bean:size id="length" name="arr"/>
${length}
</body>
</html>