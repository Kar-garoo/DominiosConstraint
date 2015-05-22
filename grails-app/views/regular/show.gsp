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
<li>name: ${regularShow.name}</li>
<li>lastname: ${regularShow.lastname}</li>
<li>username: ${regularShow.username}</li>
    <li>password: ${regularShow.password}</li>
    <li>age: ${regularShow.age}</li>
    <li>postViews: ${regularShow.postViews}</li>
    <li>strikesNumber: ${regularShow.strikesNumber}</li>
    <li>startNumber: ${regularShow.startNumber}</li>

</ul>
</body>
</html>