<%@ page pageEncoding="GBK" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<html>
<head>
    <title>¼���Ʒ��Ϣ</title>
</head>
<body>
<%-- ��saveProduct�����ύ��Ʒ��Ϣ --%>
<html:form action="saveProduct">
    <table width="100%">
        <tr>
            <td align="center">
                ��Ʒ��ţ�
                <html:text property="productID" maxlength="4"/>
                <p>
                    ��Ʒ���ƣ�
                        <html:text property="productName"/>
                <p>

                    ��Ʒ�۸�
                        <html:text property="price"/>
            </td>
        </tr>
        <tr>
            <td align="center">
                <br>
                <html:submit value=" ���� "/>
            </td>
        </tr>
    </table>
</html:form>
</body>
</html>
