<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
 <jsp:useBean id="myBean"  scope="request" class="org.mines.douai.j2ee.tp.lepez.bean.QuoteBean" />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TPJSP</title>
</head>
<body>
<% String selection= request.getParameter("option"); %>
	
	<% if (request.getParameter("option") == null) { %>
	<form method=Post>
		<select name='option'>
			<option value='Bitcoin'>Bitcoin</option>
			<option value='Litecoin'>Litecoin</option>
			<option value='Namecoin'>Namecoin</option>
		</select> <input type='submit' name='refresh' value='Actualiser'>
	</form>
	<% }  else { %>
	<% myBean.setName(selection); %>
	<% myBean.setValue(selection); %>
	<form method=Post>
		<select name='option'>
			<option value='Bitcoin' <%out.print(myBean.printSelected(myBean.isBitcoin(selection))); %>>Bitcoin</option>
			<option value='Litecoin' <%out.print(myBean.printSelected(myBean.isLitecoin(selection))); %>>Litecoin</option>
			<option value='Namecoin' <%out.print(myBean.printSelected(myBean.isNamecoin(selection))); %>>Namecoin</option>
		</select> <input type='submit' name='refresh' value='Actualiser'>
	</form>
	<img src="/TPJSP_Alejandra_Valentin/QuoteRating?option=<%= selection %>">
	<h2>Le montant en dollard de la devise <% out.print(myBean.getName()); %> est de  <% out.print(myBean.getValue());%> </h2> 
	
 <% } %>
 
 <%-- DEPRECATED CODE --%>
<%--  <% if (request.getParameter("option") == null) { %>
	<form method=Post>
		<select name='option'>
			<option value='Bitcoin'>Bitcoin</option>
			<option value='Litecoin'>Litecoin</option>
			<option value='Namecoin'>Namecoin</option>
		</select> <input type='submit' name='refresh' value='Actualiser'>
	</form>
	<% }  else if (request.getParameter("option").equals("Bitcoin")) {%>
	<form method=Post>
		<select name='option'>
			<option value='Bitcoin' selected='selected'>Bitcoin</option>
			<option value='Litecoin'>Litecoin</option>
			<option value='Namecoin'>Namecoin</option>
		</select> <input type='submit' name='refresh' value='Actualiser'>
	</form>
	<img src="/TPJSP_Alejandra_Valentin/QuoteRating?option=<%= selection %>">
	<%} else if (request.getParameter("option").equals("Litecoin")) { %>

	<form method=Post>
		<select name='option'>
			<option value='Bitcoin'>Bitcoin</option>
			<option value='Litecoin' selected='selected'>Litecoin</option>
			<option value='Namecoin'>Namecoin</option>
		</select> <input type='submit' name='refresh' value='Actualiser'>
	</form>
	<img src="/TPJSP_Alejandra_Valentin/QuoteRating?option=<%= selection %>">
	<% } else { %>
	<form method=Post>
		<select name='option'>
			<option value='Bitcoin'>Bitcoin</option>
			<option value='Litecoin'>Litecoin</option>
			<option value='Namecoin' selected='selected'>Namecoin</option>
		</select> <input type='submit' name='refresh' value='Actualiser'>
	</form>
	
	<img src="/TPJSP_Alejandra_Valentin/QuoteRating?option=<%= selection %>">
	<h2>Le montant en dollard de la devise est de  <% out.print(myBean.getValue());%> </h2> 
 <% } %> --%>
 





</body>
</html>