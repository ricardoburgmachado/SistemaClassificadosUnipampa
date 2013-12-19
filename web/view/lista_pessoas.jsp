<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<c:url value="/recursos/css/style.css"/>" />
        <!--[if IE]>
            <link rel="stylesheet" type="text/css" href="<c:url value="/recursos/css/iehacks.css"/>" />
        <![endif]-->    

        
        
        <title>JSP Page</title>
    </head>

    

        <div id="topo">
            <div id="logo_brasil"></div> 
            <c:import url="sub_topo.jsp"/>
        </div>

        <div id="all">

            <div id="menu">
                <c:import url="menu.jsp"/>
            </div>     


            <div id="conteudo_interno">

                <h1>Listar Pessoas</h1>    
                
                     <table id="lista_pessoas">                    
                    <c:choose>
                        <c:when test="${pessoas != null && pessoas.size() > 0}">

                            <tr class="sub_titulo">
                                <td class="titulo">NOME</td>
                                <td class="funcoes">AÇÕES</td>
                            </tr>
                            <c:forEach items="${pessoas}" var="pessoa">

                                <tr class="linealt">
                                <a>
                                    <td class="titulo">${pessoa.nome}</td>
                                    <td class="edita"><a title="Clique aqui para editar a pessoa" href="pessoa_edita_show?id=${pessoa.id}"></a></td>
                                    
                                </a>
                                </tr>
                            </c:forEach>


                        </c:when>
                        <c:otherwise>
                            <tr>
                                <td class="titulo">
                                    Não existe nenhuma pessoa cadastrada!
                                </td>
                            </tr>
                        </c:otherwise>
                    </c:choose>

                </table>
                
                

            </div><!-- fecha div conteúdo interno -->

        </div>

        <div id="rodape"></div>

    </body>
</html>

