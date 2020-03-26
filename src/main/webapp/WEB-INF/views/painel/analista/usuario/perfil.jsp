<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="pt-br">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="${path}/assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="${path}/assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Incentivados - ${usuario.nome}
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     FONTAWESOME     -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  <!--     BOOTSTRAP     -->
  <link href="${path}/assets/css/bootstrap.min.css" rel="stylesheet" />
  <!--     CUSTOM     -->
  <link href="${path}/assets/css/paper-dashboard.css?v=2.0.0" rel="stylesheet" />
  <link href="${path}/assets/css/style.css" rel="stylesheet" />
</head>

<body class="">
  <div class="wrapper ">    
    <!-- Sidebar -->
    <div class="sidebar" data-color="verde" data-active-color="white">
      <div class="logo">
        <a href="#" class="simple-text logo-mini">
          <div class="logo-image-small">
            <i class="far fa-user"></i>
          </div>
        </a>
        <a href="${path}/painel/perfil" class="text-white logo-normal">Bem vindo, ${usuario.nome}.</a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li>
            <a href="${path}/painel/dashboard">
              <i class="fas fa-desktop"></i>
              Painel Principal
            </a>
          </li>
        </ul>
      </div>
    </div>  
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-absolute fixed-top navbar-transparent">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <div class="navbar-toggle">
              <button type="button" class="navbar-toggler">
                <span class="navbar-toggler-bar bar1"></span>
                <span class="navbar-toggler-bar bar2"></span>
                <span class="navbar-toggler-bar bar3"></span>
              </button>
            </div>
            <b><a class="navbar-brand" href="#">Meus Dados</a></b>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end" id="navigation">            
            <ul class="navbar-nav">              
              <li class="nav-item btn-rotate dropdown">
                <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="fas fa-power-off"></i>
                  <p>
                    <span class="d-lg-none d-md-block">Ações</span>
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                  <a class="dropdown-item" href="${path}/painel/perfil">Meus Dados</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="${path}/sair">Sair</a>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </nav>         
      <div class="content">        
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header bg-primary"></div>
              <div class="card-body border">                 

                <fieldset class="mt-3 mt-3">
                <legend><i class="fas fa-user-alt"></i> Usuário:</legend>
                <div class="row">               
                  <div class="col-4">
                    <div class="form-group">
                        <label>Nome:</label>
                        <input type="text" class="form-control" value="${usuario.nome}" readonly>
                    </div>
                  </div>
                  <div class="col-4">
                    <div class="form-group">
                        <label>Sobrenome:</label>
                        <input type="text" class="form-control" value="${usuario.sobrenome}" readonly>
                    </div>
                  </div>
                  <div class="col-4">
                    <div class="form-group">
                        <label>CPF:</label>
                        <input type="text" class="form-control" value="${usuario.cpf}" readonly>
                    </div>
                  </div>              
                </div>
                <div class="row">
                  <div class="col-4">
                    <div class="form-group">
                        <label>E-mail:</label>
                        <input type="email" class="form-control" value="${usuario.email}" readonly>
                    </div>
                  </div>
                  <div class="col-4">
                    <div class="form-group">
                        <label>Tipo de Usuário:</label>
                        <input type="email" class="form-control" value="${usuario.tipoUsuario.descricao}" readonly>
                    </div>
                  </div>
                  <div class="col-4">
                    <div class="form-group">
                        <label>Telefone:</label>
                        <input type="text" class="form-control" value="${usuario.telefone}" readonly>
                    </div>
                  </div>
                </div>
                </fieldset>
                <hr>
                <fieldset class="mt-3 mt-3">
                <legend><i class="fas fa-map-marker-alt"></i> Filial:</legend>
                <div class="row">
                  <div class="col-4">
                    <div class="form-group">
                        <label>CEP:</label>                     
                        <input type="text" class="form-control" value="${usuario.endereco.cep}" placeholder="Não Informado" readonly>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-7">
                    <div class="form-group">
                        <label>Logradouro:</label>                      
                        <input type="text" class="form-control" value="${usuario.endereco.logradouro}" placeholder="Não Informado" readonly>
                    </div>
                  </div>
                  <div class="col-2">
                    <div class="form-group">
                        <label>Nº:</label>                      
                        <input type="text" class="form-control" value="${usuario.endereco.numero}" placeholder="Não Informado" readonly>
                    </div>
                  </div>
                  <div class="col-3">
                    <div class="form-group">
                        <label>Complemento:</label>                     
                        <input type="text" class="form-control" value="${usuario.endereco.complemento}" placeholder="Não Informado" readonly>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-4">
                    <div class="form-group">
                        <label>Bairro:</label>                      
                        <input type="text" class="form-control" id="bairro" value="${usuario.endereco.bairro}" placeholder="Não Informado" readonly >
                    </div>
                  </div>
                  <div class="col-4">
                    <div class="form-group">
                        <label>Cidade</label>                     
                        <input type="text" class="form-control" id="cidade" value="${usuario.endereco.cidade}" placeholder="Não Informado" readonly>
                    </div>
                  </div>
                  <div class="col-4">
                    <div class="form-group">
                        <label>Estado:</label>                      
                        <input type="text" class="form-control" id="estado" value="${usuario.endereco.estado}" placeholder="Não Informado" readonly>
                    </div>
                  </div>
                </div>
                </fieldset>

              </div>
              <div class="card-footer bg-primary"></div>
            </div>
          </div>
        </div>              
      </div>
      <c:import url="/WEB-INF/views/componentes/footer/painel/footer.jsp" />
    </div>
  </div>

  <!--   JQUERY   -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <!--   POPPER   -->  
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  <!--   BOOTSTRAP   -->  
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>  
  <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
  <script type="text/javascript" src="${path}/assets/js/paper-dashboard.min.js?v=2.0.0"></script>  
</body>

</html>