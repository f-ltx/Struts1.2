<%@ page pageEncoding="GBK"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<html>
<head>
    <title>��ѯ��Ʒ��Ϣ</title>
</head>
<body>
<%--  ��searchProduct�����ύ��ѯ���� --%>
<html:form action="searchProduct">
    <table width="100%">
        <tr>
            <td align="center">
                ��Ʒ���ƣ�
                <html:text property="productName" />
            </td>
        </tr>
        <tr>
            <td align="center">
                <br>
                <html:submit value=" ��ѯ " />
            </td>
        </tr>
    </table>
</html:form>
</body>
</html>
