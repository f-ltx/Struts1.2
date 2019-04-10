<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib prefix="html" uri="http://jakarta.apache.org/struts/tags-html" %>
<html>
<head>
    <title>国际化</title>
</head>
<body>
<%
    if("en".equals(request.getParameter("language")))
        session.setAttribute("org.apache.struts.action.LOCALE", new java.util.Locale("en"));
    else if("zh".equals(request.getParameter("language")))
        session.setAttribute("org.apache.struts.action.LOCALE", new java.util.Locale("zh"));
    else if("fr".equals(request.getParameter("language")))
        session.setAttribute("org.apache.struts.action.LOCALE", new java.util.Locale("fr"));
%>
<bean:message key="title" bundle="global"/><p/>
<form action="">
    <bean:message key="name" bundle="global"/>：
    <input type="text" name="name"/>
    <p/>
    <input type="submit" value=<bean:message key="submit" bundle="global"/>>

</form>
<html:form action="htmlTags" method="post">
    <html:submit value="不能使用键值" titleKey="title" bundle="global"/>
    <html:submit>
        <bean:message key ="submit" bundle = "global" />
    </html:submit>
</html:form>

<br>

<a href="newGlobal.jsp?language=en" target="_blank">英文</a><p/>
<a href="newGlobal.jsp?language=zh" target="_blank">中文</a><p/>
<a href="newGlobal.jsp?language=fr" target="_blank">法文</a>
</body>
</html>