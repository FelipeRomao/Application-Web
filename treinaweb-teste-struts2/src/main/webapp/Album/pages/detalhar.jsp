<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<h2>Detalhes de álbum</h2>
<br />
<div class="row">
	<div class="form-group col-md-4 col-sm-4 col-xs-8">
		<label class="label-control">Código do álbum:</label>
		<s:textfield name="modelo.id" disabled="true" class="form-control" />
	</div>
</div>
<div class="row">
	<div class="form-group col-md-4 col-sm-4 col-xs-8">
		<label class="label-control">Título do álbum:</label>
		<s:textfield name="modelo.nome" disabled="true" class="form-control" />
	</div>
</div>
<div class="row">
	<div class="form-group col-md-4 col-sm-4 col-xs-8">
		<label class="label-control">Ano de lançamento:</label>
		<s:textfield name="modelo.ano" disabled="true" class="form-control" />
	</div>
</div>
<a href="/TreinaWebStruts2Teste/Album/ListarAlbuns"
	class="btn btn-primary">Voltar á lista de álbuns</a>
