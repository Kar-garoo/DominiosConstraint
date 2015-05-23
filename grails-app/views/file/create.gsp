<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>


<body>
<div>
<g:if test="${flash.message == "fileError"}">
    <label>Error: formato invalido</label>
    <label>Ingrese un formato valido : ${formats} </label>
    <g:uploadForm action="createLogic">
        <input type="file" name="myFile" />
        <input type="submit" value="Upload! " />
    </g:uploadForm>
</g:if>
<g:else>
    <g:uploadForm action="createLogic">
        <input type="file" name="myFile" />
        <input type="submit" value="Upload! " />
    </g:uploadForm>
</g:else>

</div>
</body>
</html>