<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>


	<body>
    <div>
    <g:renderErrors bean="${post}" as="list"></g:renderErrors>
        <g:uploadForm controller="post" action="createLogic" accept-charset="UTF-8" role="form" class="form-signup">
            <div>
            <g:textField name="topic" placeholder="topic"></g:textField>
            </div>
            <div>
                <g:select id="owner_id" name="owner_id.id" from="${dominiosconstraint.Regular.list()}" optionKey="id"
                          value="${postInstance?.owner_id?.id}" class="one-to-one"/>
            </div>
            <div>
                <g:select id="fatherForum_id" name="fatherForum_id.id" from="${dominiosconstraint.Forum.list()}" optionKey="id"
                          value="${postInstance?.fatherForum_id?.id}" class="one-to-one"/>
            </div>
            <div>
                <g:checkBox name="itsAllowed" value="${true}" />
            </div>


            <div>
                <g:submitButton name="summit" type="submit" value="Register" class="btn btn-lg btn-success btn-block" tabindex="7"></g:submitButton>
            </div>
        </g:uploadForm>
    </div>
    </body>
</html>
