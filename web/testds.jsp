<%@ page pageEncoding="gbk" contentType="text/html; charset=GBK" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.naming.*" %>
<%@ page import="javax.sql.DataSource" %>
<html>
<head>
    <title>Tomcat JNDI!</title>
</head>
<body>
Tomcat���ӳز���,��ȡ����Դ <br>
<%
    try {
        //��ʼ�����������ռ�
        Context ctx = new InitialContext();
        //����java:/comp/envΪ�̶�·��
        Context envContext = (Context) ctx.lookup("java:/comp/env");
        //����jdbc/strutsΪ����Դ��JNDI�󶨵�����
        DataSource ds = (DataSource) envContext.lookup("jdbc/struts");
        Connection conn = ds.getConnection();
        conn.close();
        out.println("<span style='color:red;'>JNDI���Գɹ�<span>");
    } catch (NamingException e) {
        e.printStackTrace();
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>
</body>
</html>
