<%@ page import="org.apache.struts.action.ActionMessage" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="org.apache.struts.action.ActionErrors" %>
<%@ page import="org.apache.struts.util.PropertyMessageResources" %>
<%@ page pageEncoding="GBK" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%
    ActionErrors actionErrors = (ActionErrors) request.getAttribute("org.apache.struts.action.ERROR");
    if(actionErrors != null && actionErrors.size()>0){
        Iterator<ActionMessage> iterator = actionErrors.get();
        PropertyMessageResources propertyMessageResources = (PropertyMessageResources) request.getAttribute("org.apache.struts.action.MESSAGE");
        while (iterator.hasNext()){
            ActionMessage actionMessage = iterator.next();
            if(propertyMessageResources !=null){
                out.print(propertyMessageResources.getMessage(actionMessage.getKey()));
                out.print("<br>");
            }
        }
    }
%>
<html>
<head>
    <title>ע����Ϣ�����Լ���֤)</title>
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
            <td align="right" width="45%"> �û�����</td>
            <td width="55%">
                <html:text property="user" styleClass="text"/>
                <span style="color: red; "><html:errors property="errorUser"/></span>
            </td>
        </tr>
        <tr/>
        <tr/>
        <tr>
            <td align="right">��¼���룺</td>
            <td>
                <html:password property="password" styleClass="text"/>
                <span style="color: red; "><html:errors property="errorPassword"/></span>
            </td>
        </tr>
        <tr/>
        <tr/>
        <tr>
            <td align="right">�ظ���¼���룺</td>
            <td>
                <html:password property="password1" styleClass="text"/>
                <span style="color: red; "><html:errors property="errorPassword1"/></span>
            </td>
        </tr>
        <tr/>
        <tr/>
        <tr>
            <td align="right">�����ʼ���</td>
            <td>
                <html:text property="email" styleClass="text"/>
                <span style="color: red; "><html:errors property="errorEmail"/></span>
            </td>
        </tr>
        <tr/>
        <tr/>
        <tr>
            <td align="right"><br> ${requestScope.success } </td>
            <td align="left"><br> <html:submit value=" �ύ "/></td>
        </tr>
    </table>
</html:form>
</body>
</html>
