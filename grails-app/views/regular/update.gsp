<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>


<body>
<div>
    <g:renderErrors bean="${regular}" as="list"></g:renderErrors>
    <g:uploadForm controller="regular" action="updateLogic" accept-charset="UTF-8" role="form" class="form-signup">
        <g:hiddenField name="id" value="${params.id}"></g:hiddenField>
        <div>
            <g:textField name="name" value="${regularUpdate?.name}" placeholder="name"></g:textField>
        </div>
        <div>
            <g:textField name="lastname" value="${regularUpdate?.lastname}" placeholder="lastname"></g:textField>
        </div>
        <div>
            <g:textField name="age" value="${regularUpdate?.age}" placeholder="age"></g:textField>
        </div>
        <div>
            <g:textField name="username" value="${regularUpdate?.username}" placeholder="username"></g:textField>
        </div>
        <div>
            <g:textField name="password" value="${regularUpdate?.password}" placeholder="password"></g:textField>
        </div>

        <g:hiddenField name="strikesNumber" value="${regularUpdate?.strikesNumber}" ></g:hiddenField>
        <g:hiddenField name="startNumber" value="${regularUpdate?.startNumber}" ></g:hiddenField>
        <g:hiddenField name="postViews" value="${regularUpdate?.postViews}" ></g:hiddenField>
        <g:hiddenField name="post" value="${regularUpdate?.post}" ></g:hiddenField>
        <div>
            <g:submitButton name="summit" type="submit" value="Update" class="btn btn-lg btn-success btn-block" tabindex="7"></g:submitButton>
        </div>
    </g:uploadForm>
</div>
</body>
</html>
