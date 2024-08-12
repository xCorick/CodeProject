using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace CodeProject
{
    public partial class SingUp : System.Web.UI.Page
    {
        public static string strConexion = "user id=Corick_SQLLogin_1; password=46xqzadbj5; server=CarrilloShop.mssql.somee.com; database=CarrilloShop";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Create_Click(object sender, EventArgs e)
        {
            string userName = name.Text;
            string lasName = lastname.Text;
            string cell = cellphone.Text;
            string mail = email.Text;
            string password = txtPassword.Text;
            string confirmPassword = txtConfirmPassword.Text;

            if (password != confirmPassword)
            {
                return;
            }

            bool insercion = Conector.InsertInto(Conector.strConexion, "Reg_Usuario", "@Usu_Correo", mail, "@Usu_Passwd", password,
                "@Cli_Nombre", userName, "@Cli_Apellidos", lasName, "@Cli_Celular", cell);
                   
            try
            {
                if (insercion)
                {
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Ha ocurrido un error. Intente de nuevo.')</script>");
                }
            }
            catch 
            {
                Response.Write("<script>alert('Ha ocurrido un error. Intente de nuevo.')</script>");
            }
           


























            /*using (SqlConnection conn = new SqlConnection(strConexion))
             {
                 using (SqlCommand comando = new SqlCommand("Reg_Usuario", conn))
                 {
                     comando.CommandType = System.Data.CommandType.StoredProcedure;
                     comando.CommandText = "Reg_Usuario";

                     comando.Parameters.AddWithValue("@Usu_Correo", mail);
                     comando.Parameters.AddWithValue("@Usu_Passwd", password);
                     comando.Parameters.AddWithValue("@Cli_Nombre", userName);
                     comando.Parameters.AddWithValue("@Cli_Apellidos", lasName);
                     comando.Parameters.AddWithValue("@Cli_Celular", cell);

                     try
                     {
                         conn.Open();
                         comando.ExecuteNonQuery();
                         Response.Redirect("Login.aspx");
                     }
                     catch (Exception ex)
                     {
                         lblError.Text = "Error: " + ex.Message;
                         lblError.Visible = true;
                     }
                 }   
             }

                 var (conn, comando, adaptador, datos) = Conector.BuscarRegistro(Conector.strConexion, "Bus_Cliente", "@Cli_Correo", email.Text);
             message.Visible = true;
             if (datos.Rows.Count > 0)
             {
                 message.Text = "Correo previamente registrado.";
             }
             else
             {

             }*/
        }
    }
}