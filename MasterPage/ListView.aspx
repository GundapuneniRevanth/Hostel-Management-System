<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListView.aspx.cs" Inherits="MasterPage.ListView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
		<img src="logoImg.jpg"  style="border-radius:12px" width="123"/>
      
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="UserId" DataSourceID="SqlDataSource2" InsertItemPosition="LastItem">
                <AlternatingItemTemplate>
                    <tr style="background-color: #FFF8DC;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="UserIdLabel" runat="server" Text='<%# Eval("UserId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FullNameLabel" runat="server" Text='<%# Eval("FullName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ParentNameLabel" runat="server" Text='<%# Eval("ParentName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
                        </td>
                        <td>
                            <asp:Label ID="AgeLabel" runat="server" Text='<%# Eval("Age") %>' />
                        </td>
                        <td>
                            <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                        </td>
                        <td>
                            <asp:Label ID="MobileLabel" runat="server" Text='<%# Eval("Mobile") %>' />
                        </td>
                        <td>
                            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                        </td>
                        <td>
                            <asp:Label ID="RoomNoLabel" runat="server" Text='<%# Eval("RoomNo") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                        </td>
                        <td>
                            <asp:Label ID="BalanceLabel" runat="server" Text='<%# Eval("Balance") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color: #008A8C; color: #FFFFFF;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:Label ID="UserIdLabel1" runat="server" Text='<%# Eval("UserId") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="FullNameTextBox" runat="server" Text='<%# Bind("FullName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="ParentNameTextBox" runat="server" Text='<%# Bind("ParentName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="AgeTextBox" runat="server" Text='<%# Bind("Age") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="MobileTextBox" runat="server" Text='<%# Bind("Mobile") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="RoomNoTextBox" runat="server" Text='<%# Bind("RoomNo") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="BalanceTextBox" runat="server" Text='<%# Bind("Balance") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="FullNameTextBox" runat="server" Text='<%# Bind("FullName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="ParentNameTextBox" runat="server" Text='<%# Bind("ParentName") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="AgeTextBox" runat="server" Text='<%# Bind("Age") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="MobileTextBox" runat="server" Text='<%# Bind("Mobile") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="RoomNoTextBox" runat="server" Text='<%# Bind("RoomNo") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="BalanceTextBox" runat="server" Text='<%# Bind("Balance") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color: #DCDCDC; color: #000000;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="UserIdLabel" runat="server" Text='<%# Eval("UserId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FullNameLabel" runat="server" Text='<%# Eval("FullName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ParentNameLabel" runat="server" Text='<%# Eval("ParentName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
                        </td>
                        <td>
                            <asp:Label ID="AgeLabel" runat="server" Text='<%# Eval("Age") %>' />
                        </td>
                        <td>
                            <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                        </td>
                        <td>
                            <asp:Label ID="MobileLabel" runat="server" Text='<%# Eval("Mobile") %>' />
                        </td>
                        <td>
                            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                        </td>
                        <td>
                            <asp:Label ID="RoomNoLabel" runat="server" Text='<%# Eval("RoomNo") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                        </td>
                        <td>
                            <asp:Label ID="BalanceLabel" runat="server" Text='<%# Eval("Balance") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color: #DCDCDC; color: #000000;">
                                        <th runat="server"></th>
                                        <th runat="server">UserId</th>
                                        <th runat="server">FullName</th>
                                        <th runat="server">ParentName</th>
                                        <th runat="server">Gender</th>
                                        <th runat="server">Age</th>
                                        <th runat="server">Email</th>
                                        <th runat="server">Mobile</th>
                                        <th runat="server">Address</th>
                                        <th runat="server">RoomNo</th>
                                        <th runat="server">Password</th>
                                        <th runat="server">Balance</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000">
                                <asp:DataPager ID="DataPager1" runat="server">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color: #008A8C; font-weight: bold;color: #FFFFFF;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="UserIdLabel" runat="server" Text='<%# Eval("UserId") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FullNameLabel" runat="server" Text='<%# Eval("FullName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ParentNameLabel" runat="server" Text='<%# Eval("ParentName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
                        </td>
                        <td>
                            <asp:Label ID="AgeLabel" runat="server" Text='<%# Eval("Age") %>' />
                        </td>
                        <td>
                            <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                        </td>
                        <td>
                            <asp:Label ID="MobileLabel" runat="server" Text='<%# Eval("Mobile") %>' />
                        </td>
                        <td>
                            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                        </td>
                        <td>
                            <asp:Label ID="RoomNoLabel" runat="server" Text='<%# Eval("RoomNo") %>' />
                        </td>
                        <td>
                            <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                        </td>
                        <td>
                            <asp:Label ID="BalanceLabel" runat="server" Text='<%# Eval("Balance") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:revanthDBConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [UserId] = @UserId" InsertCommand="INSERT INTO [Users] ([FullName], [ParentName], [Gender], [Age], [Email], [Mobile], [Address], [RoomNo], [Password], [Balance]) VALUES (@FullName, @ParentName, @Gender, @Age, @Email, @Mobile, @Address, @RoomNo, @Password, @Balance)" SelectCommand="SELECT * FROM [Users] ORDER BY [UserId]" UpdateCommand="UPDATE [Users] SET [FullName] = @FullName, [ParentName] = @ParentName, [Gender] = @Gender, [Age] = @Age, [Email] = @Email, [Mobile] = @Mobile, [Address] = @Address, [RoomNo] = @RoomNo, [Password] = @Password, [Balance] = @Balance WHERE [UserId] = @UserId">
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
                    <asp:Parameter Name="Balance" Type="String" />
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
                    <asp:Parameter Name="Balance" Type="String" />
                    <asp:Parameter Name="UserId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Validate" Text="LogOut" />

	  <footer>
                             <h3> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; © Copyrights 2020 - 2023  StarHostel  All Rights Reserved.</h3> 
                
            </footer>
        </div>
    </form>
</body>
</html>
