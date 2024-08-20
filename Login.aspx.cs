using Microsoft.Ajax.Utilities;
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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Usuario usuario = (Usuario)Session["User"];
            if (usuario != null)
            {
                Response.Redirect("Default.aspx");
            }
        }


        void CargarCarrito(string correo)
        {
            var (conn, comando, adaptador, datos) = Conector.BuscarRegistro(Conector.strConexion, "Pa_CarritoID", "@Car_CliCorreo", correo);
            string idCarrito = datos.Rows[0].ItemArray[0].ToString();

            ClaseCarrito carrito = new ClaseCarrito(datos.Rows[0].ItemArray[0].ToString());


            Session["CarritoUsu"] = carrito;
        }





        protected void Entrar_Click(object sender, EventArgs e)
        {
            var (conn, comando, adaptador, datos) = Conector.BuscarRegistro(Conector.strConexion, "Bus_Usuario", "@Usu_Correo", Convert.ToString(inputcorreo.Value));

            if (datos.Rows.Count > 0)
            {
                Usuario usu = new Usuario(datos.Rows[0].ItemArray[0].ToString(),
                    datos.Rows[0].ItemArray[1].ToString(),
                    Convert.ToBoolean(datos.Rows[0].ItemArray[2]), datos.Rows[0].ItemArray[3].ToString());

                     

                if (Convert.ToString(inputcorreo.Value) == usu.Correo && Convert.ToString(inputpassword.Value) == usu.PassworD)
                {
                    //lb_mensaje.Text = "Todo un sigma";
                    Session["user"] = usu;

                    string correo = usu.Correo.ToString();

                    CargarCarrito(correo);


                    Response.Redirect("Default.aspx");

                }
                else
                {
                    Response.Write("<script>alert('No existe el usuario')</script>");
                }





            }
            else
            {
                Response.Write("<script>alert('No existe el usuario')</script>");
            }
            conn.Close();

 
        }


    }
}