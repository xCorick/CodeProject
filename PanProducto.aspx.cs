using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CodeProject
{
    public partial class PanProducto : System.Web.UI.Page
    {
        public static string strConexion = "Server=DESKTOP-V1FA3U3; Database=CarrilloShop; Integrated Security=True;";


        protected void Page_Load(object sender, EventArgs e)
        {

           
            if (Request.QueryString["id"] != null)
            {

                

              
                string id = Request.QueryString["id"];

                BuscarProducto(id);
            }
            else
            {
               
            }
        }




        protected void AgreCarrito(object sender, EventArgs e, string id)
        {
            try
            {
                double cantidad = Convert.ToDouble(Pro_Cantidad.Text);
                double precio = Convert.ToDouble(Pro_Precio.Text);
                double descuento = 0;
                string LisCar_ProID = id;
                string carritoid = "alex@gmail.com";



                using (SqlConnection conn = new SqlConnection(strConexion))
                {
                    SqlCommand comando = new SqlCommand("Ins_ListaCarrito", conn);
                    comando.CommandType = CommandType.StoredProcedure;
                    comando.Parameters.AddWithValue("@LisCar_Cantidad", cantidad);
                    comando.Parameters.AddWithValue("@LisCar_Precio", precio);
                    comando.Parameters.AddWithValue("@LisCar_Descuento", descuento);
                    comando.Parameters.AddWithValue("@LisCar_ProID", id);
                    comando.Parameters.AddWithValue("@LisCar_CarritoID", carritoid);

                    SqlDataAdapter adapter = new SqlDataAdapter(comando);
                    DataTable datos = new DataTable();

                    conn.Open();
                    adapter.Fill(datos);

                    
                }
            }
            catch (Exception err)
            {
                // Manejo de errores
                Response.Write($"<script>alert('{err.Message}')</script>");
            }


        }

        protected void BackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.UrlReferrer.ToString());
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
                        Pro_Imagen.ImageUrl = "";
                    }
                }
            }
            catch (Exception err)
            {
                // Manejo de errores
                Response.Write($"<script>alert('{err.Message}')</script>");
            }
        }

      

    }
}





