using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP5_GRUPO_15
{
    public partial class Ejercicio1 : System.Web.UI.Page
    {
        private string consultaSQL;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected System.Void Page_Load(System.Object sender, System.EventArgs e)
        {

        }

        protected System.Void btnAceptar_Click(System.Object sender, System.EventArgs e)
        {
            consultaSQL = "INSERT INTO Sucursal (NombreSucursal,DescripcionSucursal ,Id_ProvinciaSucursal,DireccionSucursal) VALUES ('" + txtNombreSucursal.Text +"','"+ txtDescripcion.Text + "',"+ ddlProvincia.SelectedValue + ",'"+ txtDireccion.Text + "')";

        }
    }
}