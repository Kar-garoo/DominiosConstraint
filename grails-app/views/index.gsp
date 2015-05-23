<%@ page import="dominiosconstraint.Forum" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>
</head>
<body>
    <div class="col-md-6">
        <h2>Bienbenido a Foro 2.0</h2>
        <h3>Consultar:</h3>
        <ul class="list-group">
        <a href="${createLink(controller: 'forum',action: 'read')}"
            <li class="list-group-item">
                Foro
            </li>
        </a>
        <a href="${createLink(controller: 'user',action: 'userTipe')}"
            <li class="list-group-item">
                Usuarios
            </li>
        </a>
        <a href="${createLink(controller: 'post',action: 'read')}"
            <li class="list-group-item">
                Entradas
            </li>
        </a>
        <a href="${createLink(controller: 'file',action: 'read')}"
            <li class="list-group-item">
                Archivos
            </li>
        </a>
        </ul>
    </div>

    <div class="col-md-3">
        <h3>Ultimas Entradas</h3>
        <g:set var="numberPost" value="${0}"></g:set>
        <g:set var="postList" value="${dominiosconstraint.Post.list().sort{it.dateCreated}.reverse()}"></g:set>
        <g:if test="${postList.size()!=0}">
        <ul class="list-group">
            <g:while test="${numberPost < 10}">
                <li class="list-group-item">
                    ${postList?.get(numberPost)?.topic}
                </li>
                <%numberPost++%>
            </g:while>
        </ul>
        </g:if>
        <g:else>
            <ul class="list-group">
            <li class="list-group-item">
                No hay entradas
            </li>
            </ul>
        </g:else>
    </div>
    <div class="col-md-3">

        <h3>Foros mas comentados</h3>
        <g:set var="numberForum" value="${0}"></g:set>
        <g:set var="forumList" value="${dominiosconstraint.Forum.list().sort{it.post}.reverse()}"></g:set>
        <g:if test="${forumList.size()!=0}">
            <ul class="list-group">
                <g:while test="${numberForum < 10}">
                    <li class="list-group-item">
                        ${forumList.get(numberForum).name}
                    </li>
                    <%numberForum++%>
                </g:while>
            </ul>
        </g:if>
        <g:else>
            <ul class="list-group">
                <li class="list-group-item"> No hay foros</li>
            </ul>
        </g:else>
    </div>
</body>
</html>