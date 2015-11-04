<%@ page import="culinairegrails.Person" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="base"/>
    <title>Perfil: ${person.username}</title>
</head>
<body>
<div class="container">
    <div class="texto">
        <div class="cuerpo">
            <p class="tit" id="" style="font-size: 40px">Bienvenido: ${person.username}</p>
            <div class="row">
                <div class="col-sm-3">
                    <figure>
                        <g:if test="${person.photo != null}">
                            <img class="img-responsive img-thumbnail" src="${createLink(controller:'person', action:'displayGraph', params: [name:person.name])}" />
                        </g:if>
                        <g:else>
                            <g:img dir="images" file="icono.jpg" class="img-responsive img-thumbnail"/>
                        </g:else>
                    </figure>
                </div>
                <div class="col-sm-9">
                    <g:if test="${person.recipes.size() > 0}">
                    <p id="titulo">Tus recetas:</p>
                    <g:each var="recipe" in="${person.recipes}">
                        - ${recipe}<br>
                    </g:each>
                    </g:if>
                    <g:else>
                        <p id="titulo">No tienes recetas.</p>
                    </g:else>
                </div>
                <div class="row">
                    <div class="col-sm-9">
                    </div>
                    <div class="col-sm-3">
                        <a class="btn btn-primary btn-lg center-block botones b2" href="${createLink(action: 'publicar')}" style="margin-right: 2%" >Publicar</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>