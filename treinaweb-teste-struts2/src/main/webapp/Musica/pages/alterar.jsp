<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<h2>Alteração de música</h2>
<br />
<br />
<s:form action="AlterarMusica" class="form-vertical">
	<div class="row">
		<input type="hidden" name="modelo.id" />
	</div>
	<div class="row">
		<div class="form-group col-md-6">
			<label class="label-control">Título da música:</label>
			<input type="text" name="modelo.nome" class="form-control" />
		</div>
	</div>
	<div class="row">
		<div class="dropdown-group col-md-6">
			<label class="label-control">Album:</label>
			<s:select headerKey="-1" headerValue="Selecione um álbum"
				list="albuns" name="albumId" listKey="id" listValue="nome"
				class="btn btn-primary dropdown-tiggle" />
		</div>
	</div>
	<s:submit value="Enviar" class="btn btn-success" />
</s:form>
