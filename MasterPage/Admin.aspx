<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="MasterPage.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
         
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style2">FullName&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtFullName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtFullName" ErrorMessage="Please Enter Name"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Password</td>
                    <td>
                        <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd" ErrorMessage="Please Enter Password"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="Validate">SignIn</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblMsg" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
</asp:Content>
