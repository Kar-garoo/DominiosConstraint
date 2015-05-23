<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>


<body>
<div>
    <g:renderErrors bean="${forum}" as="list"></g:renderErrors>
    <g:uploadForm controller="forum" action="updateLogic" accept-charset="UTF-8" role="form" class="form-signup">
        <g:hiddenField name="id" value="${params.id}"></g:hiddenField>
        <div>
            <g:textField name="name" value="${forumUpdate?.name}" placeholder="name"></g:textField>
        </div>
        <div>
            <g:textField name="category" value="${forumUpdate?.category}" placeholder="category"></g:textField>
        </div>
        <div>

            <g:select id="admin" name="admin.id" from="${dominiosconstraint.Admin.list()}" optionKey="id"
                      value="${forumInstance?.admin?.id}" class="one-to-one"/>
        </div>
        <g:hiddenField name="post" value="${regularUpdate?.post}" ></g:hiddenField>
        <div>
            <g:submitButton name="summit" type="submit" value="Update" class="btn btn-lg btn-success btn-block" tabindex="7"></g:submitButton>
        </div>
    </g:uploadForm>
</div>
</body>
</html>
