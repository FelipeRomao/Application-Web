package br.com.treinaweb.teste.struts2.models;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "alb_albuns")
public class Album implements Serializable {

	private static final long serialVersionUID = -1327114278435446441L;

	@Id
	@GeneratedValue
	@Column(name = "alb_id")
	private int id;

	@Column(name = "alb_nome")
	private String nome;

	@Column(name = "alb_ano_lancamento")
	private int ano;

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "album")
	//Não se pode usar essa função! @JoinColumn(name = "alb_id")
	private List<Musica> musicas;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public int getAno() {
		return ano;
	}

	public void setAno(int ano) {
		this.ano = ano;
	}

	public List<Musica> getMusicas() {
		return musicas;
	}

	public void setMusicas(List<Musica> musicas) {
		this.musicas = musicas;
	}

}
