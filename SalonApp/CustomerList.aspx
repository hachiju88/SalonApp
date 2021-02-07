<%@ Page Title="お客様一覧" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CustomerList.aspx.cs" Inherits="SalonApp.CustomerList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 1000px;
    }
        .auto-style21 {
            margin-top: 0px;
        }
        .auto-style22 {
            width: 1000px;
            height: 40px;
        }
        .auto-style23 {
            width: 40px;
        }
        .auto-style25 {
            width: 80px;
        }
        .auto-style26 {
            width: 110px;
        }
        .auto-style28 {
            width: 175px;
        }
        .auto-style34 {
            height: 5px;
        }
        .auto-style35 {
            width: 125px;
        }
        .auto-style37 {
            width: 55px;
        }
        .auto-style39 {
            width: 85px;
        }
        .auto-style41 {
            width: 190px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SalonDBConnectionString %>" SelectCommand="SELECT [customer_id], [customer_name], [customer_kana], [address], [tel], [customer_birth], [update_date] FROM [tbl_customer] WHERE (([customer_id] &gt;= @customer_id) AND ([update_date] &gt;= @update_date) AND ([update_date] &lt;= @update_date2) AND ([customer_kana] LIKE '%' + @customer_kana + '%') AND ([customer_name] LIKE '%' + @customer_name + '%'))">
        <SelectParameters>
            <asp:ControlParameter ControlID="CustomerIDTextBox" DefaultValue="1" Name="customer_id" PropertyName="Text" Type="Int32" />
            <asp:ControlParameter ControlID="DayBiginTextBox" DefaultValue="2020-01-01" Name="update_date" PropertyName="Text" Type="DateTime" />
            <asp:ControlParameter ControlID="DayAffterTextBox" DefaultValue="2200-01-01" Name="update_date2" PropertyName="Text" Type="DateTime" />
            <asp:ControlParameter ControlID="CustomerKanaTextBox" DefaultValue="%" Name="customer_kana" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="CustomerNameTextBox" DefaultValue="%" Name="customer_name" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <table class="auto-style22">
        <tr>
            <td class="auto-style35">お客様一覧</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
            <td class="auto-style39">&nbsp;</td>
            <td class="auto-style41">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style35">お客様ID</td>
            <td class="auto-style25">
                <asp:TextBox ID="CustomerIDTextBox" runat="server" CssClass="imeON" TextMode="Number" Width="100px" MaxLength="4"></asp:TextBox>
            </td>
            <td class="auto-style26">お客様名</td>
            <td class="auto-style28">
                <asp:TextBox ID="CustomerNameTextBox" runat="server" CssClass="imeON" Width="170px" MaxLength="20" OnTextChanged="CustomerNameTextBox_TextChanged"></asp:TextBox>
            </td>
            <td class="auto-style39">ご来店日</td>
            <td class="auto-style41">
                <asp:TextBox ID="DayBiginTextBox" runat="server" CssClass="imeON" TextMode="DateTime" Width="180px" MaxLength="20"></asp:TextBox>
            </td>
            <td class="auto-style37">から</td>
            <td class="auto-style23">&nbsp;</td>
            <td>
                <asp:Button ID="FilterButton" runat="server" OnClick="FilterButton_Click" Text="検索" />
            </td>
        </tr>
        <tr>
            <td class="auto-style35">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style26">お客様カナ</td>
            <td class="auto-style28">
                <asp:TextBox ID="CustomerKanaTextBox" runat="server" CssClass="imeON" Width="170px" MaxLength="20"></asp:TextBox>
            </td>
            <td class="auto-style39">&nbsp;</td>
            <td class="auto-style41">
                <asp:TextBox ID="DayAffterTextBox" runat="server" CssClass="imeON" TextMode="DateTime" Width="180px" MaxLength="20"></asp:TextBox>
            </td>
            <td class="auto-style37">まで</td>
            <td class="auto-style23">&nbsp;</td>
            <td>
                <asp:Button ID="FilterCancel" runat="server" OnClick="FilterCancel_Click" Text="一覧に戻る" />
            </td>
        </tr>
        <tr>
            <td class="auto-style34" colspan="9">
                <asp:Label ID="MessageLabel" runat="server" EnableViewState="False" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
    <table class="auto-style2">
        </table>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="customer_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" CssClass="auto-style21" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="customer_id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="customer_id">
            <ItemStyle Width="30px" />
            </asp:BoundField>
            <asp:BoundField DataField="customer_name" HeaderText="お客様名" SortExpression="customer_name">
            <ItemStyle Width="150px" />
            </asp:BoundField>
            <asp:BoundField DataField="customer_kana" HeaderText="カナ" SortExpression="customer_kana">
            <ItemStyle Width="175px" />
            </asp:BoundField>
            <asp:BoundField DataField="address" HeaderText="住所" SortExpression="address">
            <ItemStyle Width="350px" />
            </asp:BoundField>
            <asp:BoundField DataField="tel" HeaderText="電話番号" SortExpression="tel">
            <ItemStyle Width="110px" />
            </asp:BoundField>
            <asp:BoundField DataField="customer_birth" HeaderText="お誕生日" SortExpression="customer_birth">
            <ItemStyle Width="80px" />
            </asp:BoundField>
            <asp:BoundField DataField="update_date" HeaderText="最終来店日" SortExpression="update_date">
            <ItemStyle Width="100px" />
            </asp:BoundField>
            <asp:HyperLinkField Text="編集" DataNavigateUrlFields="customer_id" DataNavigateUrlFormatString="CustomerCard.aspx?id={0}" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <EmptyDataTemplate>
            該当するデータがありません。検索条件を変更してから「検索を実行してください。」
        </EmptyDataTemplate>
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
