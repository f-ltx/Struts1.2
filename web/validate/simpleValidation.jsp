<%@ page import="org.apache.struts.action.ActionMessage" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="org.apache.struts.action.ActionErrors" %>
<%@ page import="org.apache.struts.util.PropertyMessageResources" %>
<%@ page pageEncoding="GBK" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%
    ActionErrors actionErrors = (ActionErrors) request.getAttribute("org.apache.struts.action.ERROR");
    if (actionErrors != null && actionErrors.size() > 0) {
        Iterator<ActionMessage> iterator = actionErrors.get();
        PropertyMessageResources propertyMessageResources = (PropertyMessageResources) request.getAttribute("org.apache.struts.action.MESSAGE");
        while (iterator.hasNext()) {
            ActionMessage actionMessage = iterator.next();
            if (propertyMessageResources != null) {
                out.print(propertyMessageResources.getMessage(actionMessage.getKey()));
                out.print("<br>");
            }
        }
    }
%>
<html>
<head>
    <title>注册信息（测试简单验证)</title>
    <style type="text/css">
        .text {
            height: 20px;
            width: 160px;
        }
    </style>
</head>
<body>
<html:form action="simpleValidation">
    <table width="100%">
        <tr>
            <td align="right" width="45%"> 用户名：</td>
            <td width="55%">
                <html:text property="user" styleClass="text"/>
                <span style="color: red; "><html:errors property="errorUser"/></span>
            </td>
        </tr>
        <tr/>
        <tr/>
        <tr>
            <td align="right">登录密码：</td>
            <td>
                <html:password property="password" styleClass="text"/>
                <span style="color: red; "><html:errors property="errorPassword"/></span>
            </td>
        </tr>
        <tr/>
        <tr/>
        <tr>
            <td align="right">重复登录密码：</td>
            <td>
                <html:password property="password1" styleClass="text"/>
                <span style="color: red; "><html:errors property="errorPassword1"/></span>
            </td>
        </tr>
        <tr/>
        <tr/>
        <tr>
            <td align="right">电子邮件：</td>
            <td>
                <html:text property="email" styleClass="text"/>
                <span style="color: red; "><html:errors property="errorEmail"/></span>
            </td>
        </tr>
        <tr/>
        <tr/>
        <tr>
            <td align="right"><br> ${requestScope.success } </td>
            <td align="left"><br> <html:submit value=" 提交 "/></td>
        </tr>
    </table>
    <p>
    <h1>第三章</h1>
    <li>我们可以使用如下的命令转换ErrorDescription.properties文件的编码格式：</li>
    <li>进入项目文件所在目录：D:\Java\Study\Struts1.2\src\struts</li>
    <li>命令行：\native2ascii ErrorDescription.properties ErrorDescription.properties</li>
    </p>
    <p>
    <h1>第四章</h1>
    <pre>
        &lt;%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %&gt;
        &lt;%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %&gt;
        &lt;%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %&gt;
        &lt;%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %&gt;
        &lt;%-- JSP高级模板并未加入Nested标签库声明，需要手工加入--%&gt;
        &lt;%@ taglib uri="http://struts.apache.org/tags-nested" prefix="nested" %&gt;
    </pre>
    或者，将tld文件拷贝到WEB-INF下
    <pre>
        &lt;%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %&gt;
        &lt;%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %&gt;
        &lt;%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %&gt;
        &lt;%@ taglib uri="/WEB-INF/struts-tiles.tld" prefix="tiles" %&gt;
        &lt;%-- JSP高级模板并未加入Nested标签库声明，需要手工加入--%&gt;
        &lt;%@ taglib uri="/WEB-INF/struts-nested.tld" prefix="nested" %&gt;
    </pre>
    </p>
</html:form>
</body>
<script type="text/javascript">
    var entityMap = {
        '&': '&amp;',
        '<': '&lt;',
        '>': '&gt;',
        '"': '&quot;',
        "'": '&#39;',
        '/': '&#x2F;',
        '`': '&#x60;',
        '=': '&#x3D;'
    };

    function escapeHtml(string) {
        return String(string).replace(/[&<>"'`=\/]/g, function (s) {
            return entityMap[s];
        });
    }

    escapeHtml("");
</script>
</html>
