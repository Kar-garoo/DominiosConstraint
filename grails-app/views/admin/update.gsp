<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>


<body>
<div>
    <g:renderErrors bean="${admin}" as="list"></g:renderErrors>
    <g:uploadForm controller="admin" action="updateLogic" accept-charset="UTF-8" role="form" class="form-signup">
        <g:hiddenField name="id" value="${params.id}"></g:hiddenField>
        <div>
            <g:textField name="name" value="${adminUpdate?.name}" placeholder="name"></g:textField>
        </div>
        <div>
            <g:textField name="lastname" value="${adminUpdate?.lastname}" placeholder="lastname"></g:textField>
        </div>
        <div>
            <g:textField name="age" value="${adminUpdate?.age}" placeholder="age"></g:textField>
        </div>
        <div>
            <g:textField name="username" value="${adminUpdate?.username}" placeholder="username"></g:textField>
        </div>
        <div>
            <g:textField name="password" value="${adminUpdate?.password}" placeholder="password"></g:textField>
        </div>
        <div>
            <g:select name="level" from="${0..5}" value="${adminUpdate?.level}" required=""/>
        </div>
        <div>
            <g:select name="rating" from="${0..100}"  value="${adminUpdate?.rating}" required=""/>
        </div>
        <g:select id="forums" name="forums.id" from="${dominiosconstraint.Forum.list()}" optionKey="id"
                  value="${adminInstance?.forums?.id}" class="many-to-one"/>
        <div>
            <g:submitButton name="summit" type="submit" value="Update" class="btn btn-lg btn-success btn-block" tabindex="7"></g:submitButton>
        </div>
    </g:uploadForm>
</div>
</body>
</html>
