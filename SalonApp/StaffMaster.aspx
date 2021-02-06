<%@ Page Title="スタッフマスタ" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="StaffMaster.aspx.cs" Inherits="SalonApp.StaffMaster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SalonDBConnectionString %>" DeleteCommand="DELETE FROM [tbl_staff] WHERE [staff_id] = @staff_id" InsertCommand="INSERT INTO [tbl_staff] ([staff_name], [user_id], [password], [admin_flag]) VALUES (@staff_name, @user_id, @password, @admin_flag)" SelectCommand="SELECT * FROM [tbl_staff]" UpdateCommand="UPDATE [tbl_staff] SET [staff_name] = @staff_name, [user_id] = @user_id, [password] = @password, [admin_flag] = @admin_flag WHERE [staff_id] = @staff_id">
        <DeleteParameters>
            <asp:Parameter Name="staff_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="staff_name" Type="String" />
            <asp:Parameter Name="user_id" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="admin_flag" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="staff_name" Type="String" />
            <asp:Parameter Name="user_id" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="admin_flag" Type="Boolean" />
            <asp:Parameter Name="staff_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="スタッフの追加" />
    <asp:Label ID="MessageLabel" runat="server" EnableViewState="False" ForeColor="Red"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="staff_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="staff_id" HeaderText="スタッフID" InsertVisible="False" ReadOnly="True" SortExpression="staff_id">
            <ControlStyle Width="100px" />
            <ItemStyle Width="120px" />
            </asp:BoundField>
            <asp:BoundField DataField="staff_name" HeaderText="スタッフ名" SortExpression="staff_name">
            <ControlStyle Width="100px" />
            <ItemStyle Width="200px" />
            </asp:BoundField>
            <asp:BoundField DataField="user_id" HeaderText="ログインID" SortExpression="user_id">
            <ControlStyle Width="100px" />
            <ItemStyle Width="150px" />
            </asp:BoundField>
            <asp:BoundField DataField="password" HeaderText="パスワード" SortExpression="password">
            <ControlStyle Width="100px" />
            <ItemStyle Width="150px" />
            </asp:BoundField>
            <asp:CheckBoxField DataField="admin_flag" HeaderText="管理者権限" SortExpression="admin_flag">
            <ItemStyle HorizontalAlign="Center" Width="150px" />
            </asp:CheckBoxField>
            <asp:CommandField ButtonType="Button" ShowEditButton="True" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
</asp:Content>
