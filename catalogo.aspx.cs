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
            if (IsPostBack)
            {

            }
        }

        protected void ImageButton_Click(object sender, ImageClickEventArgs e)
        {
            
            ImageButton clickedButton = (ImageButton)sender;

            
            string buttonId = clickedButton.CommandArgument;

         
            Response.Redirect($"PanProducto.aspx?id={buttonId}");
        }




       




    }  
}
