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
    public class Conector
    {
        public static string strConexion = "user id=Corick_SQLLogin_1; password=46xqzadbj5; server=CarrilloShop.mssql.somee.com; database=CarrilloShop";
        //public static string strConnection = "user id=sa; password=DESKTOP-3A3O483\\SQLEXPRESS; server=.; database=CarrilloShop";
        //public static string strConexion = "user id=sa; password=uts; server=CORICKGS\\SQLEXPRESS; database=CarrilloShop";
        //public static string strConexion = "server=DESKTOP-3A3O483\\SQLEXPRESS;database=CarrilloShop;Trusted_Connection=True";
        //public static string strConexion = "server=CORICKGS\\SQLEXPRESS;database=CarrilloShop;Trusted_Connection=True";
        //public static string strConexion = "server=CORICKGS\\SQLEXPRESS;database=CarrilloShop;Trusted_Connection=True";
        //public static string strConexion = "user id=sa;password=Omega928117B312@;server=localhost,1433;database=CarrilloShop;Integrated Security=False;";
        //public static string strConexion = "server=DESKTOP-3A3O483\\SQLEXPRESS;database=CarrilloShop;Trusted_Connection=True";
        //public static string strConexion = "user id=sa; password=uts; server=.; database=CarrilloShop";
        //public static string strConexion = "Server=DESKTOP-V1FA3U3;Database=CarrilloShop;Integrated Security=True;";
        

        public static (SqlConnection, SqlCommand, SqlDataAdapter, DataTable) BuscarRegistro(string strConexion, string sp, string Argumento, string lbText)
        {
            SqlConnection conn = new SqlConnection(strConexion);
            SqlCommand comando = new SqlCommand();
            SqlDataAdapter adaptador = new SqlDataAdapter();
            DataTable datos = new DataTable();

            try
            {
                if (conn.State == 0)
                {
                    conn.Open();
                }

                comando.Connection = conn;
                comando.CommandType = CommandType.StoredProcedure;
                comando.CommandText = sp;
                comando.Parameters.AddWithValue(Argumento, lbText);
                adaptador.SelectCommand = comando;
                adaptador.Fill(datos);
            }

            catch
            {

            }
            return (conn, comando, adaptador, datos);
        }

        public static (SqlConnection, SqlCommand, SqlDataAdapter, DataTable) LstTable(string strConexion, string sp)
        {

            SqlConnection conn = new SqlConnection(strConexion);
            SqlCommand comando = new SqlCommand();
            SqlDataAdapter adaptador = new SqlDataAdapter();
            DataTable datos = new DataTable();

            try
            {

                if (conn.State == 0)
                {
                    conn.Open();
                }
                comando.Connection = conn;
                comando.CommandType = CommandType.StoredProcedure;
                comando.CommandText = sp;
                adaptador.SelectCommand = comando;
                adaptador.Fill(datos);
            }

            catch { 

            }

            return (conn, comando, adaptador, datos);
        }

        public static void SingUp(string strConexion, string correo, string password, string nombre, string apellidos, string celular)
        {
            try
            {
                SqlConnection conn = new SqlConnection(strConexion);
                SqlCommand comando = new SqlCommand();
                SqlDataAdapter adaptador = new SqlDataAdapter();
                DataTable datos = new DataTable();

                if (conn.State == 0)
                {
                    conn.Open();
                }


                comando.Connection = conn;
                comando.CommandType = CommandType.StoredProcedure;
                comando.CommandText = "Reg_Usuario";
                comando.Parameters.AddWithValue("@Usu_Correo", correo);
                comando.Parameters.AddWithValue("@Usu_Passwd", password);
                comando.Parameters.AddWithValue("@Cli_Nombre ", nombre);
                comando.Parameters.AddWithValue("@Cli_Apellidos ", apellidos);
                comando.Parameters.AddWithValue("@Cli_Celular ", celular);

            }
            catch (Exception ex)
            {
                
            }
        }   
        public static bool InsertInto(string strConexion, string sp, params string[] parametros)
        {
            double argumentos = Convert.ToDouble(parametros.Count());
            double residuoArgumentos = argumentos % 2;
            bool insercion = false;

            if (residuoArgumentos != 0)
            {
                return insercion = false;
            }
            else
            {
                try
                {
                    SqlConnection conn = new SqlConnection(strConexion);
                    SqlCommand comando = new SqlCommand();
                    comando.Connection = conn;

                    if(conn.State == 0)
                    {
                        conn.Open();
                    }

                    comando.CommandType = CommandType.StoredProcedure;
                    comando.CommandText = sp;

                    for (int i = 0; i < parametros.Length; i+=2)
                    {
                        comando.Parameters.AddWithValue(parametros[i], parametros[i+1]);
                    }
                    comando.ExecuteNonQuery();
                    conn.Close();
                    insercion = true;
                }
                catch
                {
                    insercion=false;
                }
            }
            return insercion;
        }
    }
 }