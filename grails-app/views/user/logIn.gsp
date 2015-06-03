

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
  <title>LogIn</title>
</head>
<body>

</br>

<div class="col-lg-offset-4 col-lg-4">
    <h3 class="text-center">Ingresa tus credenciales para autenticarte</h3>
    <g:if test="${flash.message == "Login error"}">
        <li class="list-group-item-danger"> Error Usuario o Contraseña</li>
    </g:if>
    <g:uploadForm action="logInLogic">
        <g:textField name="username" placeholder="Usuario" class="form-control"></g:textField>
        <g:passwordField name="password" placeholder="password" class="form-control"></g:passwordField>
        <div>
            <g:submitButton name="summit" type="submit" value="LogIn" class="btn btn-lg btn-success btn-block form-control" tabindex="7"></g:submitButton>
        </div>
    </g:uploadForm>
</br>
</div>



</body>
</body>
</html>