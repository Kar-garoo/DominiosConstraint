<%--
  Created by IntelliJ IDEA.
  User: sergioalejandrodiazpinilla
  Date: 12/05/15
  Time: 3:52 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title></title>
</head>
<body>
<ul>
    <g:each in="${forumList?}">
            <li>${it}</li>
    </g:each>
</ul>
</body>
</html>