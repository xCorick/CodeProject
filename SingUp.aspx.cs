using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CodeProject
{
    public partial class SingUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Create_Click(object sender, EventArgs e)
        {
            var (conn, comando, adaptador, datos) = Conector.BuscarRegistro(Conector.strConexion, "Bus_Cliente", "@Cli_Correo", email.Text);
            message.Visible = true;
            if (datos.Rows.Count > 0)
            {
                message.Text = "Correo previamente registrado.";
            }
            else
            {
                
            }
        }
    }
}