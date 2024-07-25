using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace CodeProject
{
    public class Conector
    {
        //public static string strConexion = "user id=Corick_SQLLogin_1; password=46xqzadbj5; server=CarrilloShop.mssql.somee.com; database=CarrilloShop";

        public static string strConexion = "server=CORICKGS\\SQLEXPRESS;database=CarrilloShop;Trusted_Connection=True";
        public static (SqlConnection, SqlCommand, SqlDataAdapter, DataTable) BuscarRegistro(string strConexion, string sp, string Argumento, string lbText)
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
            comando.Connection = conn;
            comando.CommandType = CommandType.StoredProcedure;
            comando.CommandText = sp;
            comando.Parameters.AddWithValue(Argumento, lbText);
            adaptador.SelectCommand = comando;
            adaptador.Fill(datos);
            return (conn, comando, adaptador, datos);
        }

        public static (SqlConnection, SqlCommand, SqlDataAdapter, DataTable) LstTable(string strConexion, string sp)
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
            comando.Connection = conn;
            comando.CommandType = CommandType.StoredProcedure;
            comando.CommandText = sp;
            adaptador.SelectCommand = comando;
            adaptador.Fill(datos);
            return (conn, comando, adaptador, datos);
        }

        /*public static string[] LlenarDropDown(int cont)
        {
            string[] Elementos = new string[cont];
            for (int i = 0;i < cont; i++)
            {
                DLTalla.Items.Add(Elementos[i]);
            }
            return Elementos;
        }*/
    }
}