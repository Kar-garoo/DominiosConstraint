<%--
  Created by IntelliJ IDEA.
  User: sergioalejandrodiazpinilla
  Date: 22/05/15
  Time: 7:39 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>
</head>

<body>
    <div class="col-lg-offset-2 col-lg-8">
        <ul class="list-group">
            <a href="${createLink(controller: 'admin',action: 'index')}">
                <li class="list-group-item"> Admin</li>
            </a>
            <a href="${createLink(controller: 'regular',action: 'index')}">
                <li class="list-group-item"> Regular</li>
            </a>
        </ul>
    </div>
</body>
</html>