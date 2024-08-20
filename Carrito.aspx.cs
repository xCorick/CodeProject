using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Ajax.Utilities;

namespace CodeProject
{
    public partial class Carrito : System.Web.UI.Page
    {
        //string strConexion = "Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=CarrilloShop;Data Source=DESKTOP-V1FA3U3";
        //public static string strConexion = "Server=DESKTOP-V1FA3U3;Database=CarrilloShop;Integrated Security=True;";
      
       
        //public static string strConexion = "user id=sa; password=uts; server=.; database=CarrilloShop";

        protected void Page_Load(object sender, EventArgs e)
        {
            ClaseCarrito carrito = Session["CarritoUsu"] as ClaseCarrito;

            Usuario usu = (Usuario)Session["User"];
            if (usu == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                
            }

            string CarritoID = carrito.CarritoID;

            LlenarGrid(CarritoID);

        }


        void LlenarGrid(string CarritoID)
        {
            /*
            var (conn, comando, adaptador, datos) = Conector.BuscarRegistro(Conector.strConexion, "LlenarListaCarrito", "@LisCar_carritoID", "7DB72A33-2");

            GridView.DataSource = datos;
            GridView.DataBind();
            conn.Close();
            */
           

            SqlConnection conn = new SqlConnection(Conector.strConexion);
            SqlCommand comando = new SqlCommand();
            SqlDataAdapter adaptador = new SqlDataAdapter();
            DataTable datos = new DataTable();

            if (conn.State == 0)
            {
                conn.Open();
                comando.Connection = conn;
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.Add("@LisCar_CarritoID", SqlDbType.VarChar).Value = CarritoID;
                comando.CommandText = "LlenarListaCarrito";
                adaptador.SelectCommand = comando;
                adaptador.Fill(datos);
                GridView.DataSource = datos;
                GridView.DataBind();
                conn.Close();
            }
        }





        void EliminarPro(string CarritoID, string clave)
        {
            SqlConnection conn = new SqlConnection(Conector.strConexion);


            using (SqlCommand comando = new SqlCommand("Carrito", conn))
            {
                conn.Open();

                comando.CommandType = CommandType.StoredProcedure;
                comando.CommandText = "Del_ListaCarrito";



                comando.Parameters.Add("@LisCar_CarritoID", SqlDbType.VarChar).Value = CarritoID;

                comando.Parameters.Add("@LisCar_ProID", SqlDbType.VarChar).Value = clave;

                comando.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert('C fue')</script>");
                LlenarGrid(CarritoID);

            }


        }


        protected void grid_SelectedIndexChanged(object sender, EventArgs e)
        {
            ClaseCarrito carrito = Session["CarritoUsu"] as ClaseCarrito;
            string id = carrito.CarritoID;
            string clave = GridView.Rows[GridView.SelectedRow.RowIndex].Cells[0].Text;
            EliminarPro(id, clave);
            
        }
    }
}