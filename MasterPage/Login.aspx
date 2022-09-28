<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MasterPage.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style2">FullName&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtFullName" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtFullName" ErrorMessage="Please Enter Name"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Password</td>
                   <td class="auto-style3" style="margin-left: 40px">
                        <asp:TextBox ID="txtPwd" runat="server" OnTextChanged="TextBox2_TextChanged" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd" ErrorMessage="Please Enter Password"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                     <td class="auto-style3">
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="Validate">SignIn</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                     <td class="auto-style3">
                        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton2_Click" CausesValidation="False">New User SignUp</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                     <td class="auto-style3">
                        <asp:Label ID="lblMsg" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
</asp:Content>
