<%@ page pageEncoding="gbk" contentType="text/html; charset=GBK" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.naming.*" %>
<%@ page import="javax.sql.DataSource" %>
<html>
<head>
    <title>Tomcat JNDI!</title>
</head>
<body>
Tomcat连接池测试,获取数据源 <br>
<%
    try {
        //初始化查找命名空间
        Context ctx = new InitialContext();
        //参数java:/comp/env为固定路径
        Context envContext = (Context) ctx.lookup("java:/comp/env");
        //参数jdbc/struts为数据源和JNDI绑定的名字
        DataSource ds = (DataSource) envContext.lookup("jdbc/struts");
        Connection conn = ds.getConnection();
        conn.close();
        out.println("<span style='color:red;'>JNDI测试成功<span>");
    } catch (NamingException e) {
        e.printStackTrace();
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>
</body>
</html>
