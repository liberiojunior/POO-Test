using System;
using BLL;
using DTO;

namespace ProvaTipoF
{
    public partial class addConta : System.Web.UI.Page
    {
        DTO_Usuario usuariologado;
        DTO_Conta Conta = new DTO_Conta();
        BLL_Conta Contabll = new BLL_Conta();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
                Response.Redirect("login.aspx");
            else
            {
                usuariologado = (DTO_Usuario)Session["usuario"];
                lblEmailUsuario.Text = usuariologado.Email;
            }
            
            if (!IsPostBack)
            {
                BLL_TipoConta tipocontabll = new BLL_TipoConta();

                ddltipoconta.DataSource = tipocontabll.ListarContas();
                ddltipoconta.DataTextField = "descricao";
                ddltipoconta.DataValueField = "idtipo";
                ddltipoconta.DataBind();
            }
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            try
            {
                Conta.CPF = txtcpf.Text;
                Conta.Idtipoconta = int.Parse(ddltipoconta.SelectedValue);
                Conta.Agencia = txtagencia.Text;
                Conta.Numeroconta = txtconta.Text;
                Conta.Dtabertura = DateTime.Parse(txtdata.Text);
                
                Contabll.InserirNovoConta(Conta);
                Response.Redirect("index.aspx", false);                
            }
            catch (Exception ex)
            {
                Response.Write( ex.Message );
            }
        }
    }
}