<!DOCTYPE html>
<head>

    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet">
    <link href="${resource(dir: 'js', file: 'bootstrap.min.js')}" rel="stylesheet">
    <g:layoutHead/>
</head>
<body>
    <div class="container">

        <div class="row" style="background-color: skyblue;" role="contentinfo">
            <div class="col-md-2">
                <a href="/DominiosConstraint/">
                <img src="${resource(dir: 'images', file: 'forum.png')}" class="img-responsive">
                </a>
            </div>
        </div>

        <div class="row" style="background-color: cornflowerblue;" role="contentinfo">
            <div class="col-md-10">

            </div>

            <div class="col-md-2">
                <a href="${createLink(controller: 'user', action: 'logIn')}">
                <li class="list-group-item">LOGIN</li>
                </a>
            </div>
        </div>
        <br style="background-color: cornflowerblue;">
        <div class="row" style="background-color: powderblue;" role="contentinfo">
            <g:layoutBody/>
        </div>
        <div class="row" style="background-color: skyblue;" role="contentinfo">
            <div class="col-lg-offset-3 col-lg-6">
                <div class="text-center">
                    Creado por:
                    <li class="list-group-item">Kar-garoo</li>
                </div>

            </div>
        </div>
    </div>
</body>
</html>
