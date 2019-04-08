<%@ page pageEncoding="GBK" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<html>
<head>
    <title>�ϴ��������ļ����ܴ�С���ܳ���2M)</title>
    <script language="javascript">
        // ��DOM�в���һ���ϴ��ļ��б��divԪ��)��һ��<input type="file"/>Ԫ��
        function insertNextFile(obj,index) {
            // ��ȡ�ϴ����Ƹ���
            var id = index + 1;
            var fullName = obj.value;
            // ����<div>Ԫ�ؼ�����Ԫ��
            var fileHtml = '';
            fileHtml += '<div  id = "file_preview' + id + '" style ="border-bottom: 1px solid #CCC;">';
            fileHtml += '<img  src ="image/file.gif" title="' + fullName + '"/>&nbsp;&nbsp;';
            fileHtml += '<a href="javascript:;" onclick="removeFile(' + id + ');">ɾ��</a> &nbsp;&nbsp;';
            fileHtml += fullName.substr(fullName.lastIndexOf('\\') + 1) + '  </div>';

            var fileElement = document.getElementById("files_preview");
            fileElement.innerHTML = fileElement.innerHTML + fileHtml;
            obj.style.display = 'none';   // ���ص�ǰ��<input type=��file��/>Ԫ��
            addUploadFile(id);  // �����µ�<input type=��file��/>Ԫ��
        }

        //  �����µ�<input type=��file��/>Ԫ�أ��ʺ��ڲ�ͬ�������������IE��FireFox�ȣ�
        function addUploadFile(index) {
            try  // ����IE�����
            {
                var uploadHTML = document.createElement("<input type='file' id='file_" + index +
                    "' name='file[" + index + "]' onchange='insertNextFile(this,'+index+')'/>");
                document.getElementById("files").appendChild(uploadHTML);
            } catch (e)  // �������������
            {
                var uploadObj = document.createElement("input");
                uploadObj.setAttribute("type", "file");
                uploadObj.setAttribute("id", "file_" + index);
                uploadObj.setAttribute("name", "file[" + index + "]");
                uploadObj.setAttribute("onchange", "insertNextFile(this,"+index+")");
                document.getElementById("files").appendChild(uploadObj);
            }
        }

        function removeFile(index)  // ɾ����ǰ�ļ���<div>��<input type=��file��/>Ԫ��
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

        function showStatus(obj)  // ��ʾ�������ϴ��ļ�����ʾ��Ϣ
        {
            document.getElementById("status").style.visibility = "visible";
        }
    </script>
</head>
<body>
<html:form enctype="multipart/form-data" action="uploadMoreFile">
      <span id="files">   <%--  �ڴ˴����������ϴ��ļ���inputԪ�� --%>
          <input type="file" id="file_0" name="file[0]" onchange="insertNextFile(this,0)"/>
      </span>&nbsp;&nbsp;
    <html:submit value=" �ϴ� " onclick="showStatus(this);"/>
</html:form>
<p>
<div id="status" style="visibility:hidden;color:Red">�����ϴ��ļ�</div>
<p>
    <%--  �ڴ˴���DOM���������ϴ��ļ��б���  --%>
<div id="files_preview" style="width:500px;height:500px; overflow :auto"></div>
</body>
</html>
