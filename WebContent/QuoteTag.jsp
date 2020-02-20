<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:useBean id="myBean" beanName="myBean" scope="request"
	type="org.mines.douai.j2ee.tp.lepez.bean.QuoteBean" />
<%@ taglib prefix="langTag" uri="WEB-INF/tlds/tp.tld"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TagLib TP</title>
</head>
<body>
	<% String selection= myBean.getSelection(); %>
	<% myBean.setValue(selection); %>
	<% String langue=myBean.getLangue(); %>
	
	<h1>
		<langTag:I18NQuote lang="<%=myBean.getLangue() %>" key="title" />

	</h1>

	<form method=Post>

		<h2><langTag:I18NQuote lang="<%=myBean.getLangue() %>" key="header.chooseLanguage" /></h2>

		<select name="langue">
			<option value='fr'
				<%out.print(myBean.printSelectedLangue(myBean.isFrançais(langue))); %>><langTag:I18NQuote lang="<%=langue %>" key="language.french" /></option>
			<option value='en'
				<%out.print(myBean.printSelectedLangue(myBean.isEnglish(langue))); %>><langTag:I18NQuote lang="<%=langue %>" key="language.english" /></option>
		</select>
		
		<br />
		<h2><langTag:I18NQuote lang="<%=langue %>" key="header.chooseCurrency"/></h2>
		<select name='option'>
			<%
				for (String key : myBean.getCurrencies().keySet()) {
					if (myBean.getSelection().equals(key))
						out.println("<option value=\"" + key + "\" selected>" + key + "</option>");
					else
						out.println("<option value=\"" + key + "\">" + key + "</option>");
				}
			%>
		</select> <br /> <br /> <input type='submit' name='refresh' value='<langTag:I18NQuote lang="<%=langue %>" key="button.Refresh" />'>
	</form> <br/>
	
	<img
		src="/TPTAG_Alejandra_Valentin/QuoteRating?option=<%= selection %>"> <br/>
	
	<h2> <langTag:I18NQuote lang="<%=langue %>" key="message.selectedCurrency" /> <% out.print(myBean.getValue());%> </h2>

	<br/><a href="./index.html">./index.html</a>

</body>
</html>