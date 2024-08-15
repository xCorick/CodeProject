using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CodeProject
{
    public partial class catalogo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnRedirect_Click(object sender, EventArgs e)
        {
            // Define la variable que quieres pasar
            string valueToPass = "HolaMundo";

            Session["MyValue"] = valueToPass;

            // Redirige a Page2
            Response.Redirect("PanProducto.aspx");
        }


    }
}