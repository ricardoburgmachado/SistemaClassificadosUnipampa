<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<li><a href="<c:url value="/lista_pessoas"/>" class="mais">Listar Pessoas</a>
    <ul>
        <li><a href="<c:url value="/pessoa_adiciona_show"/>">Adicionar pessoa</a></li> 	
    </ul> 
</li>
