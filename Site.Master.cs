using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CodeProject
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Usuario usuario = (Usuario)Session["user"];
            if (usuario == null)
            {
                liAdmin.Visible = false;
            }
            else
            {
                if (!usuario.Tipo)
                {
                    liAdmin.Visible = false;
                }
                if (!String.IsNullOrEmpty(usuario.UsuarioFoto))
                {
                    HDFIcono.Value = usuario.UsuarioFoto;
                }
            }
        }
        protected void logOut_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Response.Redirect("Default");
        }
    }
}