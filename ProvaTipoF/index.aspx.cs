using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;

namespace ProvaTipoF
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] != null)                
            {
                DTO_Usuario usuariologado = (DTO_Usuario)Session["usuario"];
                lblEmailUsuario.Text = usuariologado.Email;
            }
        }
    }
}