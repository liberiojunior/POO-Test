<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ProvaTipoF.login" %>

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
						<li>
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
						<li  class="active">
							<a href="login.aspx">Logar</a>
						</li>						
                        <li>
							<a href="logout.aspx">Logout</a>
						</li>						
					</ul>
				</div>				

			</nav>
            <!-- menu navegador -->
                        
            <!-- Formulario Login -->
			<form class="form-horizontal" role="form" runat="server">
				<div class="form-group">					 
					<label class="col-sm-2 control-label">
						Email
					</label>
					<div class="col-sm-10">
                        <asp:TextBox ID="txtemail" CssClass="form-control" TextMode="Email" runat="server" required="true"></asp:TextBox>
					</div>
				</div>
				<div class="form-group">					 
					<label class="col-sm-2 control-label">
						senha
					</label>
					<div class="col-sm-10">
                        <asp:TextBox ID="txtsenha" CssClass="form-control" TextMode="Password" runat="server" required="true"></asp:TextBox>
					</div>
				</div>				
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
                        <asp:Button ID="btnLogar" CssClass="btn btn-primary" runat="server" Text="Logar" OnClick="btnLogar_Click" />						
					</div>
				</div>
			</form>
            <!-- Formulario Login -->
                       
		</div>
	</div>
</div>

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/scripts.js"></script>
  </body>
</html>