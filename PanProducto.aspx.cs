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
        //public static string strConexion = "Server=DESKTOP-V1FA3U3;Database=CarrilloShop;Integrated Security=True;";

        //public static string strConexion = "user id=sa; password=uts; server=.; database=CarrilloShop";


        protected void Page_Load(object sender, EventArgs e)
        {
            ClaseCarrito carrito = Session["CarritoUsu"] as ClaseCarrito;

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
                using (SqlConnection conn = new SqlConnection(Conector.strConexion))
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

            Usuario usu = (Usuario)Session["User"];

            if (usu == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {

                ClaseCarrito carrito = Session["CarritoUsu"] as ClaseCarrito;

                   string carro = carrito.CarritoID;
                

                double cantidad = Convert.ToDouble(Pro_Cantidad.Text);
                double precio = Convert.ToDouble(Pro_Precio.Text);
                double descuento = 0;
                string ProID = Session["Pro_ID"] as string;
                string carritoid = Session["CarritoUsu"] as string; ;


                if (!double.TryParse(Pro_Cantidad.Text, out cantidad))
                {
                    Response.Write("<script>alert('Cantidad no válida.')</script>");
                    return;
                }


                using (SqlConnection conn = new SqlConnection(Conector.strConexion))
                {
                    using (SqlCommand comando = new SqlCommand("Ins_ListaCarrito", conn))
                    {
                        comando.CommandType = CommandType.StoredProcedure;

                        comando.Parameters.AddWithValue("@Lis_CarCantidad", cantidad);
                        comando.Parameters.AddWithValue("@LisCar_PrecioProducto", precio);
                        comando.Parameters.AddWithValue("@LisCar_Descuento", descuento);
                        comando.Parameters.AddWithValue("@LisCar_ProID", ProID);
                        comando.Parameters.AddWithValue("@LisCar_carritoID", carro);

                        conn.Open();
                        comando.ExecuteNonQuery();
                    }
                }

                // Mensaje de éxito, considera usar un control en lugar de Response.Write para una mejor experiencia de usuario.
                Response.Write("Agregado al carrito");
            }
        }





    }
}
