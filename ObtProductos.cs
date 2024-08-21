using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;

namespace CodeProject
{
    public class ObtProductos
    {

        [WebMethod]
        public static string GetProducts()
        {
            
            List<object> products = new List<object>();

            using (SqlConnection connection = new SqlConnection(Conector.strConexion))
            {
                string query = "SELECT Pro_ID, Pro_Nombre, Pro_Precio, Pro_Imagen, Pro_Publico FROM Producto";
                SqlCommand command = new SqlCommand(query, connection);
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    products.Add(new
                    {
                        productoid = reader["Pro_ID"].ToString(),
                        productName = reader["Pro_Nombre"].ToString(),
                        price = Convert.ToDecimal(reader["Pro_Precio"]),
                        img = reader["Pro_Imagen"].ToString(),
                        publico = reader["Pro_Publico"].ToString()

                    });
                }

                reader.Close();
            }

            JavaScriptSerializer js = new JavaScriptSerializer();
            return js.Serialize(products);
        }
    }
}
