<%--
  Created by IntelliJ IDEA.
  User: sergioalejandrodiazpinilla
  Date: 22/05/15
  Time: 6:46 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="mainProfiles"/>
    <title>Welcome to Grails</title>
</head>
<body>
<div class="row" style="background-color: cornflowerblue;" role="contentinfo">
    <div class="col-md-6">
        <li class="list-group-item">Bienvenido: ${regular.username}</li>
    </div>
    <div class="col-md-2">
        <li class="list-group-item">Mi Perfil</li>
    </div>
    <div class="col-md-2">
        <li class="list-group-item">Mis Post</li>
    </div>
    <div class="col-md-2">
        <a href="${createLink(controller: 'user', action: 'logOut')}">
            <li class="list-group-item">LogOut</li>
        </a>
    </div>
</div>
<div class="row" style="background-color: powderblue;" role="contentinfo">
    <br style="background-color: cornflowerblue;">
    <div class="col-lg-offset-2 col-lg-8" style="background-color: #ffffff;">
        <h2>Perfil de Usuario</h2>

        <p>Tipo de usuario Regular</p>
        <p>Post views: ${regular.postViews}</p>
        <p>Strikes Number: ${regular.strikesNumber}</p>
        <p>Start Number:${regular.startNumber}</p>
    </div>
</div>
</body>
</html>