<%@ page pageEncoding="GBK" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<html>
<head>
    <title>获得HTTP请求信息</title>
</head>
<body>
<%--  测试bean:cookie标签 --%>
<bean:cookie id="myCookie" name="name" value="default"/>
<%
    if (myCookie.getValue().equals("default")) {
        Cookie cookie = new Cookie("name", "newCookie");
        cookie.setMaxAge(1000);
        response.addCookie(cookie);
    }
%>
${myCookie.value} <%-- 用EL输出myCookie的value属性值 --%>
<%
    // ${myCookie.value}相当于如下Java代码
    Cookie cookie = (Cookie) pageContext.getAttribute("myCookie");
    out.println(cookie.getValue());
%> <br>
<%--  测试bean:header标签 --%>
<bean:header id="userAgent" name="user-agent" value="unknown"/>
${userAgent}<br> <%-- 用EL输出userAgent的值 --%>
<%-- 测试bean:parameter标签  --%>
<bean:parameter id="myCountry" name="country" value="unknown"/>
${myCountry} <%-- 用EL输出myCountry的值 --%>
<p>
要注意的是，上述的三个Bean标签都将变量保存到了page范围内（也就是JSP内嵌对象pageContext中），并且不能改变变量的保存范围。读者在使用这三个Bean标签时应注意这一点。
</p>
<a href="accessJavaObject.jsp">访问Java对象</a><br>
<a href="accessEmbeddedObject.jsp">访问JSP内嵌对象和Struts配置对象</a><br>
<a href="accessResources.jsp">访问Web资源和属性文件</a><br>
<a href="beanWrite.jsp">使用bean:write标签输出信息</a><br>
</body>
</html>