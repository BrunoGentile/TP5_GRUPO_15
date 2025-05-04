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
        private conexion conexion = new conexion();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { 
                consultaSQL = "SELECT * FROM Provincia";
                conexion.CargarDropDownList(consultaSQL, ddlProvincia, "DescripcionProvincia", "Id_Provincia");
            }
        }


        protected void btnAceptar_Click(System.Object sender, System.EventArgs e)
        {
            consultaSQL = "INSERT INTO Sucursal (NombreSucursal,DescripcionSucursal ,Id_ProvinciaSucursal,DireccionSucursal) VALUES ('" + txtNombreSucursal.Text +"','"+ txtDescripcion.Text + "',"+ ddlProvincia.SelectedValue + ",'"+ txtDireccion.Text + "')";

        }
    }
}