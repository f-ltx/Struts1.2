<%@ page pageEncoding="GBK" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<html>
<head>
    <title>上传任意多个文件（总大小不能超过2M)</title>
    <script language="javascript">
        // 在DOM中插入一个上传文件列表项（div元素)和一个<input type="file"/>元素
        function insertNextFile(obj,index) {
            // 获取上传控制个数
            var id = index + 1;
            var fullName = obj.value;
            // 插入<div>元素及其子元素
            var fileHtml = '';
            fileHtml += '<div  id = "file_preview' + id + '" style ="border-bottom: 1px solid #CCC;">';
            fileHtml += '<img  src ="image/file.gif" title="' + fullName + '"/>&nbsp;&nbsp;';
            fileHtml += '<a href="javascript:;" onclick="removeFile(' + id + ');">删除</a> &nbsp;&nbsp;';
            fileHtml += fullName.substr(fullName.lastIndexOf('\\') + 1) + '  </div>';

            var fileElement = document.getElementById("files_preview");
            fileElement.innerHTML = fileElement.innerHTML + fileHtml;
            obj.style.display = 'none';   // 隐藏当前的<input type=”file”/>元素
            addUploadFile(id);  // 插入新的<input type=”file”/>元素
        }

        //  插入新的<input type=”file”/>元素，适合于不同的浏览器（包括IE、FireFox等）
        function addUploadFile(index) {
            try  // 用于IE浏览器
            {
                var uploadHTML = document.createElement("<input type='file' id='file_" + index +
                    "' name='file[" + index + "]' onchange='insertNextFile(this,'+index+')'/>");
                document.getElementById("files").appendChild(uploadHTML);
            } catch (e)  // 用于其他浏览器
            {
                var uploadObj = document.createElement("input");
                uploadObj.setAttribute("type", "file");
                uploadObj.setAttribute("id", "file_" + index);
                uploadObj.setAttribute("name", "file[" + index + "]");
                uploadObj.setAttribute("onchange", "insertNextFile(this,"+index+")");
                document.getElementById("files").appendChild(uploadObj);
            }
        }

        function removeFile(index)  // 删除当前文件的<div>和<input type=”file”/>元素
        {
            document.getElementById("files_preview").removeChild(document.getElementById("file_preview" + index));
            document.getElementById("files").removeChild(document.getElementById("file_" + index));
            var fileInput = document.getElementsByTagName("input");
            for(var x=0;x<fileInput.length;x++){
                if(fileInput[x].type == "file" && x == fileInput.length-2){
                    fileInput[x].style.display = "inline";
                    fileInput[x].value = "";
                }
            }
        }

        function showStatus(obj)  // 显示“正在上传文件”提示信息
        {
            document.getElementById("status").style.visibility = "visible";
        }
    </script>
</head>
<body>
<html:form enctype="multipart/form-data" action="uploadMoreFile">
      <span id="files">   <%--  在此处插入用于上传文件的input元素 --%>
          <input type="file" id="file_0" name="file[0]" onchange="insertNextFile(this,0)"/>
      </span>&nbsp;&nbsp;
    <html:submit value=" 上传 " onclick="showStatus(this);"/>
</html:form>
<p>
<div id="status" style="visibility:hidden;color:Red">正在上传文件</div>
<p>
    <%--  在此处用DOM技术插入上传文件列表项  --%>
<div id="files_preview" style="width:500px;height:500px; overflow :auto"></div>
</body>
</html>
