using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient; 
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace TP5_GRUPO_15
{
    public class conexion
    {
        private const string cadenaConexion = @"Data Source=Localhost\SQLEXPRESS;Initial Catalog = BDSucursales; Integrated Security = True; Encrypt=True; TrustServerCertificate=True";


        public int ejectutarConsultas(string consultaSql)
        {

            SqlConnection sqlConnection = new SqlConnection(cadenaConexion);

            sqlConnection.Open();

            SqlCommand sqlCommand = new SqlCommand(consultaSql, sqlConnection);


            int filasAfectadas = sqlCommand.ExecuteNonQuery();

            sqlConnection.Close();
            return filasAfectadas;
        }


        public void MostrarConsultas(string consultaSql, GridView gv)
        {
           
            SqlConnection sqlConnection = new SqlConnection(cadenaConexion);

            sqlConnection.Open();

            SqlCommand sqlCommand = new SqlCommand(consultaSql, sqlConnection);

            SqlDataReader reader = sqlCommand.ExecuteReader();
            gv.DataSource = reader;
            gv.DataBind();
            sqlConnection.Close();
       
        }






    }

}
