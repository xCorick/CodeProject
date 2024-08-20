using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CodeProject
{
    public partial class PanProducto : System.Web.UI.Page
    {
        // public static string strConexion = "Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=CarrilloShop;Data Source=DESKTOP-V1FA3U3";
        public static string strConexion = "Server=DESKTOP-V1FA3U3;Database=CarrilloShop;Integrated Security=True;";

        //public static string strConexion = "user id=sa; password=uts; server=.; database=CarrilloShop";


        protected void Page_Load(object sender, EventArgs e)
        {


            if (Request.QueryString["id"] != null)
            {
                string id = Request.QueryString["id"];

                Session["Pro_ID"] = id;

                BuscarProducto(id);
            }
            else
            {

            }
        }


        void BuscarProducto(string id)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(strConexion))
                {
                    SqlCommand comando = new SqlCommand("Bus_Producto", conn);
                    comando.CommandType = CommandType.StoredProcedure;
                    comando.Parameters.AddWithValue("@Pro_ID", id);

                    SqlDataAdapter adapter = new SqlDataAdapter(comando);
                    DataTable datos = new DataTable();

                    conn.Open();
                    adapter.Fill(datos);

                    if (datos.Rows.Count > 0)
                    {
                        Pro_ID.Text = datos.Rows[0]["Pro_ID"].ToString();
                        Pro_Nombre.Text = datos.Rows[0]["Pro_Nombre"].ToString();
                        Pro_Descripcion.Text = datos.Rows[0]["Pro_Descripcion"].ToString();
                        Pro_Precio.Text = Convert.ToDouble(datos.Rows[0]["Pro_Precio"]).ToString("N");
                        Pro_Imagen.ImageUrl = datos.Rows[0]["Pro_Imagen"].ToString();
                    }
                    else
                    {
                        Pro_Nombre.Text = "No se encontró el producto";
                        Pro_Descripcion.Text = "";
                        Pro_Precio.Text = "";
                        Pro_Imagen.ImageUrl = "imagenesProducto/NotFound.png";
                    }

                }
            }
            catch (Exception err)
            {
                // Manejo de errores
                Response.Write($"<script>alert('{err.Message}')</script>");
            }
        }




        protected void AgreCarrito_Click(object sender, EventArgs e)
        {

            double cantidad = Convert.ToDouble(Pro_Cantidad.Text);
            double precio = Convert.ToDouble(Pro_Precio.Text);
            double descuento = 0;
            string ProID = Session["Pro_ID"] as string;
            string carritoid = "micarrito";

            using (SqlConnection conn = new SqlConnection(strConexion))
            {
                using (SqlCommand comando = new SqlCommand("Ins_ListaCarrito", conn))
                {
                    comando.CommandType = CommandType.StoredProcedure;

                    comando.Parameters.Add("@LisCar_Cantidad", SqlDbType.Float).Value = cantidad;
                    comando.Parameters.Add("@LisCar_Precio", SqlDbType.Money).Value = precio;
                    comando.Parameters.Add("@LisCar_Descuento", SqlDbType.Money).Value = descuento;
                    comando.Parameters.Add("@LisCar_ProID", SqlDbType.VarChar).Value = ProID;
                    comando.Parameters.Add("@LisCar_CarritoID", SqlDbType.VarChar).Value = carritoid;

                    conn.Open();
                    comando.ExecuteNonQuery();
                }
            }

            // Mensaje de éxito, considera usar un control en lugar de Response.Write para una mejor experiencia de usuario.
            Response.Write("Agregado al carrito");

        }





    }
}
