<%-- 
    Document   : index
    Created on : 20-06-2021, 07:28:28 PM
    Author     : MILTON
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
 <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
<body>
    <nav class="navbar navbar-expand-md bg-dark navbar-dark">
        <a class="navbar-brand" href="#">
            <img src="https://tarjetasweb2-6838.kxcdn.com/archivos/e8aff82c-ef7a-451f-9c7a-ffd861bc856a-medium.jpg" alt="logo" style="width:100px;">
          </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
          <ul class="navbar-nav">
     <li class="nav-item dropdown">
      <a class="nav-link " href="#" id="navbardrop" data-toggle="dropdown">
        PROVEEDORES
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="com.test.proveedor/ListaProveedor.jsp">LISTA PROVEEDORES</a>
        <a class="dropdown-item" href="com.test.proveedor/registrarProveedor.jsp">REGISTRAR PROVEEDOR</a>
      </div>
    </li>
     <li class="nav-item dropdown">
      <a class="nav-link " href="#" id="navbardrop" data-toggle="dropdown">
        PRODUCTOS
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="com.test.producto/ListaProducto.jsp">LISTA PRODUCTOS</a>
        <a class="dropdown-item" href="com.test.producto/registrarProducto.jsp">REGISTRAR PRODUCTOS</a>
      </div>
    </li>
          </ul>
              
        </div>  
      </nav>
</body>
</html>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>