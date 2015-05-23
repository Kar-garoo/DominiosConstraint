
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title>Read</title>
</head>
<body>
<h1>File</h1>
<g:link action="create">Create</g:link>
<ul>
    <g:each in="${fileInstance}">
        <li>
            File ${it.id} ${it.fileType} ${it.size} <g:link action="update" id="${it.id}"> Update ${it.id}</g:link><g:link action="share" id="${it.id}">Share ${it.id}</g:link><g:link action="download" id="${it.id}">Download ${it.id}</g:link> <g:link action="delete" id="${it.id}">Delete ${it.id}</g:link>
        </li>
    </g:each>
</ul>




</body>
</html>