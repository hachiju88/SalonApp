<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ThanksForm.aspx.cs" Inherits="SalonApp.ThanksForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Image ID="Image2" runat="server" ImageUrl="~/Resources/thanksMessage.png" />
    <br />
    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Resources/menuBackButton.png" PostBackUrl="~/Logon.aspx" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SalonDBConnectionString %>" DeleteCommand="DELETE FROM [tbl_customer] WHERE [customer_id] = @customer_id" InsertCommand="INSERT INTO [tbl_customer] ([customer_kana], [customer_name], [address], [tel], [customer_birth], [update_date], [first_date], [sold_sum], [customer_memo]) VALUES (@customer_kana, @customer_name, @address, @tel, @customer_birth, @update_date, @first_date, @sold_sum, @customer_memo)" SelectCommand="SELECT * FROM [tbl_customer]" UpdateCommand="UPDATE [tbl_customer] SET [customer_kana] = @customer_kana, [customer_name] = @customer_name, [address] = @address, [tel] = @tel, [customer_birth] = @customer_birth, [update_date] = @update_date, [first_date] = @first_date, [sold_sum] = @sold_sum, [customer_memo] = @customer_memo WHERE [customer_id] = @customer_id">
        <DeleteParameters>
            <asp:Parameter Name="customer_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="customer_kana" Type="String" />
            <asp:Parameter Name="customer_name" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="tel" Type="String" />
            <asp:Parameter Name="customer_birth" Type="DateTime" />
            <asp:Parameter Name="update_date" Type="DateTime" />
            <asp:Parameter Name="first_date" Type="DateTime" />
            <asp:Parameter Name="sold_sum" Type="Decimal" />
            <asp:Parameter Name="customer_memo" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="customer_kana" Type="String" />
            <asp:Parameter Name="customer_name" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="tel" Type="String" />
            <asp:Parameter Name="customer_birth" Type="DateTime" />
            <asp:Parameter Name="update_date" Type="DateTime" />
            <asp:Parameter Name="first_date" Type="DateTime" />
            <asp:Parameter Name="sold_sum" Type="Decimal" />
            <asp:Parameter Name="customer_memo" Type="String" />
            <asp:Parameter Name="customer_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
