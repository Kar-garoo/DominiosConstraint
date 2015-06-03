<%--
  Created by IntelliJ IDEA.
  User: Daniel
  Date: 02/06/2015
  Time: 5:36 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title>BUSCAR</title>
</head>

<body>

<g:uploadForm action="buscarLogic">
    <g:textField name="username" placeholder="BuscarUsuario" class="form-control"></g:textField>
    <div>
        <g:submitButton name="summit" type="submit" value="BUSCAR" class="btn btn-lg btn-success btn-block form-control" tabindex="7"></g:submitButton>
    </div>
</g:uploadForm>

</body>
</html>