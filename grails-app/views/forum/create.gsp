<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>


	<body>
    <div>
    <g:renderErrors bean="${forum}" as="list"></g:renderErrors>
        <g:uploadForm controller="forum" action="createLogic" accept-charset="UTF-8" role="form" class="form-signup">
            <div>
            <g:textField name="name" placeholder="name"></g:textField>
            </div>
            <div>
            <g:textField name="category" placeholder="category"></g:textField>
            </div>
            <div>
                <g:select id="admin" name="admin.id" from="${dominiosconstraint.Admin.list()}" optionKey="id"
                          value="${forumInstance?.Admin?.id}" class="one-to-one"/>
            </div>


            <div>
                <g:submitButton name="summit" type="submit" value="Register" class="btn btn-lg btn-success btn-block" tabindex="7"></g:submitButton>
            </div>
        </g:uploadForm>
    </div>
    </body>
</html>
