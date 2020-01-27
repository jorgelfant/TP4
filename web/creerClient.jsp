<%--
  Created by IntelliJ IDEA.
  User: jorge.carrillo
  Date: 1/27/2020
  Time: 3:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Création d'un client</title>
    <link type="text/css" rel="stylesheet" href="<c:url value="/inc/style.css"/>" />
</head>
<body>
<c:import url="/inc/menu.jsp" />
<p class="info">${ message }</p>

<div>
    <form method="get" action="<c:url value="/creationClient"/>">
        <fieldset>
            <legend>Informations client</legend>
            <c:import url="/inc/inc_client_form.jsp" />
        </fieldset>
        <input type="submit" value="Valider"  />
        <input type="reset" value="Remettre à zéro" /> <br />
    </form>
</div>
</body>
</html>
