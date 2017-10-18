<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

 
<html> 
	<head>
		<title>JSP for PersonForm form</title>
		<script src="${ pageContext.request.contextPath }/js/calendar.js"></script>
	</head>
	<body>
		<html:form action="/addPerson">
			<html:hidden property="action" value="add"/>
			
			账号 : <html:text property="account"/><html:errors property="account"/><br/>
			姓名 : <html:text property="name"/><html:errors property="name"/><br/>
			生日 : <html:text property="birthday" onfocus="setday(birthday);"/>
			<img src="${ pageContext.request.contextPath }/images/calendar.gif" onclick="setday(birthday);"/>
			<html:errors property="birthday"/><br/>
			
			爱好 : <html:checkbox property="hobby" value="足球">足球</html:checkbox>
			<html:checkbox property="hobby" value="影视">影视</html:checkbox>
			<html:checkbox property="hobby" value="音乐">音乐</html:checkbox>
			<html:checkbox property="hobby" value="美食">美食</html:checkbox>
			<html:checkbox property="hobby" value="旅游">旅游</html:checkbox>
			<html:checkbox property="hobby" value="摄影">摄影</html:checkbox>
			<html:errors property="hobby"/><br/>
			是否隐藏姓名 : <html:checkbox property="secret"></html:checkbox>
			<html:submit value="提交"/>
		</html:form>
	</body>
</html>

