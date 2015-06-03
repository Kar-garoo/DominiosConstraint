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

<g:if test="${user}">
    <ul>
        <li>
            Username: ${user.username}
        </li>

        <li>
            Name: ${user.name}
        </li>
        <li>
            Last Name: ${user.lastname}
        </li>

        <li>
            Age: ${user.age}
        </li>
    </ul>
</g:if>
<g:else>
    ERROR:     USUSARIO NO ENCONTRADO !!!
</g:else>


</body>
</html>