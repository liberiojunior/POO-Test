<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contas.aspx.cs" Inherits="ProvaTipoF.Contas" %>

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
						<li class="active">
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
            
            <!-- Tabela -->
            <form role="form" id="form1" runat="server">
                <h2>Contas Cadastradas</h2>
                <asp:GridView ID="gridContas" runat="server" CssClass="table table-striped" OnRowCancelingEdit="gridContas_RowCancelingEdit" OnRowDeleting="gridContas_RowDeleting" OnRowEditing="gridContas_RowEditing" OnRowUpdating="gridContas_RowUpdating">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>			
            </form>
            <!-- Tabela -->           

		</div>
	</div>
</div>

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/scripts.js"></script>
  </body>
</html>