using System;
using BLL;
using DTO;

namespace ProvaTipoF
{
    public partial class login : System.Web.UI.Page
    {
        DTO_Usuario usuario = new DTO_Usuario();
        BLL_Usuario usuariobll = new BLL_Usuario();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogar_Click(object sender, EventArgs e)
        {
            try
            {
                usuario = usuariobll.CarregarUsuario(txtemail.Text, txtsenha.Text);
                if (usuario != null)
                {
                    Session["usuario"] = usuario;                    
                    Response.Redirect("index.aspx", false);
                }
                else
                {
                    Response.Write("<script> ('usuario ou senha incorretos');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write( ex.Message );
            }
        }
    }
}