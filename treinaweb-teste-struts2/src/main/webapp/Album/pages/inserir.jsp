<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<h2>Inser��o de �lbum</h2>
<br />
<s:form action="InserirAlbum" class="form-vertical">
	<div class="row">
		<div class="form-group col-md-6">
			<label class="label-control">T�tulo do �lbum:</label>
			<input type="text" name="modelo.nome" class="form-control" />
		</div>
	</div>
	<div class="row">
		<div class="form-group col-md-6">
			<label class="label-control">Ano de lan�amento:</label>
			<input type="text" name="modelo.ano" class="form-control" />
		</div>
	</div>
	<s:submit value="Enviar" class="btn btn-success" />
</s:form>
