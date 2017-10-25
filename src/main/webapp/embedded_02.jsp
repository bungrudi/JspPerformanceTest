<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<h2>FROM embedded_02.jsp</h2>

<% 
request.setAttribute("theList", com.adianto.rudi.sandbox.Sandbox.longProcessSeveralTimes());
%>

<c:forEach items="${requestScope.theList}" var="it">
	 ${it}<br/>
</c:forEach>

<%@include file="embedded_03.jsp" %>

