package br.com.alura.gerenciador.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.alura.gerenciador.modelo.Banco;
import br.com.alura.gerenciador.modelo.Empresa;

//@WebServlet("/alteraEmpresa")
public class AlteraEmpresaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String nomeEmpresa = request.getParameter("nome");
		String dataAberturaParam = request.getParameter("dataAbertura");
		String paramId = request.getParameter("id");
		Integer id = Integer.valueOf(paramId);

		Date dataAbertura = null;
		try {
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
			dataAbertura = sdf.parse(dataAberturaParam);
		} catch (ParseException e) {
			throw new ServletException(e);
		}

		Banco banco = new Banco();
		Empresa empresa = banco.buscaEmpresaPelaId(id);
		empresa.setNome(nomeEmpresa);
		empresa.setDataAbertura(dataAbertura);

		response.sendRedirect("listaEmpresas");

	}

}