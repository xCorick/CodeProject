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


        protected void Presionado(object sender, EventArgs e)
        {
            string id;

            Button Presionado = (Button)sender;

           id =  Presionado.ID;

            PanProducto pantallaproducto = new PanProducto("id");  
            Response.Redirect("PanProducto.aspx");
        }
    }
}