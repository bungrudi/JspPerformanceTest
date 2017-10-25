<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<h2>FROM embedded_01.jsp</h2>
test 225774
<div>
<%= com.adianto.rudi.sandbox.Sandbox.outputResultOfLongProcess() %>
</div>

<% 
out.print("test ");
request.setAttribute("theList", com.adianto.rudi.sandbox.Sandbox.longProcessSeveralTimes());
%>

<c:forEach items="${requestScope.theList}" var="it">
	 ${it}<br/>
</c:forEach>

<%@include file="embedded_02.jsp" %>