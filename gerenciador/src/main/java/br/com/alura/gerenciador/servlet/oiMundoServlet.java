package br.com.alura.gerenciador.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet(urlPatterns = "/oi")
public class OiMundoServlet extends HttpServlet {
	
	public OiMundoServlet() {
		System.out.println("Criando OiMundoServlet");
	}

	private static final long serialVersionUID = -4628190983452256105L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		PrintWriter out = resp.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("<h1>Oi Mundo</h1>");
		out.println("<h1>Primeiro Servlet</h1>");
		out.println("</body>");
		out.println("</html>");
		
		System.out.println("o servlet OiMundoServlet foi chamado");

	}

}
