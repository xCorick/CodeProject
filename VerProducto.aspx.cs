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
            if (!IsPostBack)
            {
                // Obtén el parámetro de categoría de la URL
                string categoria = Request.QueryString["categoria"];

                // Debugging: Verifica el valor del parámetro en la salida
                System.Diagnostics.Debug.WriteLine("Categoria recibida: " + categoria);

                if (string.IsNullOrEmpty(categoria))
                {
                    categoria = "Todos"; // Valor predeterminado para mostrar todos los productos
                }
                BindProducts(categoria);
            }
        }

        private void BindProducts(string categoria)
        {
            string connectionString = Conector.strConexion;
            string query;

            // Construye la consulta SQL dependiendo del parámetro de categoría
            if (categoria == "Todos")
            {
                query = "SELECT Pro_ID, Pro_Nombre, Pro_Precio, Pro_Imagen FROM Producto";
            }
            else
            {
                query = "SELECT Pro_ID, Pro_Nombre, Pro_Precio, Pro_Imagen FROM Producto WHERE Pro_Categoria = @Categoria";
            }

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    if (categoria != "Todos")
                    {
                        cmd.Parameters.AddWithValue("@Categoria", categoria);
                    }

                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    ProductsRepeater.DataSource = reader;
                    ProductsRepeater.DataBind();
                }
            }
        }

    }
}