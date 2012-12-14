
<%@ page import="garagecenter.Client" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'client.label', default: 'Client')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-client" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="client.account.label" default="Account" /></td>
				
				<td valign="top" class="value"><g:link controller="user" action="show" id="${clientInstance?.account?.id}">${clientInstance?.account?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="client.birth.label" default="Birth" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${clientInstance?.birth}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="client.cpf.label" default="Cpf" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: clientInstance, field: "cpf")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="client.location.label" default="Location" /></td>
				
				<td valign="top" class="value"><g:link controller="location" action="show" id="${clientInstance?.location?.id}">${clientInstance?.location?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="client.name.label" default="Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: clientInstance, field: "name")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
