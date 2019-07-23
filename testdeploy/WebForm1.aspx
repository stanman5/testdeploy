<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="testdeploy.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 488px;
        }
        .auto-style2 {
            width: 267px;
        }
        .auto-style3 {
            width: 488px;
            height: 26px;
        }
        .auto-style4 {
            width: 267px;
            height: 26px;
        }
        .auto-style7 {
            height: 19px;
        }
        .auto-style8 {
            width: 488px;
            height: 19px;
        }
        .auto-style9 {
            width: 267px;
            height: 19px;
        }
    </style>
</head>
<body >
    <form id="form1" runat="server">

        <div align="center">
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">Customer</td>
                    <td class="auto-style2" align="left">
                        <asp:TextBox ID="Klant" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">ResourceType</td>
                    <td class="auto-style9" align="left">
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Image" DataValueField="ID">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:infraConnectionString %>" SelectCommand="SELECT * FROM [Images]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style3">ResourceName</td>
                    <td class="auto-style4" align="left">
                        <asp:TextBox ID="Resourcename" runat="server"></asp:TextBox>
                    </td>
                   
                </tr>
                <tr>
                    <td class="auto-style3">DNSName</td>
                    <td class="auto-style4" align="left  
                        <asp:BulletedList ID="BulletedList1" runat="server"></asp:BulletedList>
                        <asp:TextBox ID="DNSName" runat="server"></asp:TextBox>
                    </td>
                   
                </tr>
            </table>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Aanvragen" />
    </form>
</body>
</html>
