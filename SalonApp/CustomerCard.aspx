<%@ Page Title="お客様情報" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CustomerCard.aspx.cs" Inherits="SalonApp.CustomerCard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 1000px;
            border-collapse: collapse;
        }
        ..tableStyle1 {
            background-color: #CCCCCC;
            border-width: 2px;
            border-color: #6699FF;
            width: 130px;
            height: 130px;
        }
        ..tableStyle2 {
            background-color: #99CCFF;
            border-width: 2px;
            border-color: #6699FF;
            width: 300px;
            height: 130px;
        }
        .auto-style4 {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SalonDBConnectionString %>" SelectCommand="SELECT * FROM [tbl_customer]"></asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" CellPadding="4" CssClass="auto-style3" DataKeyNames="customer_id" DataSourceID="SqlDataSource1" ForeColor="#333333">
        <EditItemTemplate>
            customer_id:
            <asp:Label ID="customer_idLabel1" runat="server" Text='<%# Eval("customer_id") %>' />
            <br />
            customer_kana:
            <asp:TextBox ID="customer_kanaTextBox" runat="server" Text='<%# Bind("customer_kana") %>' />
            <br />
            customer_name:
            <asp:TextBox ID="customer_nameTextBox" runat="server" Text='<%# Bind("customer_name") %>' />
            <br />
            address:
            <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
            <br />
            tel:
            <asp:TextBox ID="telTextBox" runat="server" Text='<%# Bind("tel") %>' />
            <br />
            customer_birth:
            <asp:TextBox ID="customer_birthTextBox" runat="server" Text='<%# Bind("customer_birth") %>' />
            <br />
            update_date:
            <asp:TextBox ID="update_dateTextBox" runat="server" Text='<%# Bind("update_date") %>' />
            <br />
            first_date:
            <asp:TextBox ID="first_dateTextBox" runat="server" Text='<%# Bind("first_date") %>' />
            <br />
            sold_sum:
            <asp:TextBox ID="sold_sumTextBox" runat="server" Text='<%# Bind("sold_sum") %>' />
            <br />
            customer_memo:
            <asp:TextBox ID="customer_memoTextBox" runat="server" Text='<%# Bind("customer_memo") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="キャンセル" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            customer_kana:
            <asp:TextBox ID="customer_kanaTextBox" runat="server" Text='<%# Bind("customer_kana") %>' />
            <br />
            customer_name:
            <asp:TextBox ID="customer_nameTextBox" runat="server" Text='<%# Bind("customer_name") %>' />
            <br />
            address:
            <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
            <br />
            tel:
            <asp:TextBox ID="telTextBox" runat="server" Text='<%# Bind("tel") %>' />
            <br />
            customer_birth:
            <asp:TextBox ID="customer_birthTextBox" runat="server" Text='<%# Bind("customer_birth") %>' />
            <br />
            update_date:
            <asp:TextBox ID="update_dateTextBox" runat="server" Text='<%# Bind("update_date") %>' />
            <br />
            first_date:
            <asp:TextBox ID="first_dateTextBox" runat="server" Text='<%# Bind("first_date") %>' />
            <br />
            sold_sum:
            <asp:TextBox ID="sold_sumTextBox" runat="server" Text='<%# Bind("sold_sum") %>' />
            <br />
            customer_memo:
            <asp:TextBox ID="customer_memoTextBox" runat="server" Text='<%# Bind("customer_memo") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="挿入" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="キャンセル" />
        </InsertItemTemplate>
        <ItemTemplate>
            customer_id:
            <asp:Label ID="customer_idLabel" runat="server" Text='<%# Eval("customer_id") %>' />
            <br />
            customer_kana:
            <asp:Label ID="customer_kanaLabel" runat="server" Text='<%# Bind("customer_kana") %>' />
            <br />
            customer_name:
            <asp:Label ID="customer_nameLabel" runat="server" Text='<%# Bind("customer_name") %>' />
            <br />
            address:
            <asp:Label ID="addressLabel" runat="server" Text='<%# Bind("address") %>' />
            <br />
            tel:
            <asp:Label ID="telLabel" runat="server" Text='<%# Bind("tel") %>' />
            <br />
            customer_birth:
            <asp:Label ID="customer_birthLabel" runat="server" Text='<%# Bind("customer_birth") %>' />
            <br />
            update_date:
            <asp:Label ID="update_dateLabel" runat="server" Text='<%# Bind("update_date") %>' />
            <br />
            first_date:
            <asp:Label ID="first_dateLabel" runat="server" Text='<%# Bind("first_date") %>' />
            <br />
            sold_sum:
            <asp:Label ID="sold_sumLabel" runat="server" Text='<%# Bind("sold_sum") %>' />
            <br />
            customer_memo:
            <asp:Label ID="customer_memoLabel" runat="server" Text='<%# Bind("customer_memo") %>' />
            <br />

            <table class="auto-style3">
                <tr>
                    <td class="auto-style1"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:FormView>
</asp:Content>
