<%@ Page Title="お客様情報" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CustomerCard.aspx.cs" Inherits="SalonApp.CustomerCard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 1000px;
            border-collapse: collapse;
        }
        .tableStyle1 {
            background-color: #99CCFF;
            border-width: 2px;
            border-color: #6699FF;
            width: 130px;
            height: 60px;
        }
        .tableStyle2 {
            background-color: #CCCCCC;
            border-width: 2px;
            border-color: #6699FF;
            width: 300px;
            height: 60px;
        }
        .auto-style4 {
            background-color: #CCCCCC;
            border-width: 2px;
            border-color: #6699FF;
            height: 60px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SalonDBConnectionString %>" SelectCommand="SELECT * FROM [tbl_customer]" DeleteCommand="DELETE FROM [tbl_customer] WHERE [customer_id] = @customer_id" InsertCommand="INSERT INTO [tbl_customer] ([customer_kana], [customer_name], [address], [tel], [customer_birth], [update_date], [first_date], [sold_sum], [customer_memo]) VALUES (@customer_kana, @customer_name, @address, @tel, @customer_birth, @update_date, @first_date, @sold_sum, @customer_memo)" UpdateCommand="UPDATE [tbl_customer] SET [customer_kana] = @customer_kana, [customer_name] = @customer_name, [address] = @address, [tel] = @tel, [customer_birth] = @customer_birth, [update_date] = @update_date, [first_date] = @first_date, [sold_sum] = @sold_sum, [customer_memo] = @customer_memo WHERE [customer_id] = @customer_id">
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
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" CellPadding="4" CssClass="auto-style3" DataKeyNames="customer_id" DataSourceID="SqlDataSource1" ForeColor="#333333" OnPageIndexChanging="FormView1_PageIndexChanging">
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
            <br />

            <table class="auto-style3">
                <tr>
                    <td class="tableStyle1">お客様ID</td>
                    <td class="tableStyle2">
                        <asp:Label ID="customer_idLabel" runat="server" Text='<%# Eval("customer_id") %>' />
                    </td>
                    <td class="tableStyle1">最終来店日</td>
                    <td class="tableStyle2">
                        <asp:Label ID="update_dateLabel" runat="server" Text='<%# Bind("update_date") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="tableStyle1">カナ</td>
                    <td class="tableStyle2">
                        <asp:Label ID="customer_kanaLabel" runat="server" Text='<%# Bind("customer_kana") %>' />
                    </td>
                    <td class="tableStyle1">初回来店日</td>
                    <td class="tableStyle2">
                        <asp:Label ID="first_dateLabel" runat="server" Text='<%# Bind("first_date") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="tableStyle1">お客様名</td>
                    <td class="auto-style4" colspan="3">
                        <asp:Label ID="customer_nameLabel" runat="server" Text='<%# Bind("customer_name") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="tableStyle1">電話番号</td>
                    <td class="tableStyle2">
                        <asp:Label ID="telLabel" runat="server" Text='<%# Bind("tel") %>' />
                    </td>
                    <td class="tableStyle1">お誕生日</td>
                    <td class="tableStyle2">
                        <asp:Label ID="customer_birthLabel" runat="server" Text='<%# Bind("customer_birth") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="tableStyle1">住所</td>
                    <td class="auto-style4" colspan="3">
                        <asp:Label ID="addressLabel" runat="server" Text='<%# Bind("address") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="tableStyle1">合計売上</td>
                    <td class="auto-style4" colspan="3">
                        <asp:Label ID="sold_sumLabel" runat="server" Text='<%# Bind("sold_sum") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="tableStyle1">備考</td>
                    <td class="auto-style4" colspan="3">
                        <asp:Label ID="customer_memoLabel" runat="server" Text='<%# Eval("customer_memo").ToString().Replace("\r\n","<br/>") %>' />
                    </td>
                </tr>
            </table>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CustomerList.aspx">一覧に戻る</asp:HyperLink>
            <br />
        </ItemTemplate>
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:FormView>
</asp:Content>
