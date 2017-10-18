<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<html> 
	<head>
		<title>JSP for PersonForm form</title>
	</head>
	<body>
		Hello, ${ personForm.name }. <br/><br/>
		You account is: ${ personForm.account }, <br/>
		Your birthday is: ${ personForm.birthday }, <br/>
		<%-- <c:choose>
			<c:when test="${personForm.experience }"> You experienced Struts before.
			</c:when>
			<c:otherwise> You did not experience Struts before. </c:otherwise>
		</c:choose><br/> --%>
		
		Your hobby is:
		<c:forEach items="${personForm.hobby }" var="hobby">
		${hobby },
		</c:forEach><br/>
		<%-- date : ${helloForm.date }<br/>
		time : ${helloForm.time }<br/> --%>
		
	</body>
</html>

