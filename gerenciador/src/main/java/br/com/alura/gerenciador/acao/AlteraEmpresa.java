package br.com.alura.gerenciador.acao;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.alura.gerenciador.modelo.Banco;
import br.com.alura.gerenciador.modelo.Empresa;

public class AlteraEmpresa implements Acao {

	public String executa(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

//		System.out.println("Ação: Altera Empresa");

		String nomeEmpresa = request.getParameter("nome");
		String dataAberturaParam = request.getParameter("dataAbertura");
		String paramId = request.getParameter("id");
		Integer id = Integer.valueOf(paramId);

		Date dataAbertura = null;
		try {
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
			dataAbertura = sdf.parse(dataAberturaParam);
		} catch (Exception e) {
			throw new ServletException(e);
		}

		Banco banco = new Banco();
		Empresa empresa = banco.buscaEmpresaPelaId(id);
		empresa.setNome(nomeEmpresa);
		empresa.setDataAbertura(dataAbertura);

		return "redirect:entrada?acao=ListaEmpresas";

	}

}
