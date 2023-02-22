using System;
using System.Web.UI.WebControls;
using BLL;
using DTO;

namespace ProvaTipoF
{
    public partial class Contas : System.Web.UI.Page
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
                gridContas.DataSource = Contabll.ListarContas();
                gridContas.DataBind();
            }
        }

        protected void gridContas_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            try
            {
                gridContas.EditIndex = -1;
                gridContas.DataSource = Contabll.ListarContas();
                gridContas.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write( ex.Message );
            }
        }

        protected void gridContas_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                Conta.Id = int.Parse(gridContas.Rows[e.RowIndex].Cells[2].Text);
                Contabll.ExcluirConta(Conta);
                gridContas.EditIndex = -1;
                gridContas.DataSource = Contabll.ListarContas();
                gridContas.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write( ex.Message );
            }
        }

        protected void gridContas_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                Conta.Id = int.Parse(e.NewValues[0].ToString());
                Conta.CPF = e.NewValues[1].ToString();
                Conta.Idtipoconta = int.Parse(e.NewValues[2].ToString());
                Conta.Agencia = e.NewValues[3].ToString();
                Conta.Numeroconta = e.NewValues[4].ToString();
                Conta.Dtabertura = DateTime.Parse(e.NewValues[5].ToString());
                
                Contabll.AtualizarConta(Conta);

                gridContas.EditIndex = -1;
                gridContas.DataSource = Contabll.ListarContas();
                gridContas.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write( ex.Message );
            }
        }

        protected void gridContas_RowEditing(object sender, GridViewEditEventArgs e)
        {
            try
            {
                gridContas.EditIndex = e.NewEditIndex;
                gridContas.DataSource = Contabll.ListarContas();
                gridContas.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write( ex.Message );
            }
        }
    }
}