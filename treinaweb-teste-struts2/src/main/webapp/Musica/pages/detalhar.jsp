<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<h2>Detalhes de música</h2>
<br />
<div class="row">
	<div class="form-group col-md-6 col-sm-4 col-xs-2">
		<label class="label-control">Código da música:</label>
		<s:textfield name="modelo.id" disabled="true" class="form-control" />
	</div>
</div>
<div class="row">
	<div class="form-group col-md-6 col-sm-4 col-xs-2">
		<label class="label-control">Título da música:</label>
		<s:textfield name="modelo.nome" disabled="true" class="form-control" />
	</div>
</div>
<div class="row">
	<div class="form-group col-md-6 col-sm-4 col-xs-2">
		<label class="label-control">Album:</label>
		<s:textfield name="modelo.album.nome" disabled="true" class="form-control" />
	</div>
</div>
<a href="/TreinaWebStruts2Teste/Album/ListarAlbuns"
	class="btn btn-warning">Lista de álbuns</a>
<br />
<br />
<a href="/TreinaWebStruts2Teste/Musica/ListarMusicas"
	class="btn btn-danger">Lista de músicas</a>