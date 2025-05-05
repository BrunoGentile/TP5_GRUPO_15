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
        private const string cadenaConexion = "Data Source=localhost\\sqlexpress; Initial Catalog=BDSucursales;Integrated Security = True";

        public int ejectutarConsultas(string consultaSql)
        {

            SqlConnection sqlConnection = new SqlConnection(cadenaConexion);

            sqlConnection.Open();

            SqlCommand sqlCommand = new SqlCommand(consultaSql, sqlConnection);


            int filasAfectadas = sqlCommand.ExecuteNonQuery();

            sqlConnection.Close();
            return filasAfectadas;
        }

        public void FiltrarProvincias(string consultaSql, GridView gv, string idProvinciaSucursal)
        {
            SqlConnection sqlConnection = new SqlConnection(cadenaConexion);

            sqlConnection.Open();

            SqlCommand sqlCommand = new SqlCommand(consultaSql, sqlConnection);

            sqlCommand.Parameters.AddWithValue("@Id_ProvinciaSucursal", idProvinciaSucursal);
            SqlDataReader reader = sqlCommand.ExecuteReader();
            gv.DataSource = reader;
            gv.DataBind();
            sqlConnection.Close();
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

        public int EliminarSucursal(string consultaSql, string idSucursal)
        {
            SqlConnection sqlConnection = new SqlConnection(cadenaConexion);
                sqlConnection.Open();

            SqlCommand sqlCommand = new SqlCommand(consultaSql, sqlConnection);
            sqlCommand.Parameters.AddWithValue("@Id_Sucursal", idSucursal);


                int filasAfectadas = sqlCommand.ExecuteNonQuery();
                return filasAfectadas;
                sqlConnection.Close();
         
        }
        public bool ExisteSucursal(int Id_Sucursal)
        {
            bool existe = false;

            using (SqlConnection sqlConnection = new SqlConnection(cadenaConexion))
            {
                string consultaSucursal = "SELECT COUNT(*) FROM Sucursal WHERE Id_Sucursal = @Id_Sucursal";
                SqlCommand sqlCommand = new SqlCommand(consultaSucursal, sqlConnection);
                sqlCommand.Parameters.AddWithValue("@Id_Sucursal", Id_Sucursal);


                sqlConnection.Open();
                int cantidad = (int)sqlCommand.ExecuteScalar();
                existe = cantidad > 0;
            }

            return existe;
        }

        public bool ExisteNombreSucursal(string nombreSucursal)
        {
            bool existe = false;
            using (SqlConnection sqlConnection = new SqlConnection(cadenaConexion))
            {
                string consulta = "SELECT COUNT(*) FROM Sucursal WHERE NombreSucursal = @NombreSucursal";
                SqlCommand sqlCommand = new SqlCommand(consulta, sqlConnection);
                sqlCommand.Parameters.AddWithValue("@NombreSucursal", nombreSucursal);

                sqlConnection.Open();
                int cantidad = (int)sqlCommand.ExecuteScalar();
                existe = cantidad > 0;
            }
            return existe;
        }

        public int GuardarSucursal(string nombre, string descripcion, int idProvincia, string direccion)
        {
            SqlConnection sqlConnection = new SqlConnection(cadenaConexion);
            SqlCommand sqlCommand = new SqlCommand();

            sqlCommand.Connection = sqlConnection;
            sqlCommand.CommandText = "INSERT INTO Sucursal (NombreSucursal, DescripcionSucursal, Id_ProvinciaSucursal, DireccionSucursal) " +
                                     "VALUES (@Nombre, @Descripcion, @IdProvincia, @Direccion)";

            sqlCommand.Parameters.AddWithValue("@Nombre", nombre);
            sqlCommand.Parameters.AddWithValue("@Descripcion", descripcion);
            sqlCommand.Parameters.AddWithValue("@IdProvincia", idProvincia);
            sqlCommand.Parameters.AddWithValue("@Direccion", direccion);

            sqlConnection.Open();
            int filasAfectadas = sqlCommand.ExecuteNonQuery();
            sqlConnection.Close();

            return filasAfectadas;
        }

    }
}

    



