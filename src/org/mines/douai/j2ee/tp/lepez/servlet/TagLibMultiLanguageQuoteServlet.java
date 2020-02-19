package org.mines.douai.j2ee.tp.lepez.servlet;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mines.douai.j2ee.tp.lepez.bean.ModelRandomCurrency;
import org.mines.douai.j2ee.tp.lepez.bean.QuoteBean;

/**
 * Servlet implementation class SimpleQuoteServlet
 */
@WebServlet("/TagLibMultiLanguageQuote")
public class TagLibMultiLanguageQuoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TagLibMultiLanguageQuoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.afficherBoutonActualiser(request,response);
	}
	
	public void afficherBoutonActualiser(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
		response.setContentType("text/html");
		if(request.getParameter("langue")==null || request.getParameter("langue").equals("Français")) {
			getServletContext().getRequestDispatcher("/Quotefr.jsp").forward(request,response);
		}
		else {
			getServletContext().getRequestDispatcher("/Quote-en.jsp").forward(request,response);
		}
		
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		this.doGet(request,response);
				
	}

}
