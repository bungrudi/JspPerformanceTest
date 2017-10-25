<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<h2>FROM embedded_03.jsp</h2>

<div>
<%= com.adianto.rudi.sandbox.Sandbox.outputResultOfLongProcess() %>
</div>

<%@include file="embedded_04.jsp" %>
<%@include file="embedded_05.jsp" %>
<jsp:include page="embedded_06.jsp"/>
<jsp:include page="embedded_07.jsp"/>
