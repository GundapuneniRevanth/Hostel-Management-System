<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="MasterPage.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        
       
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style4">Full Name</td>
                <td>
                    <asp:TextBox ID="txtFullName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFullName" ErrorMessage="Please Enter Full Name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Parent Name</td>
                <td>
                    <asp:TextBox ID="txtParentName" runat="server" OnTextChanged="txtParentName_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtParentName" ErrorMessage="Please Enter Parent Name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Gender</td>
                <td>
                    <asp:RadioButton ID="rb1" runat="server" Text="Male" GroupName="Gender"/>
                    <asp:RadioButton ID="rb2" runat="server" Text="Female" GroupName="Gender"/>
                    </td>
            </tr>
            <tr>
                <td class="auto-style4">Age</td>
                <td>
                    <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtAge" ErrorMessage="Please Enter Age"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Enter Age b/w 18-60" MaximumValue="60" MinimumValue="18" Type="Integer" ControlToValidate="txtAge"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Email</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please Enter EmailId" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Mobile No</td>
                <td>
                    <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtMobile" ErrorMessage="Please Enter Valid Mobile.No" ValidationExpression="[6789]\d{9}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Address</td>
                <td>
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtAddress" ErrorMessage="Please Enter City"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">RoomNo</td>
                <td>
                    <asp:TextBox ID="txtroom" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Password</td>
                <td>
                    <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd" ErrorMessage="Please Enter Password"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td class="auto-style4">Balance</td>
                <td style="margin-left: 40px">
                     
           
            <asp:TextBox ID="txtBalance" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Registeruser" Text="Register" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                </td>
                
                                <td >&nbsp;</td>

            </tr>
        </table>
             </div>
</asp:Content>
