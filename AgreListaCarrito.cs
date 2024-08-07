using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls.WebParts;

namespace CodeProject
{
    public class AgreListaCarrito
    {
        public static int AgregarListCarrito(ClaseListaCarrito listaCarrito)
        {
            int retorna = 0;

            using (SqlConnection conexion= ConexionBaseDeDatos.ObtenerConexion())
            {
                string query = "insert into ListaCarrito (LisCar_Cantidad, LisCar_PrecioProducto, LisCar_Descuento,LisCar_ProID,LisCar_carritoID) " +
                    "values("+listaCarrito.LisCar_Cantidad+", "+listaCarrito.LisCar_PrecioProducto+", "+listaCarrito.LisCar_Descuento+", "+listaCarrito.LisCar_ProID+", "+listaCarrito.LisCar_carritoID+")";
                SqlCommand comando = new SqlCommand(query, conexion);

                retorna = comando.ExecuteNonQuery();
            }
            return retorna;
        }
    }
}