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
        public static string strConexion = "user id=sa; password=uts; server=.; database=CarrilloShop";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Inicializar valores por defecto
 




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


        void LlenarForma(string clave)
        {
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                SqlCommand comando = new SqlCommand();
                SqlDataAdapter adapter = new SqlDataAdapter();
                DataTable datos = new DataTable();
                if (conn.State == 0)
                {
                    conn.Open();
                    comando.Connection = conn;
                    comando.CommandType = CommandType.StoredProcedure;
                    comando.CommandText = "Bus_Producto";
                    comando.Parameters.AddWithValue("@Pro_Cve", clave);
                    adapter.SelectCommand = comando;
                    adapter.Fill(datos);
                    if (datos.Rows.Count > 0)
                    {
                     /*   Pro_ID.Text = datos.Rows[0].ItemArray[0].ToString(); */
                        Pro_Nombre.Text = datos.Rows[0].ItemArray[1].ToString();
                        Pro_Descripcion.Text = datos.Rows[0].ItemArray[2].ToString();
                        Pro_Precio.Text = Convert.ToDouble(datos.Rows[0].ItemArray[3]).ToString("N");
                        Pro_Imagen.ImageUrl = datos.Rows[0].ItemArray[4].ToString();

                    }
                    
                    conn.Close();
                }
            }
            catch (Exception err)
            {
                Response.Write("<script>alert('" + err.Message + "')</script>");
            }
        }



    }
}





