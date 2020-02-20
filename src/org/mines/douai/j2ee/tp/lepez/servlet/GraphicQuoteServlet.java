package org.mines.douai.j2ee.tp.lepez.servlet;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mines.douai.j2ee.tp.lepez.bean.ModelRandomCurrency;

import java.awt.geom.Ellipse2D;
import java.awt.geom.Line2D;
import java.awt.geom.Path2D;
import java.awt.Color;

/**
 * Servlet implementation class GraphicQuoteServlet
 */
@WebServlet("/QuoteRating")
public class GraphicQuoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Path2D drawPolyline( int[] yPoints) {
		
			Path2D path = new Path2D.Float(Path2D.WIND_EVEN_ODD, 30);
			path.moveTo(10, yPoints[0]);
			for (int i = 1; i < 30; i++) {
				path.lineTo(10+ i*10, yPoints[i]);
			}
			return path;
	}
	
	public int[] generatePoints(int maxValue) {
		int currencyEvolution[] = new int[30];
		for(int i=0; i<30; i++) {
			currencyEvolution[i]= generateRandomPrice(maxValue);	
		}
		
		return currencyEvolution;
	}
	
	public int generateRandomPrice(int max){
		Random random = new Random();
		int price = random.nextInt(max+1);
		return price;
		
	}
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GraphicQuoteServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("image/png");
		ServletOutputStream out = response.getOutputStream();
		String selectedCurrency = request.getParameter("option");
		if (selectedCurrency.equals("Bitcoin")) {
			createImage(out, Color.red);
		} else if (selectedCurrency.equals("Litecoin")) {
			createImage(out,Color.blue);
		} else if(selectedCurrency.equals("Namecoin")) {
			createImage(out,Color.green);
		}
	}

	private void createImage(ServletOutputStream out, Color color) throws IOException {
		BufferedImage bufferedImage = new BufferedImage(210, 210, BufferedImage.TYPE_INT_RGB);
		Graphics2D g2d = bufferedImage.createGraphics();
		// Draw on the image
		g2d.setColor(Color.white);
		g2d.fillRect(0, 0, 210, 210);
		g2d.setColor(color.black);
		g2d.fillRect(1, 1, 2, 209);
		g2d.fillRect(1, 209, 209, 3);
		g2d.setPaint(color);
		g2d.draw(drawPolyline(generatePoints(100)));
		ImageIO.write(bufferedImage, "png", out);
		g2d.dispose();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
