using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CodeProject
{
    public partial class VerProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindProducts();
        }


        private void BindProducts()
        {
            string connectionString = Conector.strConexion;
            string query = "SELECT Pro_ID, Pro_Nombre, Pro_Precio, Pro_Imagen FROM Producto";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    ProductsRepeater.DataSource = reader;
                    ProductsRepeater.DataBind();
                }
            }
        }
    }
}