using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CodeProject
{
    public partial class Busqueda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string categoria = Request.QueryString["categoria"];
                if (!string.IsNullOrEmpty(categoria))
                {
                    CargarProductos(categoria);
                }
            }
        }

        private void CargarProductos(string categoria)
        {
            string connectionString = "Server=DESKTOP-V1FA3U3;Database=CarrilloShop;Integrated Security=True;";
            string query = "SELECT * FROM Producto WHERE Pro_Categoria = @Categoria";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Categoria", categoria);

                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                string html = "";
                while (reader.Read())
                {
                    string nombre = reader["Pro_Nombre"].ToString();
                    string descripcion = reader["Pro_Descripcion"].ToString();
                    decimal precio = Convert.ToDecimal(reader["Pro_Precio"]);

                    html += $@"
                        <div class='card'>
                            <h2>{nombre}</h2>
                            <p>{descripcion}</p>
                            <p>Precio: {precio:C}</p>
                        </div>";
                }
                reader.Close();

                // Asigna el HTML generado al contenedor de productos
                productCards.InnerHtml = html;
            }
        }
    }
}