<%@ page import="java.util.*" pageEncoding="GBK" %>
<%@ page import="mystruts.actionform.ProductForm" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<html>
<head>
    <title>测试iterate标签</title>
</head>
<body>
<%
    String array[] = {"bill", "王明", "赵阳"};
    pageContext.setAttribute("array", array);
%>
<logic:iterate id="s" name="array" indexId="i" offset="1" length="1">
    array[<bean:write name="i"/>] = <bean:write name="s"/>&nbsp;
</logic:iterate>
<br>
<jsp:useBean id="form" class="actionform.HtmlTagsForm"/>
<jsp:setProperty name="form" property="hobbies" value='<%= new String[]{"计算机","旅游","摄影"} %>'/>
    <logic:iterate id="s" name="form" property="hobbies">
    <bean:write name="s"/>&nbsp;
</logic:iterate>
<br>
<br>
<%
    List<String> list = new LinkedList<>();
    list.add("计算机");
    list.add("英语");
    pageContext.setAttribute("list", list);
    pageContext.setAttribute("iterator", list.iterator());
%>
【索引从1开始显示：\${i+1}】
<br>
<logic:iterate id="s" name="list" indexId="i">
    【索引：${i+1}】list[<bean:write name="i"/>] = <bean:write name="s"/><br>
</logic:iterate>
<br>
<logic:iterate id="s" name="iterator" indexId="i" offset="1">
    list[<bean:write name="i"/>] = <bean:write name="s"/>&nbsp;
</logic:iterate>
<br>
<%
    Map<String, String> map = new HashMap<>();
    map.put("book", "书");
    map.put("apple", "苹果");
    pageContext.setAttribute("keySet", map.keySet());
    pageContext.setAttribute("entrySet", map.entrySet());
%>
<logic:iterate id="entry" name="entrySet">
    <bean:write name="entry" property="key"/> = <bean:write name="entry" property="value"/>&nbsp;
</logic:iterate>
<br>
<br>
<logic:empty name="var">
    var为空
</logic:empty>
<%
    ProductForm productForm = new ProductForm();
    productForm.setPrice(26.6f);
    pageContext.setAttribute("productForm",productForm);
%>
<logic:lessThan name="productForm" property="price" value="28">
    小于28
</logic:lessThan>
</body>
</html>