using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CodeProject
{
    public partial class PanProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Inicializar valores por defecto
                MainImage.ImageUrl = "https://ss224.liverpool.com.mx/sm/1150533640.jpg";
                PriceLabel.Text = "$799.00";


                string value = Session["MyValue"] as string;

                // Muestra el valor en una etiqueta
                lblValue.Text = value;

            }
        }

        protected void AddToCartButton_Click(object sender, EventArgs e)
        {
            int quantity = int.Parse(QuantityTextBox.Text);
            string selectedSize = SizeList.SelectedValue;

            // Aquí puedes agregar la lógica para manejar el producto agregado al carrito
            // Por ejemplo, redirigir a una página de confirmación, actualizar el carrito en la base de datos, etc.
            // La lógica específica de agregar al carrito debe implementarse aquí.
        }

        protected void BackButton_Click(object sender, EventArgs e)
        {
            // Redirigir a la página anterior
            Response.Redirect(Request.UrlReferrer.ToString());
        }



     
    }
}





