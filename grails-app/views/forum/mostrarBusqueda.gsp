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
    <title>BUSCAR FOROS</title>
</head>

<body>

<g:if test="${forum}">
    <ul>
        <li>
            Name: ${forum.name}
        </li>

        <li>
            Fecha: ${forum.dateCreated}
        </li>
        <li>
            Ctegoria: ${forum.category}
        </li>

    </ul>
</g:if>
<g:else>
    ERROR:     FORO NO ENCONTRADO !!!
</g:else>


</body>
</html>