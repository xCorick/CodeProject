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
        string strConexion = "Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=CarrilloShop;Data Source=DESKTOP-V1FA3U3";

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

    }
}