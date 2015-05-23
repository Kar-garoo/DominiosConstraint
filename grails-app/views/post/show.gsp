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
<li>topic: ${postShow.topic}</li>
<li>dateCreated: ${postShow?.dateCreated}</li>
<li>lastUpdate: ${postShow.lastUpdate}</li>
    <li>owner: ${postShow?.owner_id?.id}</li>
    <li>forum: ${postShow?.fatherForum_id?.id}</li>
    <li>allowed: ${postShow?.itsAllowed}</li>
    <li>rate: ${postShow?.rate}</li>
    <li>Files:
        <ul>
    <g:each in="${postShow.files}">
        <li>
            ${it.id}
        </li>
    </g:each>
        </ul>
</li>
    <li>Comments:
        <ul>
            <g:each in="${postShow.comments}">
                <li>
                    ${it}
                </li>
            </g:each>
        </ul>
    </li>
</ul>
</body>
</html>