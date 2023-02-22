<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addconta.aspx.cs" Inherits="ProvaTipoF.addConta" %>

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
                        <li class="active">
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
            
            <!-- Formulario Cadastro -->
			<form role="form" id="form1" runat="server">
				<div class="form-group">
					<label>
						CFP Titular
					</label>
                    <asp:TextBox ID="txtcpf" CssClass="form-control" runat="server" required="true"></asp:TextBox>
				</div>
                <div class="form-group">
					<label>
						Tipo de Conta
					</label>
                    <asp:DropDownList ID="ddltipoconta" CssClass="form-control" runat="server" required="true">                       
                    </asp:DropDownList>                    
				</div>
                <div class="form-group">
					<label>
						Agencia
					</label>
                    <asp:TextBox ID="txtagencia" CssClass="form-control" runat="server" required="true"></asp:TextBox>
				</div>
				<div class="form-group">
					<label>
						Numero Conta
					</label>
                    <asp:TextBox ID="txtconta" CssClass="form-control" runat="server" required="true"></asp:TextBox>
				</div>
				<div class="form-group">
					<label>
						Data Abertura
					</label>
                    <asp:TextBox ID="txtdata" CssClass="form-control" runat="server" TextMode="Date" required="true"></asp:TextBox>
				</div>
					
                <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" CssClass="btn btn-success" OnClick="btnCadastrar_Click"/>				
                <button type="reset" class="btn btn-warning">
					Limpar
				</button>
			</form>
            <!-- Formulario Cadastro -->

		</div>
	</div>
</div>

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/scripts.js"></script>
  </body>
</html>