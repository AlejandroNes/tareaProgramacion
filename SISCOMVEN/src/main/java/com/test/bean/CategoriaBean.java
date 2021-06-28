/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.test.bean;

import com.test.conexion.VariablesConexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.annotation.PreDestroy;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author AlejandroNes
 */
public class CategoriaBean {
    //atributos
    private Connection connection;
    private PreparedStatement insertCategoria;
    private VariablesConexion variable;
    
    //constructores
    public CategoriaBean()throws SQLException {
         variable = new VariablesConexion();
         variable.inicioConexion();
         
         //obteniendo la conexion
         connection = variable.getConnection();
         System.out.println("Iniciando la conexion");
    }

    //metodos
    @PreDestroy
    public void cerrarConexion(){
        variable.cerrarConexion();
    } 
    public String registrarCategoria(HttpServletRequest request){
        String mensaje = "";
        if(request == null){
            return  "";
        }
        if(connection != null){
            try {
                //definiendo la consulta
                StringBuilder query = new StringBuilder();
                query.append("INSERT INTO categoria VALUES (null,1,2)");
                //enviando consulta
                if(insertCategoria == null){
                    insertCategoria = connection.prepareStatement(query.toString());
                }
                String nombre = request.getParameter("nomCat");
                String descripcion = request.getParameter("desCat");
                
                insertCategoria.setString(1, nombre);
                insertCategoria.setString(2, descripcion);
                
                //ejecutando la consulta
                int registro = insertCategoria.executeUpdate();
                if(registro == 1){
                    mensaje = "Registro realizado con exito";
                    
                }else{
                    mensaje = "Error al insertar el registo";
                }

                
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return mensaje;
    }
    //getter and setter


}
