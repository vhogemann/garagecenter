
<%@ page import="garagecenter.Client" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'client.label', default: 'Client')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-client" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<th><g:message code="client.account.label" default="Account" /></th>
			
				<g:sortableColumn property="birth" title="${message(code: 'client.birth.label', default: 'Birth')}" />
			
				<g:sortableColumn property="cpf" title="${message(code: 'client.cpf.label', default: 'Cpf')}" />
			
				<th><g:message code="client.location.label" default="Location" /></th>
			
				<g:sortableColumn property="name" title="${message(code: 'client.name.label', default: 'Name')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${clientInstanceList}" status="i" var="clientInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${clientInstance.id}">${fieldValue(bean: clientInstance, field: "account")}</g:link></td>
			
				<td><g:formatDate date="${clientInstance.birth}" /></td>
			
				<td>${fieldValue(bean: clientInstance, field: "cpf")}</td>
			
				<td>${fieldValue(bean: clientInstance, field: "location")}</td>
			
				<td>${fieldValue(bean: clientInstance, field: "name")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${clientInstanceTotal}" />
	</div>
</section>

</body>

</html>
