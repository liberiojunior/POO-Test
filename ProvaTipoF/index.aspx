<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ProvaTipoF.index" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Prova Trimestral Tipo F</title>

    <link href="assets/css/bootstrapF.min.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">

  </head>
  <body>

    <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
            <!-- menu navegador -->
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					 
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						 <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
					</button> <a class="navbar-brand" href="#">Conta</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active">
							<a href="index.aspx">Principal</a>
						</li>
						<li>
							<a href="Contas.aspx">Listar Contas</a>
						</li>
                        <li>
							<a href="addConta.aspx">Nova Conta</a>
						</li>	
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <asp:Label ID="lblEmailUsuario" runat="server" Text=""></asp:Label>
						</li>						
						<li>
							<a href="login.aspx">Logar</a>
						</li>						
                        <li>
							<a href="logout.aspx">Logout</a>
						</li>						
					</ul>
				</div>				

			</nav>
            <!-- menu navegador -->

            <!-- Div Principal -->
			<div class="jumbotron">
				<h2>
					Conta Prova Trimestral
				</h2>
				<p>
					Encontra-se disponível no drive comum da turma, uma aplicação ASP.net com o banco de dados, correspondente ao seu tipo de prova .
                    Você deverá copiá-la para a pasta criada conforme orientações nas instruções acima e rodar o banco de dados.
                    A aplicação foi elaborada contendo diversos erros de sintaxe e de lógica para serem encontrados e solucionados por você.
                    Deve-se testar a aplicação exaustivamente para garantir que todos os erros foram sanados.
				</p>
			</div>
            <!-- Div Principal -->          

		</div>
	</div>
</div>

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/scripts.js"></script>
  </body>
</html>