<%@ page import="java.util.*" pageEncoding="GBK" %>
<%@ page import="mystruts.actionform.ProductForm" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<html>
<head>
    <title>����iterate��ǩ</title>
</head>
<body>
<%
    String array[] = {"bill", "����", "����"};
    pageContext.setAttribute("array", array);
%>
<logic:iterate id="s" name="array" indexId="i" offset="1" length="1">
    array[<bean:write name="i"/>] = <bean:write name="s"/>&nbsp;
</logic:iterate>
<br>
<jsp:useBean id="form" class="actionform.HtmlTagsForm"/>
<jsp:setProperty name="form" property="hobbies" value='<%= new String[]{"�����","����","��Ӱ"} %>'/>
    <logic:iterate id="s" name="form" property="hobbies">
    <bean:write name="s"/>&nbsp;
</logic:iterate>
<br>
<br>
<%
    List<String> list = new LinkedList<>();
    list.add("�����");
    list.add("Ӣ��");
    pageContext.setAttribute("list", list);
    pageContext.setAttribute("iterator", list.iterator());
%>
��������1��ʼ��ʾ��\${i+1}��
<br>
<logic:iterate id="s" name="list" indexId="i">
    ��������${i+1}��list[<bean:write name="i"/>] = <bean:write name="s"/><br>
</logic:iterate>
<br>
<logic:iterate id="s" name="iterator" indexId="i" offset="1">
    list[<bean:write name="i"/>] = <bean:write name="s"/>&nbsp;
</logic:iterate>
<br>
<%
    Map<String, String> map = new HashMap<>();
    map.put("book", "��");
    map.put("apple", "ƻ��");
    pageContext.setAttribute("keySet", map.keySet());
    pageContext.setAttribute("entrySet", map.entrySet());
%>
<logic:iterate id="entry" name="entrySet">
    <bean:write name="entry" property="key"/> = <bean:write name="entry" property="value"/>&nbsp;
</logic:iterate>
<br>
<br>
<logic:empty name="var">
    varΪ��
</logic:empty>
<%
    ProductForm productForm = new ProductForm();
    productForm.setPrice(26.6f);
    pageContext.setAttribute("productForm",productForm);
%>
<logic:lessThan name="productForm" property="price" value="28">
    С��28
</logic:lessThan>
</body>
</html>