<%@ page pageEncoding="GBK" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<html>
<head>
    <title>����Java����</title>
</head>
<body>
<%--  ����actionform.HtmlTagsForm����ʵ�� --%>
<jsp:useBean id="htmlTagsForm" class="actionform.HtmlTagsForm"/>
<jsp:setProperty name="htmlTagsForm" property="name" value="����"/>
<%--  ����bean:define��ǩ --%>
<bean:define id="myBeanVar" name="htmlTagsForm" property="name"/>
${myBeanVar}
<%
    String[] arr = new String[10];
    pageContext.setAttribute("arr", arr);
%>
<%--  ����bean:size��ǩ --%>
<bean:size id="length" name="arr"/>
${length}
</body>
</html>