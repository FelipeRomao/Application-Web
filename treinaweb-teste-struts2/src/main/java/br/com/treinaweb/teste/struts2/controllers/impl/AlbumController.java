package br.com.treinaweb.teste.struts2.controllers.impl;

import br.com.treinaweb.teste.struts2.controllers.interfaces.Controller;
import br.com.treinaweb.teste.struts2.dao.impl.AlbumDao;
import br.com.treinaweb.teste.struts2.models.Album;

public class AlbumController extends Controller<Album, Integer> {

	
	public AlbumController() {
		super(new AlbumDao());
	}

	@Override
	public String listar() {
		try {
			this.setModelos(this.dao.todos());
			return SUCCESS;
		} catch (Exception e) {
			return ERROR;
		}
	}

	@Override
	public String detalhar() {
		try {
			this.setModelo(dao.porId(this.getId()));
			return SUCCESS;
		} catch (Exception e) {
			return ERROR;
		}
	}

	@Override
	public String inserir() {
		try {
			dao.inserir(this.getModelo());
			return SUCCESS;
		} catch (Exception e) {
			return ERROR;
		}
	}

	@Override
	public String prepararAlterar() {
		try {
			Album album = dao.porId(this.getId());
			setModelo(album);
			return SUCCESS;
		} catch (Exception e) {
			return ERROR;
		}
	}

	@Override
	public String alterar() {
		try {
			dao.atualizar(this.getModelo());
			return SUCCESS;
		} catch (Exception e) {
			return ERROR;
		}
	}

	@Override
	public String deletar() {
		try {
			Album album = dao.porId(this.getId());
			dao.deletar(album);
			return SUCCESS;
		} catch (Exception e) {
			return ERROR;
		}
	}

}
