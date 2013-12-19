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

                

                <form:form action="pessoa_adiciona" modelAttribute="pessoa" id="form_addpessoa" enctype="multipart/form-data">
                    <h1>Adicionar Pessoa</h1>                                                                                                  

                    <fieldset> 

                        <label>Nome:</label>                        
                        <input type="text" name="nome" />                             
                       
                        <span style="clear: both; display: block"></span>

                        <input class="enviar_form" type="submit" value="Adicionar"/>

                    </fieldset>
                </form:form>    
               
            </div>

        </div>

        <div id="rodape"></div>

    </body>
</html>

