<%--
  Created by IntelliJ IDEA.
  User: jorge.carrillo
  Date: 1/27/2020
  Time: 3:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                           TP Fil rouge - Étape 2
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Dans ce second opus de notre fil rouge, vous allez appliquer ce que vous avez découvert à propos de la JSTL Core et
des bonnes pratiques de développement.

Objetifs
********
Les précédents chapitres concernant uniquement la vue, vous allez ici principalement vous consacrer à la reprise des
pages JSP que vous aviez créées lors du premier TP.

Je vous conseille de repartir sur la base de la correction que je vous ai donnée pour la première étape, cela facilitera
votre compréhension des étapes et corrections à venir.

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                            Utilisation de la JSTL
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

L'objectif est modeste et le programme léger, mais l'important est que vous compreniez ce que vous faites et que vous
soyez à l'aise avec le système des balises de la JSTL. Je vous demande de :

       * sécuriser l'affichage des données saisies par l'utilisateur contre les failles XSS, dans vos pages
         afficherClient.jsp et afficherCommande.jsp ;

       * gérer dynamiquement les différents liens et URL qui interviennent dans le code de vos pages JSP ;

       * créer un menu, qui ne contiendra pour le moment que deux liens respectivement vers creerClient.jsp
         et creerCommande.jsp, et l'intégrer à toutes vos pages existantes ;

       * isoler la partie du formulaire responsable de la création d'un client dans une page JSP à part, et
         modifier les deux formulaires existants pour qu'ils incluent tous deux ce fichier à la place du code
         actuellement dupliqué ;

       * mettre en place une condition à l'affichage du résultat de la validation : si les données ont été correctement
         saisies, alors afficher le message de succès et la fiche récapitulative, sinon afficher uniquement le message
         d'erreur.

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                           Application des bonnes pratiques
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Je vous demande, dans le code de vos servlets, de mettre en place des constantes, pour remplacer les chaînes de
caractères initialisées directement au sein du code des méthodes doGet().

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                               Conseils
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Conseils
********

Utilisation de la JSTL
*********************

Je vous donne tout de même quelques pistes pour vous guider, mais vous devriez être capables de vous en sortir sans
lire ce paragraphe :

       * pour sécuriser l'affichage des données saisies, pensez à la balise <c:out> ;

       * pour la gestion des liens, pensez à la balise <c:url> ;

       * pour le menu, vous pouvez créer une page menu.jsp que vous placerez dans le répertoire /inc et que vous
         inclurez dans toutes les autres pages grâce à la balise <c:import> ;

       * pour l'isolement du formulaire de création d'un client, même solution : il vous suffit de déplacer le code
         dans une page JSP que vous pouvez par exemple nommer inc_client_form.jsp et placer dans le répertoire /inc,
         et d'utiliser la balise <c:import> pour l'inclure aux deux formulaires existant ;

       * pour la condition, vous pouvez modifier vos servlets pour qu'elles transmettent à vos JSP une information
        supplémentaire - pourquoi pas un booléen - afin que celles-ci puissent déterminer si la validation a été
        effectuée avec succès ou non grâce à la balise <c:choose> ou <c:if>.

Bien évidemment, vous n'oublierez pas d'inclure le jar de la JSTL au répertoire lib de votre projet, afin de rendre
les balises opérationnelles. Voici à la figure suivante l'allure de l'arborescence que vous devriez obtenir une fois
le TP terminé.


--%>

</body>
</html>
