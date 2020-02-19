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
<% String langue=request.getParameter("langue"); %>
	
	<form method=Post>
		<% if (request.getParameter("option") == null) { %>
	
		<% if (langue == null) { %>
		<h2>Choice of language</h2>
		<select name="langue">
			<option value='Français'>Français</option>
			<option value='English'>English</option>
		</select>

		<%}else{ %>
		<% myBean.setLangue(langue); %>

		<h2>Choice of language</h2>
		<select name="langue">
			<option value='Français'
				<%out.print(myBean.printSelectedLangue(myBean.isFrançais(langue))); %>>Français</option>
			<option value='English'
				<%out.print(myBean.printSelectedLangue(myBean.isEnglish(langue))); %>>English</option>
		</select> 
		
		<%} %>
		<br/>
		<h2>Choice of currency</h2>
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
		<h2>Choice of language</h2>
		<select name="langue">
			<option value='Français'>Français</option>
			<option value='English'>English</option>
		</select>

		<%}else{ %>
		<% myBean.setLangue(langue); %>

		<h1>Choice of language</h1>
		<select name="langue">
			<option value='Français'
				<%out.print(myBean.printSelectedLangue(myBean.isFrançais(langue))); %>>Français</option>
			<option value='English'
				<%out.print(myBean.printSelectedLangue(myBean.isEnglish(langue))); %>>English</option>
		</select> 
		
		<%} %>
		<br/>
		<h2>Choice of Currency</h2>
		<select name='option'>
			<option value='Bitcoin' <%out.print(myBean.printSelected(myBean.isBitcoin(selection))); %>>Bitcoin</option>
			<option value='Litecoin' <%out.print(myBean.printSelected(myBean.isLitecoin(selection))); %>>Litecoin</option>
			<option value='Namecoin' <%out.print(myBean.printSelected(myBean.isNamecoin(selection))); %>>Namecoin</option>
		</select> 
		<br/>
		<br/>
		<input type='submit' name='refresh' value='Actualiser'>
	</form>
	<img src="/TPTAG_Alejandra_Valentin/QuoteRating?option=<%= selection %>">
	<h2>The dollar amount of the quote <% out.print(myBean.getName()); %> is of  <% out.print(myBean.getValue());%> </h2> 
	
 <% } %>



</body>
</html>