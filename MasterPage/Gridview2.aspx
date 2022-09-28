<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gridview2.aspx.cs" Inherits="MasterPage.Gridview2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="UserId" DataSourceID="SqlDataSource1" ForeColor="Black" PageSize="5">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="UserId" HeaderText="UserId" InsertVisible="False" ReadOnly="True" SortExpression="UserId" />
                    <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
                    <asp:BoundField DataField="ParentName" HeaderText="ParentName" SortExpression="ParentName" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="RoomNo" HeaderText="RoomNo" SortExpression="RoomNo" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:revanthDBConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [UserId] = @UserId" InsertCommand="INSERT INTO [Users] ([FullName], [ParentName], [Gender], [Age], [Email], [Mobile], [Address], [RoomNo], [Password]) VALUES (@FullName, @ParentName, @Gender, @Age, @Email, @Mobile, @Address, @RoomNo, @Password)" SelectCommand="SELECT * FROM [Users] ORDER BY [RoomNo]" UpdateCommand="UPDATE [Users] SET [FullName] = @FullName, [ParentName] = @ParentName, [Gender] = @Gender, [Age] = @Age, [Email] = @Email, [Mobile] = @Mobile, [Address] = @Address, [RoomNo] = @RoomNo, [Password] = @Password WHERE [UserId] = @UserId">
            <DeleteParameters>
                <asp:Parameter Name="UserId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FullName" Type="String" />
                <asp:Parameter Name="ParentName" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Age" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Mobile" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="RoomNo" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FullName" Type="String" />
                <asp:Parameter Name="ParentName" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Age" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Mobile" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="RoomNo" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="UserId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
