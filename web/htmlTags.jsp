<%@ page pageEncoding="GBK"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<html>
<head>
    <title>HTML��ǩ����ʾ</title>
</head>
<body>
<html:form action="htmlTags" method="post"  >
    ������<html:text property="name"  />  <p />
    �Ա� �� <html:radio property="sex" value="1" />
    Ů <html:radio property="sex" value="2" /> <p />
    ѧ���� <html:checkbox property="student" value="true" /> <p />
    ���ã� ���� <html:multibox property="hobbies" value="����" />&nbsp;
    ���� <html:multibox property="hobbies" value="����" />&nbsp;
    ���� <html:multibox property="hobbies" value="����" />&nbsp;
    Χ�� <html:multibox property="hobbies" value="Χ��" /> <p />
    ְҵ��
    <html:select property="work" >
        <html:option  value="" />
        <html:option  value="�������ʦ" />
        <html:option value="������Թ���ʦ" />
        <html:option value="��Ŀ����" />
        <html:option value="�߼�����" />
        <html:option value="����" />
    </html:select>
    <p />
    <html:submit value="�ύ"/>&nbsp;&nbsp;&nbsp;<html:reset value="����"/>

    <p>
        ����property����ֵ��ͬ��html:multibox��ǩ��ӳ�䵽ͬһ��property��ָ�������У��������������һ���������͡�
        ��html:checkbox��ǩֻ��Ӧ��һ��ֵ��
    </p>
</html:form>
</body>
</html>