using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP5_GRUPO_15
{
    public partial class EliminarSucursal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LimpiarCampos()
        {
            txtIdSucursalEliminar.Text = string.Empty;
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            LimpiarCampos(); // LIMPIA TEXTBOX 
        }
    }
}