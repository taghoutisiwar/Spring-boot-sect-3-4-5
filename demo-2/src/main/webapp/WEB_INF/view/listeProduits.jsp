<%@ page language="java" contentType="text/html; charset=windows-1256"
 pageEncoding="windows-1256"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>Liste Produits</title>
</head>
<body>
 <h1 >
 Liste des Produits
 </h1>
 <table class="table" >
 <tr>
 <th>ID</th><th>Nom Produit</th><th>Prix</th><th>Date
Creation</th><th>Suppression<th>Edition</th>
 </tr>
 <c:forEach items="${produits}" var="p">
 <tr>
 <td>${p.idProduit }</td>
 <td>${p.nomProduit }</td>
 <td>${p.prixProduit }</td>
 <td><fmt:formatDate pattern="dd/MM/yyyy"
value="${p.dateCreation}" /></td>
 <td><a onclick="return confirm('Etes-vous sûr ?')"
href="supprimerProduit?id=${p.idProduit }">Supprimer</a></td>
 <td><a href="modifierProduit?id=${p.idProduit }">Edit</a></td>
 </tr>
 </c:forEach>
 </table>
</body>
</html>