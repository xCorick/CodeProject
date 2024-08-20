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
    public partial class Catalogo : System.Web.UI.Page
    {
        //string strConexion = "Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=CarrilloShop;Data Source=DESKTOP-V1FA3U3";
        public static string strConexion = "Server=DESKTOP-V1FA3U3;Database=CarrilloShop;Integrated Security=True;";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton_Click(object sender, ImageClickEventArgs e)
        {

            ImageButton clickedButton = (ImageButton)sender;


            string buttonId = clickedButton.CommandArgument;


            Response.Redirect($"PanProducto.aspx?id={buttonId}");
        }









        public string CorreoUsuarioa()
        {
            Usuario usu = (Usuario)Session["User"];

            string correoUsuario = usu.Correo;

            return correoUsuario;

        }

        void CargarCarrito(string CorreoUsuario)
        {

            SqlConnection conn = new SqlConnection(strConexion);
            SqlCommand comando = new SqlCommand();
            if (conn.State == 0)
            {
                conn.Open();
            }
            comando.CommandType = CommandType.StoredProcedure;
            comando.CommandText = "Pa_CarritoID";
            comando.Parameters.AddWithValue("@Car_CliCorreo", CorreoUsuario);


            SqlParameter outputParam = new SqlParameter("@CarritoID", SqlDbType.VarChar, 10)
            {
                Direction = ParameterDirection.Output
            };
            comando.Parameters.Add(outputParam);

            conn.Open();
            comando.ExecuteNonQuery();


            string CarritoID = outputParam.Value.ToString();


            Session["CarritoUsu"] = CarritoID;
        }



    }
}