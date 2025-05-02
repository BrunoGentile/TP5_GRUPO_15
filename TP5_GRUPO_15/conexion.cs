using System;
using System.Collections.Generic;
using System.Data.SqlClient; 
using System.Linq;
using System.Web;

namespace TP5_GRUPO_15
{
    public class conexion
    {
        private const string cadenaConexion = @"localhost\SQLEXPRESS;Initial Catalog = BDSucursales; Integrated Security = True;";

        public int ejectutarConsultas(string consultaSql)
        {

            SqlConnection sqlConnection = new SqlConnection(cadenaConexion);

            sqlConnection.Open();

            SqlCommand sqlCommand = new SqlCommand(consultaSql, sqlConnection);

            int filasAfectadas = sqlCommand.ExecuteNonQuery();

            sqlConnection.Close();
            return filasAfectadas;
        }
    }
}