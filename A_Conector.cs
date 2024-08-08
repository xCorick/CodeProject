using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace CodeProject
{
    public class A_Conector
    {
        static void main()
        {
            string connectionString = "Server=CISCO1;Database=CarrilloShop;User Id=sa;Password=uts;";

            // Crear una conexión
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    // Abrir la conexión
                    connection.Open();
                    Console.WriteLine("Conexión abierta exitosamente.");

                    // Crear un comando
                    SqlCommand command = new SqlCommand("SELECT * FROM ListaCarrito", connection);

                    // Ejecutar el comando y leer datos
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        Console.WriteLine(reader["LisCar_CarID"].ToString());
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine("Error: " + ex.Message);
                }

            }
        }
    }
}