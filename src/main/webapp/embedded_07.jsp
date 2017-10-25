<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<h2>FROM embedded_07.jsp</h2>

<div>

<% 
out.print("test ");
request.setAttribute("theList", com.adianto.rudi.sandbox.Sandbox.longProcessSeveralTimes());
%>

<c:forEach items="${requestScope.theList}" var="it">
	 ${it}<br/>
</c:forEach>

</div>