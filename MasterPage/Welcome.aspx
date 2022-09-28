<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="MasterPage.Welcome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
          <h2 class="text-info">
            Hello  <asp:Label ID="Label1" runat="server"></asp:Label>


        </h2>
          <p>
             Mobile Number: <asp:Label ID="Label3" runat="server"></asp:Label>
        </p>

        <p >
             Address : <asp:Label ID="Label4" runat="server"></asp:Label>
        </p>
        <p >
             RoomNo: <asp:Label ID="Label5" runat="server"></asp:Label>
        </p>

        <h4 class="text-danger">
            Balance :  <asp:Label ID="Label2" runat="server"></asp:Label>
        </h4>

          <p class="text-danger">
              &nbsp;</p>
        <p class="text-info">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logout" />
        </p>
        <p class="text-info">
            &nbsp;</p>
    </div>
</asp:Content>
