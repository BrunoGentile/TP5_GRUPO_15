﻿using System;
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
        private string consultaSQL2;
        private conexion conexion = new conexion();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LimpiarCampos()
        {
            txtIdSucursalEliminar.Text = string.Empty;
        }

        protected void PintarRojo()
        {
            txtIdSucursalEliminar.BackColor = System.Drawing.Color.Red;
        }

        protected void MostrarMensaje(int FilasAfectadas)
        {
            if (FilasAfectadas == 1)
            {
                LBL_Message.Text = "La sucursal se ha eliminado con éxito";
            }
            else
            {
                LBL_Message.Text = "No se ha encontrado la sucursal";
                PintarRojo();
            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            LBL_Message.Text = string.Empty;
            lblIdInexistente.Text = string.Empty;

            string idSucursal = txtIdSucursalEliminar.Text.Trim();

            int IdSucursal;

            bool haySucursal = int.TryParse(txtIdSucursalEliminar.Text, out IdSucursal);

            if (haySucursal && !conexion.ExisteSucursal(IdSucursal))
            {
                lblIdInexistente.Text = "No existe una sucursal con ese ID.";
                return;
            }

            if (!string.IsNullOrEmpty(idSucursal))
            {
                consultaSQL = "SELECT * FROM Sucursal WHERE Id_Sucursal = @Id_Sucursal";
                conexion.FiltrarConsultas(consultaSQL, gvEliminar, idSucursal);
                btnEliminarConfirmado.Visible = gvEliminar.Rows.Count > 0;
                btnCancelar.Visible=gvEliminar.Rows.Count > 0;
            }

           
        }

        protected void btnEliminarConfirmado_Click(object sender, EventArgs e)
        {
            string idSucursal = txtIdSucursalEliminar.Text.Trim();
            consultaSQL2 = "DELETE FROM Sucursal WHERE Id_Sucursal = @Id_Sucursal";
            int FilasAfectadas = conexion.EliminarSucursal(consultaSQL2,idSucursal);

            MostrarMensaje(FilasAfectadas);
            gvEliminar.DataSource = null;
            gvEliminar.DataBind();
            btnEliminarConfirmado.Visible = false;
            LimpiarCampos();
            
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            gvEliminar.DataSource = null;
            gvEliminar.DataBind();
            btnEliminarConfirmado.Visible = false;
            btnCancelar.Visible = false;
            LimpiarCampos();
        }
    }
}