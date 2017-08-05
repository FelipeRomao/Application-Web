<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<h2>Inserção de música:</h2>
<br />
<br />

<s:form action="InserirMusica" class="form-vertical">
	<div class="row">
		<div class="form-group col-md-6">
			<label class="label-control">Título da música:</label> <input
				type="text" name="modelo.nome" class="form-control" />
		</div>
	</div>
	<div class="row">
		<div class="form-dropdown col-md-6">
			<label class="label-control">Album:</label>
			<s:select headerKey="-1" headerValue="Selecione um álbum"
				list="albuns" name="albumId" listKey="id" listValue="nome"
				class="btn btn-primary dropdown-toggle" />
		</div>
	</div>
	<div class="row">
		<s:submit value="Enviar" class="btn btn-success" />
	</div>
</s:form>
