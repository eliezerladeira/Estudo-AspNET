<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Videos.aspx.cs" Inherits="Videos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1
        {
            font-size: large;
        }
        .auto-style8
        {
            width: 10px;
        }
        .auto-style9
        {
            width: 288px;
        }
    </style>
</head>
<body style="height: 402px">
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <span class="auto-style1">Olá </span>
        <asp:LoginName ID="LoginName1" runat="server" Font-Bold="False" Font-Names="Verdana" Font-Size="14pt" />
        , <span class="auto-style1">seja bem vindo ao WebVideos<br />
        </span>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:Panel ID="pnlNewVideo" runat="server" BackColor="#FFFFC0" Height="239px" Width="500px">
                    <span class="auto-style1">Publicando Novo Vídeo<br /> </span>
                    <table style="width: 492px">
                        <tr>
                            <td class="auto-style8">Título:</td>
                            <td class="auto-style9">
                                <asp:TextBox ID="txtTitle" runat="server" Font-Names="Arial" Font-Size="XX-Small" MaxLength="50" Width="400px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style8">Descrição:</td>
                            <td class="auto-style9">
                                <asp:TextBox ID="txtDescription" runat="server" Font-Names="Arial" Font-Size="XX-Small" Height="50px" MaxLength="500" TextMode="MultiLine" Width="400px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style8">Arquivo:</td>
                            <td class="auto-style9">
                                <asp:FileUpload ID="FileUpload1" runat="server" Width="400px" />
                            </td>
                        </tr>
                    </table>
                    <br />
                    <asp:Button ID="btnPublish" runat="server" Text="Publicar" />
                </asp:Panel>
            </ContentTemplate>
            <Triggers>
                <asp:PostBackTrigger ControlID="btnPublish" />
            </Triggers>
        </asp:UpdatePanel>
    </form>
</body>
</html>
