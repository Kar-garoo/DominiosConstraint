<%--
  Created by IntelliJ IDEA.
  User: JK
  Date: 22/05/2015
  Time: 04:35 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title>Show</title>
</head>

<body>
<g:link action="index">List</g:link>
<ul>
<li>name: ${forumShow.name}</li>
<li>dateCreated: ${forumShow.dateCreated}</li>
<li>category: ${forumShow.category}</li>
    <li>admin: ${forumShow?.admin?.id}</li>
    <li>Posts:
        <ul>
    <g:each in="${forumShow.post}">
        <li>
            ${it.id}
        </li>
    </g:each>
        </ul>
</li>
</ul>
</body>
</html>