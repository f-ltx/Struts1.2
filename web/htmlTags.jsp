<%@ page pageEncoding="GBK"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<html>
<head>
    <title>HTML标签库演示</title>
</head>
<body>
<html:form action="htmlTags" method="post"  >
    姓名：<html:text property="name"  />  <p />
    性别： 男 <html:radio property="sex" value="1" />
    女 <html:radio property="sex" value="2" /> <p />
    学生： <html:checkbox property="student" value="true" /> <p />
    爱好： 上网 <html:multibox property="hobbies" value="上网" />&nbsp;
    旅游 <html:multibox property="hobbies" value="旅游" />&nbsp;
    足球 <html:multibox property="hobbies" value="足球" />&nbsp;
    围棋 <html:multibox property="hobbies" value="围棋" /> <p />
    职业：
    <html:select property="work" >
        <html:option  value="" />
        <html:option  value="软件工程师" />
        <html:option value="软件测试工程师" />
        <html:option value="项目经理" />
        <html:option value="高级顾问" />
        <html:option value="其他" />
    </html:select>
    <p />
    <html:submit value="提交"/>&nbsp;&nbsp;&nbsp;<html:reset value="重置"/>

    <p>
        所有property属性值相同的html:multibox标签被映射到同一个property所指的属性中，并且这个属性是一个数组类型。
        而html:checkbox标签只对应了一个值。
    </p>
</html:form>
</body>
</html>