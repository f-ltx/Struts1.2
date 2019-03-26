<%@ page pageEncoding="GBK" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<html>
<head>
    <title>���HTTP������Ϣ</title>
</head>
<body>
<%--  ����bean:cookie��ǩ --%>
<bean:cookie id="myCookie" name="name" value="default"/>
<%
    if (myCookie.getValue().equals("default")) {
        Cookie cookie = new Cookie("name", "newCookie");
        cookie.setMaxAge(1000);
        response.addCookie(cookie);
    }
%>
${myCookie.value} <%-- ��EL���myCookie��value����ֵ --%>
<%
    // ${myCookie.value}�൱������Java����
    Cookie cookie = (Cookie) pageContext.getAttribute("myCookie");
    out.println(cookie.getValue());
%> <br>
<%--  ����bean:header��ǩ --%>
<bean:header id="userAgent" name="user-agent" value="unknown"/>
${userAgent}<br> <%-- ��EL���userAgent��ֵ --%>
<%-- ����bean:parameter��ǩ  --%>
<bean:parameter id="myCountry" name="country" value="unknown"/>
${myCountry} <%-- ��EL���myCountry��ֵ --%>
<p>
Ҫע����ǣ�����������Bean��ǩ�����������浽��page��Χ�ڣ�Ҳ����JSP��Ƕ����pageContext�У������Ҳ��ܸı�����ı��淶Χ��������ʹ��������Bean��ǩʱӦע����һ�㡣
</p>
<a href="accessJavaObject.jsp">����Java����</a><br>
<a href="accessEmbeddedObject.jsp">����JSP��Ƕ�����Struts���ö���</a><br>
<a href="accessResources.jsp">����Web��Դ�������ļ�</a><br>
<a href="beanWrite.jsp">ʹ��bean:write��ǩ�����Ϣ</a><br>
</body>
</html>