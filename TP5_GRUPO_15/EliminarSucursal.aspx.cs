using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TP5_GRUPO_15
{
    
    public partial class EliminarSucursal : System.Web.UI.Page
    {
        private string consultaSQL;
        private conexion conexion = new conexion();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LimpiarCampos()
        {
            txtIdSucursalEliminar.Text = string.Empty;
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            string idSucursal = txtIdSucursalEliminar.Text.Trim();

            if (!string.IsNullOrEmpty(idSucursal))
            {
                consultaSQL = "DELETE FROM Sucursal WHERE Id_Sucursal = @Id_Sucursal";
                conexion.EliminarSucursal(consultaSQL, idSucursal);
            }

            LimpiarCampos(); // LIMPIA TEXTBOX 

        }


    }
}