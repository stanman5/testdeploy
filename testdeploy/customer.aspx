<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customer.aspx.cs" Inherits="testdeploy.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 456px;
            height: 26px;
        }
        .auto-style9 {
            width: 468px;
            height: 19px;
        }
        .content {
            max-width: 500px;
            margin: auto;
            }

        


        .auto-style15 {
            width: 456px;
            line-height: 50px; 
        }

        


        .auto-style16 {
            width: 900px;
           
               
               }

        


        .auto-style17 {
            width: 468px;
            height: 26px;
        }

        


        .auto-style18 {
            width: 456px;
            line-height: 50px;
            height: 75px;
        }
        .auto-style19 {
            height: 75px;
        }

        


        .auto-style20 {
            width: 140px;
            height: 114px;
        }

        


    </style>
</head>
<body >
    <form id="form1" runat="server">

        <div align="center">
            <table class="auto-style16">

                <tr>
                    <td class="auto-style1" align="right"  style="padding-right:80px">
                        Test Portal Azure resource auotmation</td>
                        
                        
                        <td class="auto-style17" align="left">
                            <img alt="ordina" class="auto-style20" src="file:///C:/Users/Stany/Documents/GitHub/testdeploy/testdeploy/fonts/index.png" /></tr>

                 <tr>
                    <td class="auto-style1" align="right"  style="padding-right:80px" >Customer Name<td class="auto-style17" align="left">
                        <asp:TextBox ID="CuName" runat="server"></asp:TextBox>
                    </td>
                 
                </tr>
                <tr>
                    <td class="auto-style1" align="right"  style="padding-right:80px">Customer Email         <td class="auto-style9" align="left">
                        <asp:TextBox ID="CUEmail" runat="server"></asp:TextBox>
                    </td>
                 
                </tr>
                <tr>
                    <td class="auto-style15" align="right"  style="padding-right:80px">Vm Image</td>
                    <td class="auto-style4" align="left">
                        <asp:DropDownList ID="VmImage" runat="server" DataSourceID="SqlDataSourceImage" DataTextField="sku" DataValueField="id" OnSelectedIndexChanged="VmImage_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceImage" runat="server" ConnectionString="<%$ ConnectionStrings:infraConnectionString %>" SelectCommand="SELECT [id], [sku] FROM [VmImage]"></asp:SqlDataSource>
                    </td>
                   
                </tr>
                        <tr>
                    <td class="auto-style15" align="right"  style="padding-right:80px">Vm Size</td>
                    <td class="auto-style4" align="left" id="ResourceGroup">
                        <asp:DropDownList ID="VMSize" runat="server" DataSourceID="Size" DataTextField="SizeName" DataValueField="id" Height="17px" OnSelectedIndexChanged="VmImage_SelectedIndexChanged" style="margin-top: 0px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="Size" runat="server" ConnectionString="<%$ ConnectionStrings:infraConnectionString %>" SelectCommand="SELECT [id], [SizeName] FROM [VmSize]"></asp:SqlDataSource>
                    </td>
                   
                </tr>
                        <tr>
                    <td class="auto-style15" align="right"  style="padding-right:80px">Vm size detail</td>
                    <td class="auto-style4" align="left">
                        <asp:DynamicFilter ID="DynamicFilter1" runat="server">
                        </asp:DynamicFilter>
                    </td>
                   
                </tr>
                        </tr>
                        <tr>
                    <td class="auto-style18" align="right"  style="padding-right:80px">Existing Resource Group</td>
                    <td class="auto-style19" align="left">
                        <asp:DropDownList ID="ResourceGroup" runat="server" DataSourceID="SqlDataSourceImageGroup" DataTextField="Resourcegroep" DataValueField="id">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceImageGroup" runat="server" ConnectionString="<%$ ConnectionStrings:infraConnectionString %>" SelectCommand="SELECT * FROM [resourcegroups]"></asp:SqlDataSource>
                    </td>
                   
                </tr>
                        </tr>
                        <tr>
                    <td class="auto-style15" align="right"  style="padding-right:80px">New Resource Group</td>
                    <td class="auto-style4" align="left">
                        <asp:TextBox ID="Nresourcegroep" runat="server"></asp:TextBox>
                    </td>
                   
                </tr>
                        <tr>
                    <td class="auto-style15" align="right"  style="padding-right:80px">ResourceName</td>
                    <td class="auto-style4" align="left">
                        <asp:TextBox ID="ResourceName" runat="server"></asp:TextBox>
                        <asp:Label ID="Resourcenaam" runat="server"></asp:Label>
                    </td>
                   
                </tr>
                <tr>
                    <td class="auto-style15"align="right"  style="padding-right:80px">DNSName</td>
                    <td class="auto-style4" align="left">  
                        
                        <asp:TextBox ID="DNSName" runat="server" align="left" OnTextChanged="DNSName_TextChanged"></asp:TextBox>
                        <asp:Label ID="dnsfout" runat="server" BackColor="Red"></asp:Label>
                    </td>

                   
                </tr>
                        <tr>
                    <td class="auto-style15" align="right"  style="padding-right:80px">&nbsp;</td>
                    <td class="auto-style4"  align="left"> 
                       
        <asp:Button ID="Button1" runat="server" Text="Aanvragen" Height="26px" OnClick="aanvragen" />
                    </td>

                   
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
