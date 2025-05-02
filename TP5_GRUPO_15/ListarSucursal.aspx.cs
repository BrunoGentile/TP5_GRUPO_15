using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP5_GRUPO_15
{
    public partial class Ejercicio2 : System.Web.UI.Page
    {
        private conexion conexion = new conexion();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // FUNCIÓN PARA LIMPIAR TEXTBOX
        protected void LimpiarCampos()
        {
            txtIdSucursal.Text = string.Empty;
        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            LimpiarCampos(); // LIMPIA TEXTBOX
        }

        protected void btnMostrarTodos_Click(object sender, EventArgs e)
        {
            LimpiarCampos(); // LIMPIA TEXTBOX
        }
    }
}