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

        protected void redirectToPage(object sender, EventArgs e)
        {
            // Redirigir a la misma página para todos los botones
            Response.Redirect("PanProducto.aspx");
        }


    }
}