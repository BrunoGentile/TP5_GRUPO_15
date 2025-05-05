using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP5_GRUPO_15
{
    public partial class Ejercicio1 : System.Web.UI.Page
    {
        private const string cadenaConexion = @"Data Source=Localhost\SQLEXPRESS;Initial Catalog = BDSucursales; Integrated Security = True; Encrypt=True; TrustServerCertificate=True";
        private string consultaSQL;
        private conexion conexion = new conexion();
        private int filasAfectadas;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                consultaSQL = "SELECT * FROM Provincia";
                conexion.CargarDropDownList(consultaSQL, ddlProvincia, "DescripcionProvincia", "Id_Provincia");
            }
        }


        protected void btnAceptar_Click(System.Object sender, System.EventArgs e)
        {
            consultaSQL = "INSERT INTO Sucursal (NombreSucursal,DescripcionSucursal ,Id_ProvinciaSucursal,DireccionSucursal) VALUES ('" + txtNombreSucursal.Text + "','" + txtDescripcion.Text + "'," + ddlProvincia.SelectedValue + ",'" + txtDireccion.Text + "')";

             conexion.ejectutarConsultas(consultaSQL);

            lblNombreExistente.Text = string.Empty;

            string nombre = txtNombreSucursal.Text.Trim();
            string descripcion = txtDescripcion.Text;
            int idProvincia = int.Parse(ddlProvincia.SelectedValue);
            string direccion = txtDireccion.Text;

            if (!cbPermitirDuplicados.Checked && conexion.ExisteNombreSucursal(nombre))
            {
                lblNombreExistente.Text = "Ya existe una sucursal con ese nombre.";
                return;
            }

            int filasAfectadas = conexion.GuardarSucursal(nombre, descripcion, idProvincia, direccion);

            LimpiarCampos();
            MostrarMensajeOperacion(filasAfectadas > 0);

        }

        protected void LimpiarCampos()
        {
            txtNombreSucursal.Text = string.Empty;
            txtDescripcion.Text = string.Empty;
            ddlProvincia.SelectedIndex = 0;
            txtDireccion.Text = string.Empty;
        }

        private void MostrarMensajeOperacion(bool exito)
        {
            if (exito)
            {
                lblMensaje.ForeColor = System.Drawing.Color.Green;
                lblMensaje.Text = "✅ La operación fue exitosa.";
            }
            else
            {
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Text = "❌ No se pudo realizar la operación.";
            }
        }
    }
}