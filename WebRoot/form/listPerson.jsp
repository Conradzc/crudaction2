<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<html> 
	<head>
		<title>JSP for PersonForm form</title>
	</head>
<body>
<html:form action="/listPerson">
			<html:hidden property="action" value="list"/>
 
<table>
	<tr>
		<th>ID</th>
		<th>账号</th>
		<th>姓名</th>
		<th>生日</th>
		<th>爱好</th>
		<th>是否隐藏姓名</th>
	</tr>
	<logic:iterate id="person" name="personList">
	<tr>
		<td><bean:write name="person" property="id"/></td>
		<td><bean:write name="person" property="account"/></td>
		
		<td>
			<logic:equal value="false" name="person" property="secret">
			<bean:write name="person" property="name"/>
			</logic:equal>
			
			<logic:equal value="true" name="person" property="secret">
			***
			</logic:equal>
		</td>
		<td><bean:write name="person" property="birthday"/></td>
		
		<td>
			<logic:iterate id="hobby" name="person" property="hobby">
			<bean:write name="hobby"/>,
			</logic:iterate> 
		</td>
		<td><bean:write name="person" property="secret"/></td>
		
	</tr>
	</logic:iterate>	
</table>
<br/>
<a href="${ pageContext.request.contextPath }/form/addPerson.jsp">
</a>
</html:form>
</body>
</html>	