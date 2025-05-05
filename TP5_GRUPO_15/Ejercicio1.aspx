<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="TP5_GRUPO_15.Ejercicio1" %>

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
            height: 23px;
        }
        .auto-style3 {
            width: 245px;
        }
        .auto-style4 {
            height: 23px;
            width: 245px;
        }
        .auto-style7 {
            width: 168px;
        }
        .auto-style8 {
            height: 23px;
            width: 168px;
        }
        .auto-style13 {
            width: 245px;
            height: 16px;
        }
        .auto-style14 {
            width: 168px;
            height: 16px;
        }
        .auto-style17 {
            height: 16px;
        }
        .auto-style18 {
            width: 245px;
            height: 30px;
        }
        .auto-style19 {
            width: 168px;
            height: 30px;
        }
        .auto-style22 {
            height: 30px;
        }
        .auto-style23 {
            width: 245px;
            height: 40px;
        }
        .auto-style24 {
            width: 168px;
            height: 40px;
        }
        .auto-style27 {
            height: 40px;
        }
        .auto-style28 {
            height: 23px;
            width: 207px;
        }
        .auto-style29 {
            width: 207px;
            height: 16px;
        }
        .auto-style30 {
            width: 207px;
        }
        .auto-style31 {
            width: 207px;
            height: 40px;
        }
        .auto-style32 {
            width: 207px;
            height: 30px;
        }
        .auto-style33 {
            height: 23px;
            width: 234px;
        }
        .auto-style34 {
            width: 234px;
            height: 16px;
        }
        .auto-style35 {
            width: 234px;
        }
        .auto-style36 {
            width: 234px;
            height: 40px;
        }
        .auto-style37 {
            width: 234px;
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style28"></td>
                    <td class="auto-style33"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Ejercicio1.aspx">Agregar Sucursal</asp:HyperLink>
                        &nbsp;
                    </td>
                    <td class="auto-style14">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ListarSucursal.aspx">Listado de Sucursales</asp:HyperLink>
                    </td>
                    <td class="auto-style29">
                        <asp:HyperLink ID="hlEliminarSucursal" runat="server" NavigateUrl="~/EliminarSucursal.aspx">Eliminar Sucursal</asp:HyperLink>
                    </td>
                    <td class="auto-style34"></td>
                    <td class="auto-style17"></td>
                    <td class="auto-style17"></td>
                    <td class="auto-style17"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style35">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23">
                        <asp:Label ID="lbGrupo" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="GRUPO Nº"></asp:Label>
                    </td>
                    <td class="auto-style24"></td>
                    <td class="auto-style31"></td>
                    <td class="auto-style36"></td>
                    <td class="auto-style27"></td>
                    <td class="auto-style27"></td>
                    <td class="auto-style27"></td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style28"></td>
                    <td class="auto-style33"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Agregar Sucursal"></asp:Label>
                    </td>
                    <td class="auto-style19"></td>
                    <td class="auto-style32"></td>
                    <td class="auto-style37"></td>
                    <td class="auto-style22"></td>
                    <td class="auto-style22"></td>
                    <td class="auto-style22"></td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style28"></td>
                    <td class="auto-style33"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style4">Nombre Sucursal: </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtNombreSucursal" runat="server" Height="16px" Width="169px"></asp:TextBox>
                    </td>
                    <td class="auto-style28">
                        <asp:CheckBox ID="cbPermitirDuplicados" runat="server" Checked="True" Text="permitir nombres duplicados" />
                        <br />
                    </td>
                    <td class="auto-style33">
                        <asp:RequiredFieldValidator ID="rfvNombreSucursal" runat="server" ControlToValidate="txtNombreSucursal" Display="None" ErrorMessage="Ingrese una sucursal">Ingrese una sucursal</asp:RequiredFieldValidator>
                        <asp:Label ID="lblNombreExistente" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style4">Descripción:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtDescripcion" runat="server" Height="39px" TextMode="MultiLine" Width="177px"></asp:TextBox>
                    </td>
                    <td class="auto-style28">
                        <asp:RequiredFieldValidator ID="rfvDescripcion" runat="server" ControlToValidate="txtDescripcion" Display="None" ErrorMessage="Añada una descripción">Añada una descripción</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style33">
                        <asp:ValidationSummary ID="vsMensajesErrores" runat="server" HeaderText="Se encontraron los siguientes errores:" />
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Provincia:</td>
                    <td class="auto-style8">
                        <asp:DropDownList ID="ddlProvincia" runat="server" Height="20px" Width="183px">
                            <asp:ListItem>--Seleccionar--</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style28">
                        <asp:RequiredFieldValidator ID="rfvProvincia" runat="server" ControlToValidate="ddlProvincia" InitialValue="0" Display="None" ErrorMessage="Seleccione una provincia">Seleccione una provincia</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style33"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style4">direccion:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtDireccion" runat="server" Height="16px" Width="172px"></asp:TextBox>
                    </td>
                    <td class="auto-style28">
                        <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="txtDireccion" Display="None" ErrorMessage="Ingrese una dirección">Ingrese una dirección</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style33"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style28">&nbsp;</td>
                    <td class="auto-style33">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" OnClick="btnAceptar_Click" />
                    </td>
                    <td class="auto-style28">&nbsp;</td>
                    <td class="auto-style33">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style28">&nbsp;</td>
                    <td class="auto-style33">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
