<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% String selection= request.getParameter("option"); %>
	<% String langue=request.getParameter("langue"); %>
<%@ taglib prefix="langTag" uri="WEB-INF/tlds/tp.tld"%>
	<langTag:I18NQuote lang="<%=langue %>" key="<%=selection %>"/>
</body>
</html>