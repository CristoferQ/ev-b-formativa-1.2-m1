<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Formulario</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark mb-4">
    <div class="container-fluid">
      <a class="navbar-brand" href="#"><i class="fas fa-star"></i>&nbsp;Formulario</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
    </div>
  </nav>
 <div class="row">
        <div class="col-4"></div>
        <div class="col-4" >
          
            <h1>Ingrese sus datos</h1>
            
            <c:if test="${error != null}">
            <div class="alert alert-danger" role="alert">${error}</div>
            </c:if>
            <form action="/formulario" novalidate method="POST">
                <div class="mb-3">
                    <label for="exampleInputUser" class="form-label" >Nombre</label>
                    <input class="form-control" type="text" id="nombre" name="nombre"
                     aria-describedby="emailHelp" placeholder="Ingresa tu nombre" >
                    <div id="usuariolHelp" class="form-text"> example:(Pedrito..)</div>
                  </div>
                <div class="mb-3">
                  <label for="exampleInputEmail1" class="form-label" >Apellido</label>
                  <input  class="form-control" type="text" id="apellido" name="apellido" placeholder="Ingresa tu apellido"
                   aria-describedby="emailHelp">
                  <div id="emailHelp" class="form-text">example:(Lopez..)</div>
                </div>
                <div class="mb-3">
                  <label for="exampleInputTelefono" class="form-label" >Limite</label>
                   <input  class="form-control"   type="number" id="limite" name="limite" placeholder="Ingresa el limite" maxlength="5" 
                    oninput="if(this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);">
                  <div id="telefonoHelp" class="form-text">example:(0,1...)</div>
                </div>
                  <div class="mb-3">
                    <label for="exampleInputTelefono" class="form-label" >Codigo Postal</label>
                    <input  class="form-control"   type="number" id="codigoPostal" name="codigoPostal" placeholder="Ingresa el codigo postal" maxlength="8" 
                    oninput="if(this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);">
                    <!-- maximo de codigo 8 -->
                    <div id="telefonoHelp" class="form-text">example:(XXXXXXX)</div>
                  </div>
                  
                    <input type="reset" value="Limpiar" class="btn btn-warning">
                <button type="submit" class="btn btn-primary">Añadir</button>
              </form>
            
            </div>
</body>
</html>