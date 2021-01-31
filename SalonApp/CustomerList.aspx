<%@ Page Title="お客様一覧" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CustomerList.aspx.cs" Inherits="SalonApp.CustomerList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 1000px;
    }
    .auto-style3 {
        width: 75px;
            height: 5px;
        }
    .auto-style4 {
        width: 120px;
            height: 5px;
        }
    .auto-style6 {
        width: 157px;
            height: 5px;
        }
    .auto-style7 {
            width: 50px;
            height: 5px;
        }
    .auto-style8 {
            width: 100px;
            height: 5px;
        }
        .auto-style21 {
            margin-top: 0px;
        }
        .auto-style22 {
            height: 5px;
        }
        .auto-style23 {
            width: 100px;
            height: 25px;
        }
        .auto-style24 {
            width: 120px;
            height: 25px;
        }
        .auto-style25 {
            width: 50px;
            height: 25px;
        }
        .auto-style26 {
            width: 157px;
            height: 25px;
        }
        .auto-style27 {
            width: 75px;
            height: 25px;
        }
        .auto-style28 {
            height: 25px;
        }
        .auto-style29 {
            width: 25px;
            height: 25px;
        }
        .auto-style30 {
            width: 25px;
            height: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SalonDBConnectionString %>" SelectCommand="SELECT [customer_id], [customer_kana], [customer_name], [address], [tel], [customer_birth], [update_date] FROM [tbl_customer] WHERE (([customer_name] LIKE '%' + @customer_name + '%') AND ([customer_kana] LIKE '%' + @customer_kana + '%') AND ([customer_id] = @customer_id))">
        <SelectParameters>
            <asp:ControlParameter ControlID="CustomerNameTextBox" DefaultValue="%" Name="customer_name" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="CustomerKanaTextBox" DefaultValue="%" Name="customer_kana" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="CustomerIDTextBox" Name="customer_id" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <table class="auto-style2">
        <tr>
            <td class="auto-style23">検索</td>
            <td class="auto-style24"></td>
            <td class="auto-style25">ID</td>
            <td class="auto-style26">
                1</td>
            <td class="auto-style27"></td>
            <td class="auto-style23"></td>
            <td class="auto-style29"></td>
            <td class="auto-style23"></td>
            <td class="auto-style28"></td>
        </tr>
        <tr>
            <td class="auto-style23">お名前</td>
            <td class="auto-style24">
                <asp:TextBox ID="CustomerNameTextBox" runat="server" Width="120px" CssClass="imeON"></asp:TextBox>
            </td>
            <td class="auto-style25">カナ</td>
            <td class="auto-style26">
                <asp:TextBox ID="CustomerKanaTextBox" runat="server" Width="150px" CssClass="imeON"></asp:TextBox>
            </td>
            <td class="auto-style27">来店日</td>
            <td class="auto-style23">
                <asp:TextBox ID="DayBiginTextBox" runat="server" Width="120px" CssClass="imeON"></asp:TextBox>
            </td>
            <td class="auto-style29">～</td>
            <td class="auto-style23">
                <asp:TextBox ID="DayAfterTextBox" runat="server" Width="120px" CssClass="imeON"></asp:TextBox>
            </td>
            <td class="auto-style28">
                <asp:Button ID="FillterButton" runat="server" Text="検索" Width="110px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style4"></td>
            <td class="auto-style7"></td>
            <td class="auto-style6"></td>
            <td class="auto-style3"></td>
            <td class="auto-style8"></td>
            <td class="auto-style30"></td>
            <td class="auto-style8"></td>
            <td class="auto-style22"></td>
        </tr>
</table>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="customer_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" CssClass="auto-style21" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="customer_id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="customer_id">
            <ItemStyle Width="30px" />
            </asp:BoundField>
            <asp:BoundField DataField="customer_name" HeaderText="お客様名" SortExpression="customer_name">
            <ItemStyle Width="120px" />
            </asp:BoundField>
            <asp:BoundField DataField="customer_kana" HeaderText="カナ" SortExpression="customer_kana">
            <ItemStyle Width="150px" />
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
            <ItemStyle Width="80px" />
            </asp:BoundField>
            <asp:HyperLinkField NavigateUrl="~/CustomerCard.aspx" Text="編集" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <EmptyDataTemplate>
            該当するデータがありません。条件を変更して「検索」ボタンをクリックしてください。
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
