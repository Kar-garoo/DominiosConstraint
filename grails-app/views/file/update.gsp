<%--
  Created by IntelliJ IDEA.
  User: Miguel
  Date: 23/05/2015
  Time: 2:00 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title>UpdateFile</title>
</head>

<body>
<div>
    <g:if test="${flash.message == "fileError"}">
        <label>Error: formato invalido</label>
        <label>Ingrese un formato valido : ${formats} </label>
        <g:uploadForm action="update">
            <input type="file" name="myFile" />
            <input type="submit" value="Upload! " />
        </g:uploadForm>
    </g:if>
    <g:else>
        <g:uploadForm action="update">
            <input type="file" name="myFile" />
            <input type="submit" value="Upload! " />
        </g:uploadForm>
    </g:else>
</div>
</body>
</html>