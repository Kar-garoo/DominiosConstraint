<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>


	<body>
    <div>
    <g:renderErrors bean="${regular}" as="list"></g:renderErrors>
        <g:uploadForm controller="regular" action="createLogic" accept-charset="UTF-8" role="form" class="form-signup">
            <div>
            <g:textField name="name" placeholder="name"></g:textField>
            </div>
            <div>
            <g:textField name="lastname" placeholder="lastname"></g:textField>
            </div>
            <div>
            <g:textField name="age" placeholder="age"></g:textField>
            </div>
            <div>
            <g:textField name="username" placeholder="username"></g:textField>
            </div>
            <div>
            <g:textField name="password" placeholder="password"></g:textField>
            </div>

            <div>
            <g:hiddenField name="strikesNumber" value='0' ></g:hiddenField>
            <g:hiddenField name="startNumber" value='0' ></g:hiddenField>
            <g:hiddenField name="postViews" value='0' ></g:hiddenField>
            <g:hiddenField name="post" value='null' ></g:hiddenField>
            </div>

                <g:submitButton name="summit" type="submit" value="Register" class="btn btn-lg btn-success btn-block" tabindex="7"></g:submitButton>
            </div>
        </g:uploadForm>
    </div>
    </body>
</html>
