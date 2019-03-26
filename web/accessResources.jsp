<%@ page pageEncoding="GBK" %>
<%@ page import="actionform.HtmlTagsForm" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<html>
<head>
    <title>访问Web资源和属性文件</title>
</head>
<body>
<br>======================include========================<br>
<bean:include id="myWebVar1" href="http://localhost/samples/validate/simpleValidation.jsp"/>
<bean:include id="myWebVar2" page="/htmlTags.jsp"/>
<bean:include id="myWebVar3" forward="newProduct"/>
${myWebVar1} ${myWebVar2} ${myWebVar3}
<br>======================resource========================<br>
<bean:resource id="myResVar" name="/htmlTags.jsp"/>
${myResVar}
<br>======================message========================<br>
<%--  从MyResources.properties中获得信息 --%>
<bean:message bundle="my" key="greet"/>
<%--  从ErrorDescription.properties中获得信息 --%>
<bean:message key="error.email.invalid"/>
<bean:message bundle="my" key="myGreet" arg0="李宁"/>

<%
    request.setAttribute("newGreet", "greet");
%>
<bean:message bundle="my" name="newGreet"/>
<%
    HtmlTagsForm form = new HtmlTagsForm();
    form.setName("myGreet");
    request.setAttribute("form", form);
%>
<%--  从form对象的name属性获得key --%>
<bean:message bundle="my" name="form" property="name" arg0="李宁"/>
</body>
</html>