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
    public partial class Carrito : System.Web.UI.Page
    {
        //string strConexion = "Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=CarrilloShop;Data Source=DESKTOP-V1FA3U3";
        //public static string strConexion = "Server=DESKTOP-V1FA3U3;Database=CarrilloShop;Integrated Security=True;";
        //string strConexion = "Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=CarrilloShop;Data Source=DESKTOP-V1FA3U3";

        public static string strConexion = "user id=sa; password=uts; server=.; database=CarrilloShop";

        protected void Page_Load(object sender, EventArgs e)
        {
            /*
            Usuario usuario = (Usuario)Session["user"];
            if (usuario == null)
            {
                Response.Redirect("Catalogo.aspx");
            }
            */

            LlenarGrid();
        }


        void LlenarGrid()
        {
            var (conn, comando, adaptador, datos) = Conector.BuscarRegistro(Conector.strConexion, "LlenarListaCarrito", "@LisCar_carritoID", "7DB72A33-2");

            GridView.DataSource = datos;
            GridView.DataBind();
            conn.Close();
        }







        void EliminarPro(string clave)
        {
            SqlConnection conn = new SqlConnection(strConexion);

            string carritoid = "7DB72A33-2";


            using (SqlCommand comando = new SqlCommand("Carrito", conn))
            {
                conn.Open();

                comando.CommandType = CommandType.StoredProcedure;
                comando.CommandText = "Del_ListaCarrito";



                comando.Parameters.Add("@LisCar_CarritoID", SqlDbType.VarChar).Value = carritoid;

                comando.Parameters.Add("@LisCar_ProID", SqlDbType.VarChar).Value = clave;

                comando.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert('C fue')</script>");
                LlenarGrid();

            }


        }


        protected void grid_SelectedIndexChanged(object sender, EventArgs e)
        {
            string clave = GridView.Rows[GridView.SelectedRow.RowIndex].Cells[0].Text;
            EliminarPro(clave);
        }


        void CargarCarrito(string Correo)
        {
            SqlConnection conn = new SqlConnection(strConexion);
            SqlCommand comando = new SqlCommand();
            if (conn.State == 0)
            {
                conn.Open();
            }
            comando.CommandType = CommandType.StoredProcedure;
            comando.CommandText = "Pa_CarritoID";
            comando.Parameters.AddWithValue("@Car_CliCorreo", Correo);
            comando.ExecuteNonQuery();

            conn.Close();

        }

        public string CorreoUsuarioa()
        {
            string Correo = "alexgrijalva@gmail.com";
            return Correo;
        }

    }
}