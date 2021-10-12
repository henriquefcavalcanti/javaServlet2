package br.com.alura.gerenciador.modelo;

import java.util.Date;

public class Empresa {

	private Integer id;
	private String nome;
	private Date dataAbertura = new Date();

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getId() {
		return id;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getNome() {
		return nome;
	}

	public void setDataAbertura(Date dataAbertura) {
		this.dataAbertura = dataAbertura;
	}

	public Date getDataAbertura() {
		return dataAbertura;
	}

}
