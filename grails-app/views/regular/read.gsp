<%--
  Created by IntelliJ IDEA.
  User: sergioalejandrodiazpinilla
  Date: 21/05/15
  Time: 2:32 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
  <title></title>
</head>
<body>
<g:link action="create">Create</g:link>
<ul>
    <g:each in="${dominiosconstraint.Regular.list()}">
        <li>
            <g:link action="show" id="${it.id}"> ${it.name} </g:link>
             <g:link action="update" id="${it.id}">Update ${it.id}</g:link> <g:link action="delete" id="${it.id}">Delete ${it.id}</g:link>
        </li>
    </g:each>
</ul>




</body>
</html>