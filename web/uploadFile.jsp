<%@ page pageEncoding="GBK" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<html>
<head>
    <title>上传单个文件（文件大小不能超过2M) </title>
</head>
<body>
<p>
    <br>在Struts Html标签库中提供了一个&lt;html:file&gt;标签，可以和FormFile类型的属性一起使用。

    <br>FormFile接口有如下五个常用的方法：

    <br>1. getInputStream()方法

    <br>这个方法用于获得上传文件的java.io.InputStream对象，我们可以从这个InputStream对象中读取上传文件的数据，并将其写到服务端指定的路径下。

    <br>2. getFileData()方法

    <br>这个方法用于将上传文件的整个内容放到一个byte类型的数组中，如果上传文件的尺寸比较小的话，使用这个方法可以很方便地将上传文件保存到在服务端的指定路径中。

    <br>3. getFileName()方法

    <br>这个方法用于获得上传文件的文件名（不包括文件在客户机的路径部分）。

    <br>4. getFileSize()方法

    <br>这个方法用于获得上传文件的字节数。

    <br>5. destroy()方法

    <br>用于销毁所有和当前上传文件相关的资源。
</p>
<%-- 在<html:form>标签中必须加enctype="multipart/form-data"  --%>
<html:form enctype="multipart/form-data" action="uploadFile">
    <%-- 使用<html:file>标签让用户输入上传文件名  --%>
    <html:file property="myFile"/>
    <html:submit value="上传"/>
</html:form>
</body>
</html>
