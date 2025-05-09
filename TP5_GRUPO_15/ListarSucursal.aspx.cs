﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Reflection;

namespace TP5_GRUPO_15
{
    public partial class Ejercicio2 : System.Web.UI.Page
    {
        private string consultasSql;
        private int filasAfectadas;
        private conexion conexion = new conexion();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        // FUNCIÓN PARA LIMPIAR TEXTBOX
        protected void LimpiarCampos()
        {
            txtIdSucursal.Text = string.Empty;
        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            consultasSql = "SELECT Id_Sucursal, NombreSucursal, DescripcionSucursal, Id_ProvinciaSucursal, DireccionSucursal FROM Sucursal WHERE Id_Sucursal = @Id_Sucursal";
            conexion.FiltrarConsultas(consultasSql, gvSucursales, txtIdSucursal.Text);

            if (gvSucursales.Rows.Count == 0)
            {
                lblContador.Text = "❌ No se encontró ningún registro con el ID ingresado.";
            }
            else
            {
                lblContador.Text = "Registros encontrados: " + gvSucursales.Rows.Count.ToString();
            }

            LimpiarCampos(); // LIMPIA TEXTBOX
        }

        protected void btnMostrarTodos_Click(object sender, EventArgs e)
        {

            consultasSql = "SELECT S.Id_Sucursal, S.NombreSucursal, S.DescripcionSucursal, P.DescripcionProvincia AS Provincia, S.DireccionSucursal FROM Sucursal S INNER JOIN Provincia P ON S.Id_ProvinciaSucursal = P.Id_Provincia";
            conexion.MostrarConsultas(consultasSql, gvSucursales);

            lblContador.Text = "Registros encontrados: " + gvSucursales.Rows.Count.ToString();

            LimpiarCampos(); // LIMPIA TEXTBOX

        }


        protected void btnFiltrarProvincia_Click(object sender, EventArgs e)
        {
            consultasSql = "SELECT Id_Sucursal, NombreSucursal, DescripcionSucursal, Id_ProvinciaSucursal, DireccionSucursal FROM Sucursal WHERE Id_ProvinciaSucursal = @Id_ProvinciaSucursal";
            conexion.FiltrarProvincias(consultasSql, gvSucursales, txtIdProvincia.Text);

            LimpiarCampos(); // LIMPIA TEXTBOX
        }
    }
}
