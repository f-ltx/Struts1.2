<%@ page pageEncoding="GBK" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<body>
<%-- ��request��result��ȡ����ѯ��� --%>
<c:set var="result" value="${requestScope.result}"/>
<table width="100%">
    <tr align="center">
        <td>
            ${requestScope.info}
        </td>
    </tr>
    <tr align="center">
        <td>
            <logic:present name="result">
                <table border="1">
                    <tr align="center">
                        <td> ��ƷID</td>
                        <td> ��Ʒ����</td>
                        <td> �۸�</td>
                    </tr>
                    <logic:iterate id="row" name="result">
                        <tr>
                            <td> ${row[0]} </td>
                            <td> ${row[1]} </td>
                            <td> ${row[2]} </td>
                        </tr>
                    </logic:iterate>
                </table>
            </logic:present>
        </td>
    </tr>
</table>
</body>
</html>
