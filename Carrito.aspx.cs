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
        // string strConexion = "Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=CarrilloShop;Data Source=DESKTOP-V1FA3U3";
        public static string strConexion = "Server=DESKTOP-V1FA3U3;Database=CarrilloShop;Integrated Security=True;";

        protected void Page_Load(object sender, EventArgs e)
        {
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
            string carrito = "alex@gmail.com";

            SqlConnection conn = new SqlConnection(strConexion);
            SqlCommand comando = new SqlCommand();
            if (conn.State == 0)
            {
                conn.Open();
            }
            comando.Connection = conn;

            comando.CommandType = CommandType.StoredProcedure;
            comando.CommandText = "Del_ListaCarrito";
            comando.Parameters.AddWithValue("@LisCar_ProID", clave);
            comando.Parameters.AddWithValue("@LisCar_carritoID", carrito);
            comando.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('C fue')</script>");
            LlenarGrid();

        }


        protected void grid_SelectedIndexChanged(object sender, EventArgs e)
        {
            string clave = GridView.Rows[GridView.SelectedRow.RowIndex].Cells[0].Text;
            EliminarPro(clave);
        }







    }
}