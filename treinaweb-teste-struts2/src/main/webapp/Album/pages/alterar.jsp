<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<h2>Alteração de álbum</h2>
<s:form action="AlterarAlbum" class="form-vertical">
	<div class="row">
		<div class="form-group col-md-6">
			<input type="hidden" name="modelo.id" />
		</div>
	</div>
	<div class="row">
		<div class="form-group col-md-6">
			<label class="label-control">Título do álbum:</label> <input
				type="text" name="modelo.nome" class="form-control" />
		</div>
	</div>
	<div class="row">
		<div class="form-group col-md-6">
			<label class="label-control">Ano de lançamento:</label> <input
				type="text" name="modelo.ano" class="form-control" />
		</div>
	</div>
	<s:submit value="Enviar" class="btn btn-success" />
</s:form>
<br />
<br />
<div class="row">
	<div class="form-group col-md-6">
		<a href="/TreinaWebStruts2Teste/Album/ListarAlbuns"
			class="btn btn-primary">Voltar á lista de álbuns</a>
	</div>
</div>
