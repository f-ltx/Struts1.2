<%@ page pageEncoding="GBK" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<html>
<head>
    <title>�ϴ������ļ����ļ���С���ܳ���2M) </title>
</head>
<body>
<p>
    <br>��Struts Html��ǩ�����ṩ��һ��&lt;html:file&gt;��ǩ�����Ժ�FormFile���͵�����һ��ʹ�á�

    <br>FormFile�ӿ�������������õķ�����

    <br>1. getInputStream()����

    <br>����������ڻ���ϴ��ļ���java.io.InputStream�������ǿ��Դ����InputStream�����ж�ȡ�ϴ��ļ������ݣ�������д�������ָ����·���¡�

    <br>2. getFileData()����

    <br>����������ڽ��ϴ��ļ����������ݷŵ�һ��byte���͵������У�����ϴ��ļ��ĳߴ�Ƚ�С�Ļ���ʹ������������Ժܷ���ؽ��ϴ��ļ����浽�ڷ���˵�ָ��·���С�

    <br>3. getFileName()����

    <br>����������ڻ���ϴ��ļ����ļ������������ļ��ڿͻ�����·�����֣���

    <br>4. getFileSize()����

    <br>����������ڻ���ϴ��ļ����ֽ�����

    <br>5. destroy()����

    <br>�����������к͵�ǰ�ϴ��ļ���ص���Դ��
</p>
<%-- ��<html:form>��ǩ�б����enctype="multipart/form-data"  --%>
<html:form enctype="multipart/form-data" action="uploadFile">
    <%-- ʹ��<html:file>��ǩ���û������ϴ��ļ���  --%>
    <html:file property="myFile"/>
    <html:submit value="�ϴ�"/>
</html:form>
</body>
</html>
