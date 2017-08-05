
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<h2>Lista de M�sicas</h2>
<br />
<a href="/TreinaWebStruts2Teste/Musica/Inserir" class="btn btn-primary">Inserir
	m�sica</a>
<br />
<br />
<s:if test="modelos.size() > 0">
	<table class="table">
		<thead>
			<th class="text-info">Id da M�sica</th>
			<th class="text-info">Nome da M�sica</th>
			<th class="text-info">�lbum</th>
			<th class="text-info">A��es</th>
		</thead>
		<tbody>
			<s:iterator value="modelos">
				<tr>
					<s:url action="Alterar" var="urlAtualizar">
						<s:param name="id" value="id" />
					</s:url>
					<s:url action="Excluir" var="urlExcluir">
						<s:param name="id" value="id" />
					</s:url>
					<s:url action="Detalhar" var="urlDetalhar">
						<s:param name="id" value="id" />
					</s:url>
					<td><s:property value="id" /></td>
					<td><s:property value="nome" /></td>
					<td><s:property value="album.nome" /></td>
					<td><s:a href="%{urlAtualizar}" class="btn btn-success">Atualizar</s:a>
						<s:a></s:a> <s:a href="%{urlExcluir}" class="btn btn-danger">Excluir</s:a>
						<s:a></s:a> <s:a href="%{urlDetalhar}" class="btn btn-primary">Detalhes</s:a></td>
				</tr>
			</s:iterator>
		</tbody>
	</table>
</s:if>
<s:else>
	<i>N�o existem m�sicas cadastradas!</i>
</s:else>
