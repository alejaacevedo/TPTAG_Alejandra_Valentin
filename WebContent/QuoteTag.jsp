<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:useBean id="myBean" scope="request"
	class="org.mines.douai.j2ee.tp.lepez.bean.QuoteBean" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TagLib TP</title>
</head>
<body>
	<% String selection= request.getParameter("option"); %>
	<% String langue=request.getParameter("langue"); %>
<%@ taglib prefix="langTag" uri="WEB-INF/tlds/tp.tld"%>
	<langTag:I18NQuote lang="<%=langue %>" key="ok"/>
	
	<form method=Post>

		<h2>Choix de la langue</h2>

		<% if (langue == null) { %>

		<select name="langue">
			<option value='fr'>Français</option>
			<option value='en'>English</option>
		</select>
		

		<%}else{ %>

		<select name="langue">
			<option value='Français'
				<%out.print(myBean.printSelectedLangue(myBean.isFrançais(langue))); %>>Français</option>
			<option value='English'
				<%out.print(myBean.printSelectedLangue(myBean.isEnglish(langue))); %>>English</option>
		</select> 
		<% }  %>
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
		
	
</body>
</html>