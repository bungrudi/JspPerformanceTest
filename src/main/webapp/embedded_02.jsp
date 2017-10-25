<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<h2>FROM embedded_02.jsp</h2>

<div>
<%= com.adianto.rudi.sandbox.Sandbox.outputResultOfLongProcess() %>
</div>

<%@include file="embedded_03.jsp" %>

