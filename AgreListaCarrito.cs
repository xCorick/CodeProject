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

            using (SqlConnection conexion = ConexionBaseDeDatos.ObtenerConexion())
            {
                string query = "insert into ListaCarrito (LisCar_Cantidad, LisCar_PrecioProducto, LisCar_Descuento,LisCar_ProID,LisCar_carritoID) " +
                    "values(" + listaCarrito.LisCar_Cantidad + ", " + listaCarrito.LisCar_PrecioProducto + ", " + listaCarrito.LisCar_Descuento + ", " + listaCarrito.LisCar_ProID + ", " + listaCarrito.LisCar_carritoID + ")";
                SqlCommand comando = new SqlCommand(query, conexion);

                retorna = comando.ExecuteNonQuery();
            }
            return retorna;
        }



        public static List<ClaseListaCarrito> MostrarDatosCarritos()
        {
            List<ClaseListaCarrito> Lista = new List<ClaseListaCarrito>();

            using (SqlConnection conexion = ConexionBaseDeDatos.ObtenerConexion())
            {
                string query = "select * from ListaCarrito";
                SqlCommand comando = new SqlCommand(query, conexion);

                SqlDataReader reader = comando.ExecuteReader();

                while (reader.Read())
                {
                    ClaseListaCarrito objetolistacarrito = new ClaseListaCarrito();
                    objetolistacarrito.LisCar_Cantidad = reader.GetInt32(0);
                    objetolistacarrito.LisCar_PrecioProducto = reader.GetSqlMoney(1);
                    objetolistacarrito.LisCar_Descuento = reader.GetSqlMoney(2);
                    objetolistacarrito.LisCar_ProID = reader.GetString(3);
                    objetolistacarrito.LisCar_carritoID = reader.GetString(4);
                    Lista.Add(objetolistacarrito);
                }

                conexion.Close();
                return Lista;
            }
        }

    }


}