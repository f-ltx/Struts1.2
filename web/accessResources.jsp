<%@ page pageEncoding="GBK" %>
<%@ page import="actionform.HtmlTagsForm" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<html>
<head>
    <title>����Web��Դ�������ļ�</title>
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
<%--  ��MyResources.properties�л����Ϣ --%>
<bean:message bundle="my" key="greet"/>
<%--  ��ErrorDescription.properties�л����Ϣ --%>
<bean:message key="error.email.invalid"/>
<bean:message bundle="my" key="myGreet" arg0="����"/>

<%
    request.setAttribute("newGreet", "greet");
%>
<bean:message bundle="my" name="newGreet"/>
<%
    HtmlTagsForm form = new HtmlTagsForm();
    form.setName("myGreet");
    request.setAttribute("form", form);
%>
<%--  ��form�����name���Ի��key --%>
<bean:message bundle="my" name="form" property="name" arg0="����"/>
</body>
</html>