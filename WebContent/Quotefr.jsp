<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:useBean id="myBean" scope="request"
	class="org.mines.douai.j2ee.tp.lepez.bean.QuoteBean" />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TPJSP</title>
</head>
<body>
	<% String selection= request.getParameter("option"); %>
	<% String langue=request.getParameter("langue"); %>

	<% if (request.getParameter("option") == null) { %>
	<form method=Post>

		<h2>Choix de la langue</h2>

		<% if (langue == null) { %>

		<select name="langue">
			<option value='Français'>Français</option>
			<option value='English'>English</option>
		</select>
		

		<%}else{ %>
		<% myBean.setLangue(langue); %>

		<h2>Choix de la langue</h2>
		<select name="langue">
			<option value='Français'
				<%out.print(myBean.printSelectedLangue(myBean.isFrançais(langue))); %>>Français</option>
			<option value='English'
				<%out.print(myBean.printSelectedLangue(myBean.isEnglish(langue))); %>>English</option>
		</select> 
		
		<%} %>
		<br/>
		<h2>Choix de la devise</h2>
		<select name='option'>
			<option value='Bitcoin'>Bitcoin</option>
			<option value='Litecoin'>Litecoin</option>
			<option value='Namecoin'>Namecoin</option>
		</select> 
		<br/>
		<br/>
		<input type='submit' name='refresh' value='Actualiser'>
	</form>
	<% }  else { %>
	<% myBean.setName(selection); %>
	<% myBean.setValue(selection); %>

		
	<form method=Post>
	
	<% if (langue == null) { %>

		<h2>Choix de la langue</h2>
		<select name="langue">
			<option value='Français'>Français</option>
			<option value='English'>English</option>
		</select>

		<%}else{ %>
		<% myBean.setLangue(langue); %>

		<h2>Choix de la langue</h2>
		<select name="langue">
			<option value='Français'
				<%out.print(myBean.printSelectedLangue(myBean.isFrançais(langue))); %>>Français</option>
			<option value='English'
				<%out.print(myBean.printSelectedLangue(myBean.isEnglish(langue))); %>>English</option>
		</select> 
		
		<%} %>
		<br/>
		<h2>Choix de la devise</h2>
		<select name='option'>
			<option value='Bitcoin'
				<%out.print(myBean.printSelected(myBean.isBitcoin(selection))); %>>Bitcoin</option>
			<option value='Litecoin'
				<%out.print(myBean.printSelected(myBean.isLitecoin(selection))); %>>Litecoin</option>
			<option value='Namecoin'
				<%out.print(myBean.printSelected(myBean.isNamecoin(selection))); %>>Namecoin</option>
		</select> 
		<br/>
		<br/>
		<input type='submit' name='refresh' value='Actualiser'>
	</form>
	<img
		src="/TPJSP_Alejandra_Valentin/QuoteRating?option=<%= selection %>">
	<h2>
		Le montant en dollard de la devise
		<% out.print(myBean.getName()); %>
		est de
		<% out.print(myBean.getValue());%>
	</h2>

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