<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<h2>Listagem de Álbuns</h2>
<br />
<a href="/TreinaWebStruts2Teste/Album/Inserir" class="btn btn-primary">Inserir álbum</a>
<br />
<br />
<s:if test="modelos.size() > 0">
	<table class="table">
		<thead>
			<th class="text-muted">Id do álbum</th>
			<th class="text-muted">Nome do álbum</th>
			<th class="text-muted">Ano do álbum</th>
			<th class="text-muted">Ações</th>
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
					<td><s:property value="ano" /></td>
					<td><s:a href="%{urlAtualizar}" class="btn btn-success">Atualizar</s:a>
						<s:a></s:a> <s:a href="%{urlExcluir}" class="btn btn-danger">Excluir</s:a>
						<s:a></s:a> <s:a href="%{urlDetalhar}" class="btn btn-primary">Detalhes</s:a></td>
				</tr>
			</s:iterator>
		</tbody>
	</table>
</s:if>
<s:else>
	<i>Não existem álbuns cadastrados!</i>
</s:else>
