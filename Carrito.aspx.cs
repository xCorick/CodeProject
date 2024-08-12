using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;

namespace CodeProject
{
    public partial class Carrito : System.Web.UI.Page
    {
        //string strConexion = "Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=CarrilloShop;Data Source=DESKTOP-V1FA3U3";
        public static string strConexion = "user id=sa; password=uts; server=.; database=CarrilloShop";

        protected void Page_Load(object sender, EventArgs e)
         {

            Usuario usuario = (Usuario)Session["user"];
            if (usuario == null)
            {
                Response.Redirect("Catalogo.aspx");
            }


            LlenarGrid();
         }


        void LlenarGrid()
        {
            SqlConnection conn = new SqlConnection(strConexion);
            SqlCommand comando = new SqlCommand();
            SqlDataAdapter adaptador = new SqlDataAdapter();
            DataTable datos = new DataTable();

            if (conn.State == 0)
            {
                conn.Open();
                comando.Connection = conn;
                comando.CommandType = CommandType.StoredProcedure;
                comando.CommandText = "Cons_ListaCarrito";
                adaptador.SelectCommand = comando;
                adaptador.Fill(datos);
                GridView.DataSource = datos;
                GridView.DataBind();
                conn.Close();
            }
        }







        void EliminarPro(string clave)
        {
            SqlConnection conn = new SqlConnection(strConexion);

            string carritoid = "7DB72A33-2";

               SqlCommand comando = new SqlCommand();
               if (conn.State == 0)
               {
                   conn.Open();
               }
                   comando.CommandType = CommandType.StoredProcedure;
                   comando.CommandText = "Del_ListaCarrito";
                   comando.Parameters.AddWithValue("@LisCar_ProID", clave);
                   comando.Parameters.AddWithValue("@LisCar_CarritoID", carritoid);
                   comando.ExecuteNonQuery();
                   conn.Close();
                   Response.Write("<script>alert('C fue')</script>");
                   LlenarGrid();


            ----------------------------

            using (SqlCommand command = new SqlCommand("Del_ListaCarrito", conn))
            {
                command.CommandType = CommandType.StoredProcedure;

                // Añadir parámetros al comando
                command.Parameters.AddWithValue("@LisCar_ProID", clave);
                command.Parameters.AddWithValue("@LisCar_CarritoID", carritoid);

                // Abrir la conexión
                conn.Open();

                // Ejecutar el procedimiento almacenado
                command.ExecuteNonQuery();
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