using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient; 
using System.Linq;
using System.Security.Cryptography;
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

        public void FiltrarConsultas(string consultaSql, GridView gv, string idSucursal)
        {
            SqlConnection sqlConnection = new SqlConnection(cadenaConexion);

            sqlConnection.Open();

            SqlCommand sqlCommand = new SqlCommand(consultaSql, sqlConnection);

            sqlCommand.Parameters.AddWithValue("@Id_Sucursal", idSucursal);
            SqlDataReader reader = sqlCommand.ExecuteReader();
            gv.DataSource = reader;
            gv.DataBind();
            sqlConnection.Close();
        }

        public void CargarDropDownList(string consultaSql, DropDownList ddl, string campoTexto, string campoValor)
        {
            SqlConnection sqlConnection = new SqlConnection(cadenaConexion);

            sqlConnection.Open();

            SqlCommand sqlCommand = new SqlCommand(consultaSql, sqlConnection);
            SqlDataReader reader = sqlCommand.ExecuteReader();

            ddl.DataSource = reader;
            ddl.DataTextField = campoTexto;   
            ddl.DataValueField = campoValor;  
            ddl.DataBind();
            ddl.Items.Insert(0, new ListItem("--Seleccionar--", "0"));

            reader.Close();
            sqlConnection.Close();
        }




    }

}
