<%@ page import="garagecenter.Client" %>



			<div class="control-group fieldcontain ${hasErrors(bean: clientInstance, field: 'account', 'error')} required">
				<label for="account" class="control-label"><g:message code="client.account.label" default="Account" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="account" name="account.id" from="${garagecenter.User.list()}" optionKey="id" required="" value="${clientInstance?.account?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: clientInstance, field: 'account', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: clientInstance, field: 'birth', 'error')} required">
				<label for="birth" class="control-label"><g:message code="client.birth.label" default="Birth" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<bs:datePicker name="birth" precision="day"  value="${clientInstance?.birth}"  />
					<span class="help-inline">${hasErrors(bean: clientInstance, field: 'birth', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: clientInstance, field: 'cpf', 'error')} ">
				<label for="cpf" class="control-label"><g:message code="client.cpf.label" default="Cpf" /></label>
				<div class="controls">
					<g:textField name="cpf" value="${clientInstance?.cpf}"/>
					<span class="help-inline">${hasErrors(bean: clientInstance, field: 'cpf', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: clientInstance, field: 'location', 'error')} required">
				<label for="location" class="control-label"><g:message code="client.location.label" default="Location" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="location" name="location.id" from="${garagecenter.Location.list()}" optionKey="id" required="" value="${clientInstance?.location?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: clientInstance, field: 'location', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: clientInstance, field: 'name', 'error')} ">
				<label for="name" class="control-label"><g:message code="client.name.label" default="Name" /></label>
				<div class="controls">
					<g:textField name="name" value="${clientInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: clientInstance, field: 'name', 'error')}</span>
				</div>
			</div>

