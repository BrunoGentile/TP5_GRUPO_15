<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarSucursal.aspx.cs" Inherits="TP5_GRUPO_15.Ejercicio2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            width: 170px;
        }
        .auto-style5 {
            width: 239px;
        }
        .auto-style7 {
            width: 36px;
        }
        .auto-style8 {
            width: 47px;
        }
        .auto-style9 {
            width: 200px;
        }
        .auto-style10 {
            width: 239px;
            height: 30px;
        }
        .auto-style11 {
            width: 170px;
            height: 30px;
        }
        .auto-style12 {
            width: 200px;
            height: 30px;
        }
        .auto-style13 {
            width: 47px;
            height: 30px;
        }
        .auto-style14 {
            width: 36px;
            height: 30px;
        }
        .auto-style15 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">
                    <asp:HyperLink ID="hlAgregarSucursal" runat="server" NavigateUrl="~/Ejercicio1.aspx">Agregar Sucursal</asp:HyperLink>
                </td>
                <td class="auto-style4">
                    <asp:HyperLink ID="hlListadoSucursales" runat="server" NavigateUrl="~/ListarSucursal.aspx">Listado de sucursales</asp:HyperLink>
                </td>
                <td class="auto-style9">
                    <asp:HyperLink ID="hlEliminarSucursal" runat="server" NavigateUrl="~/EliminarSucursal.aspx">Eliminar sucursal</asp:HyperLink>
                </td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblListadoSucursales" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Listado de sucursales"></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="lblIdSucursal" runat="server" Text="Búsqueda ingrese Id sucursal:"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtIdSucursal" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:RegularExpressionValidator ID="REV_IDSucursal" runat="server" ControlToValidate="txtIdSucursal" ForeColor="#CC0000" ValidationExpression="^\d+$">*</asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="rfvCampoVacio" runat="server" ControlToValidate="txtIdSucursal" ValidationGroup="EspacioVacio">Ingresar Id de sucursal</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style13">
                    <asp:Button ID="btnFiltrar" runat="server" Text="Filtrar" OnClick="btnFiltrar_Click" ValidationGroup="EspacioVacio" />
                </td>
                <td class="auto-style14"></td>
                <td class="auto-style15">
                    <asp:Button ID="btnMostrarTodos" runat="server" Text="Mostrar todos" OnClick="btnMostrarTodos_Click" ValidationGroup="0" />
                </td>
                <td class="auto-style15"></td>
                <td class="auto-style15"></td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="lblContador" runat="server"></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="6">
                    <asp:GridView ID="gvSucursales" runat="server" AutoGenerateColumns="true" Width="237px">
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
