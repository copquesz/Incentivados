<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<html lang="pt-br">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Incentivados - Login
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  <!-- CSS Files -->
  <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
  <link href="assets/css/paper-dashboard.css?v=2.0.0" rel="stylesheet" />  
  <link href="assets/css/style.css" rel="stylesheet" />  
  <style type="text/css">
  body{
    background: linear-gradient(#82ccdd, #0a3d62);
  }
  </style>
</head>

<body class="bg-white">
  <div class="container h-100">
    <div class="d-flex justify-content-center h-100">
      <div class="login_card">
        <div class="d-flex justify-content-center">
          <div class="login_image">
            <img src="${path}/assets/img/usuario.jpg" class="login_user_image" alt="Logo">
          </div>
        </div>
        <div class="d-flex justify-content-center form_container">
          <form action="${path}/login" method="post" acceptcharset="UTF-8">
            <input type="hidden" name="redirect" value="${redirect}">
            <div class="input-group mb-3">
              <div class="input-group-append">
                <span class="input-group-text"><i class="fas fa-at"></i></span>
              </div>
              <input type="email" name="email" class="form-control input_user" value="" placeholder="e-mail">
            </div>
            <div class="input-group mb-2">
              <div class="input-group-append">
                <span class="input-group-text"><i class="fas fa-key"></i></span>
              </div>
              <input type="password" name="senha" class="form-control input_pass" value="" placeholder="senha">
            </div>
            <div class="d-flex justify-content-center mt-3 login_container">
              <button type="submit" class="btn login_btn">Login</button>
            </div>
          </form>
        </div>        
        <div class="mt-4">
          <div class="d-flex justify-content-center links">
            Não possui uma conta? <a href="#" data-toggle="modal" data-target="#modal-cadastro-usuario" class="ml-2">Cadastre-se</a>
          </div>
          <div class="d-flex justify-content-center links">
            <a href="#">Esqueceu sua senha?</a>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- MODAL -->
  <c:import url="/WEB-INF/views/componentes/modal/modal-cadastro-usuario.jsp" />
  <c:import url="/WEB-INF/views/componentes/modal/modal-acesso-negado.jsp" />

</body>
  <!--   Core JS Files   -->
  <script src="assets/js/core/jquery.min.js"></script>
  <script src="assets/js/core/popper.min.js"></script>
  <script src="assets/js/core/jquery.maskedinput.js"></script>
  <script src="assets/js/core/bootstrap.min.js"></script>
  <script src="assets/js/plugins/perfect-scrollbar.jquery.min.js"></script> 
  <!--  Notifications Plugin    -->
  <script src="assets/js/plugins/bootstrap-notify.js"></script>
  <!-- VIA CEP API -->
  <script type="text/javascript" src="api/via-cep.js"></script> 
  <!-- CUSTOM SCRIPT -->
  <script type="text/javascript" src="assets/js/cpf-validator.js"></script>
  <script type="text/javascript" src="assets/js/script.js"></script><
  <c:if test = "${acessoNegado}">
    <script type="text/javascript">
      $(document).ready(function () { 
          $('#modal-acesso-negado').modal('show');    
      });
    </script>
  </c:if>

</html>