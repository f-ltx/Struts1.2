<%@ page pageEncoding="GBK" %>
<%@page import="actionform.HtmlTagsForm,java.util.*" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<html>
<head>
    <title>����bean:write</title>
</head>
<body>
<%
    request.setAttribute("abcd", "myValue");
    HtmlTagsForm form = new HtmlTagsForm();
    form.setName("hello");
    form.setWork("<b>����ʦ</b>");
    request.setAttribute("form", form);

    Calendar calendar = Calendar.getInstance();
    request.setAttribute("calendar", calendar);
%>
<bean:write name="abcd"/><br>
<bean:write name="form" property="name"/><br>
<bean:write name="form" property="work"/><br>
<br>
filter="false" ����ִ��html����&lt;b&gt;����ʦ&lt;/b&gt;<br>
bean:write name="form" property="work" filter="false"<br><br>
<bean:write name="form" property="work" filter="false"/><br>
<bean:write name="calendar" property="time" format="yyyy-MM-dd HH:mm:ss"/><br>
<bean:write name="calendar" property="time" formatKey="formatDate" bundle="my"/>

</body>
</html>
