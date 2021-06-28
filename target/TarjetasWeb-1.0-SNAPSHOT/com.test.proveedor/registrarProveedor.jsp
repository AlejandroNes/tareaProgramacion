<%-- 
    Document   : registrarProveedor
    Created on : 26-06-2021, 09:02:41 PM
    Author     : AlejandroNes
--%>
<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proyecto Covefar</title>
    </head>
    <body>
        <div class="container mt-5">
            <div class="row">
                <div class="col-sm">
                    <h1>REGISTRAR PROVEEDOR</h1>
                    <form action="registrarProveedor.jsp" method="post">
                        <div class="form-group">
                            <label for="nombre">EMPRESA</label>
                            <input type="text" class="form-control" id="nombre" name="empresa" placeholder="empresa" required="required">
                        </div>
                        <div class="form-group">
                            <label for="direccion">DIRECCION</label>
                            <input type="text" class="form-control" id="compra" name="dir" placeholder=" direccion" required="required">
                        </div>
                        <div class="form-group">
                            <label for="direccion">TELEFONO</label>
                            <input type="text" class="form-control" id="venta" name="tel" placeholder="telefono" required="required">
                        </div>
                        <div class="form-group">
                            <label for="direccion">E-MAIL</label>
                            <input type="text" class="form-control" id="stock" name="mail" placeholder="mail" required="required">
                        </div>
                        <button type="submit" name="guardar" class="btn btn-primary">REGISTRAR <i class="fa fa-floppy-o" aria-hidden="true"></i></button>
                    </form>
                </div>
            </div>
        </div>
        <%
            if (request.getParameter("guardar") != null) {
                String empresa = request.getParameter("empresa");
                String dir = request.getParameter("dir");
                String tel = request.getParameter("tel");
                String mail = request.getParameter("mail");
                try {
                    Connection con=null;
                    Statement st=null;
                    Class.forName("com.mysql.jdbc.Driver");
                    con=DriverManager.getConnection("jdbc:mysql://localhost/covefar?user=root&password=root");
                    st=con.createStatement();
                    st.executeUpdate("INSERT INTO proveedor(empresa,direccion,telefono,mail) VALUES ('"+empresa
                            +"','"+dir+"','"+tel+"','"+mail+"');");
                    request.getRequestDispatcher("ListaProveedor.jsp").forward(request, response);
                
                } catch (Exception e) {
                    out.print(e);
                }
            }
        %>
    </body>
</html>