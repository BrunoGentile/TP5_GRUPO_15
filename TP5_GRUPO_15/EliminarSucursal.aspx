<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarSucursal.aspx.cs" Inherits="TP5_GRUPO_15.EliminarSucursal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
        }
        .auto-style4 {
            height: 26px;
            width: 191px;
        }
        .auto-style5 {
            width: 173px;
        }
        .auto-style6 {
            height: 26px;
            width: 173px;
        }
        .auto-style7 {
            height: 23px;
        }
        .auto-style8 {
            width: 173px;
            height: 23px;
        }
        .auto-style9 {
            width: 140px;
        }
        .auto-style10 {
            width: 140px;
            height: 23px;
        }
        .auto-style11 {
            height: 26px;
            width: 140px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:HyperLink ID="hlAgregarSucursal" runat="server" NavigateUrl="~/Ejercicio1.aspx">Agregar sucursal</asp:HyperLink>
                    </td>
                    <td class="auto-style9">
                        <asp:HyperLink ID="hlListadoSucursales" runat="server" NavigateUrl="~/ListarSucursal.aspx">Listado de sucursales</asp:HyperLink>
                    </td>
                    <td class="auto-style5">
                        <asp:HyperLink ID="hlEliminarSucursal" runat="server" NavigateUrl="~/EliminarSucursal.aspx">Eliminar sucursal</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblEliminarSucursal" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Eliminar sucursal"></asp:Label>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style7"></td>
                    <td class="auto-style7"></td>
                    <td class="auto-style7"></td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblIdSucurssal" runat="server" Font-Size="Large" Text="Ingresar ID sucursal :"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:TextBox ID="txtIdSucursalEliminar" runat="server" oninput="this.style.backgroundColor='white'" Width="217px" ValidationGroup="1"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:RegularExpressionValidator ID="REV_IdSucursal" runat="server" ControlToValidate="txtIdSucursalEliminar" ForeColor="#CC0000" ValidationExpression="^\d+$" ValidationGroup="1">*</asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RFV_Idsucursal" runat="server" ControlToValidate="txtIdSucursalEliminar" ValidationGroup="1">Ingrese Id de sucursal</asp:RequiredFieldValidator>
                        <br />
                        <asp:Label ID="lblIdInexistente" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" ValidationGroup="1" />
                    </td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="LBL_Message" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style3" colspan="2">
                        <asp:GridView ID="gvEliminar" runat="server">
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="btnEliminarConfirmado" runat="server" OnClick="btnEliminarConfirmado_Click" Text="Confirmar" Visible="False" />
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="2">
                        &nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="2">
                        &nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
