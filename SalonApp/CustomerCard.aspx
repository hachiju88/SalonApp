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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SalonDBConnectionString %>" SelectCommand="SELECT * FROM [tbl_customer]
WHERE customer_id = @customer_id" DeleteCommand="DELETE FROM [tbl_customer] WHERE [customer_id] = @customer_id" InsertCommand="INSERT INTO [tbl_customer] ([customer_kana], [customer_name], [address], [tel], [customer_birth], [update_date], [first_date], [sold_sum], [customer_memo]) VALUES (@customer_kana, @customer_name, @address, @tel, @customer_birth, @update_date, @first_date, @sold_sum, @customer_memo)" UpdateCommand="UPDATE [tbl_customer] SET [customer_kana] = @customer_kana, [customer_name] = @customer_name, [address] = @address, [tel] = @tel, [customer_memo] = @customer_memo WHERE [customer_id] = @customer_id">
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
        <SelectParameters>
            <asp:QueryStringParameter Name="customer_id" QueryStringField="id" />
        </SelectParameters>
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
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" CellPadding="4" CssClass="auto-style3" DataKeyNames="customer_id" DataSourceID="SqlDataSource1" ForeColor="#333333" OnPageIndexChanging="FormView1_PageIndexChanging" OnItemCommand="FormView1_ItemCommand" OnItemInserting="FormView1_ItemInserting">
        <EditItemTemplate>
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
                        <asp:TextBox ID="customer_kanaTextBox" runat="server" CssClass="imeON" Text='<%# Bind("customer_kana") %>' Width="240px" />
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="customer_kanaTextBox" Display="Dynamic" ErrorMessage="必須入力です" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="customer_kanaTextBox" Display="Dynamic" ErrorMessage="20文字以内で入力してください" ForeColor="Red" ValidationExpression=".{0,20}"></asp:RegularExpressionValidator>
                    </td>
                    <td class="tableStyle1">初回来店日</td>
                    <td class="tableStyle2">
                        <asp:Label ID="first_dateLabel" runat="server" Text='<%# Bind("first_date") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="tableStyle1">お客様名</td>
                    <td class="auto-style4" colspan="3">
                        <asp:TextBox ID="customer_nameTextBox" runat="server" CssClass="imeON" OnTextChanged="customer_nameTextBox_TextChanged" Text='<%# Bind("customer_name") %>' Width="240px" />
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="customer_nameTextBox" Display="Dynamic" ErrorMessage="必須入力です" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="customer_nameTextBox" Display="Dynamic" ErrorMessage="20文字以内で入力してください" ForeColor="Red" ValidationExpression=".{0,20}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="tableStyle1">電話番号</td>
                    <td class="tableStyle2">
                        <asp:TextBox ID="telTextBox" runat="server" CssClass="imeOff" Text='<%# Bind("tel") %>' Width="240px" />
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="telTextBox" Display="Dynamic" ErrorMessage="20文字以内で入力してください" ForeColor="Red" ValidationExpression=".{0,20}"></asp:RegularExpressionValidator>
                    </td>
                    <td class="tableStyle1">お誕生日</td>
                    <td class="tableStyle2">
                        <asp:Label ID="customer_birthLabel" runat="server" Text='<%# Bind("customer_birth") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="tableStyle1">住所</td>
                    <td class="auto-style4" colspan="3">
                        <asp:TextBox ID="addressTextBox" runat="server" CssClass="imeON" Text='<%# Bind("address") %>' Width="500px" />
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="addressTextBox" Display="Dynamic" ErrorMessage="100文字以内で入力してください" ForeColor="Red" ValidationExpression=".{0,100}"></asp:RegularExpressionValidator>
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
                        <asp:TextBox ID="customer_memoTextBox" runat="server" CssClass="imeON" Height="60px" Text='<%# Bind("customer_memo") %>' TextMode="MultiLine" Width="800px" />
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="customer_memoTextBox" Display="Dynamic" ErrorMessage="200文字以内で入力してください" ForeColor="Red" ValidationExpression=".{0,200}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
            </table>
            &nbsp;<asp:Button ID="Button1" runat="server" CommandName="Update" Height="50px" Text="登録" Width="100px" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" CommandName="Cancel" Height="50px" Text="キャンセル" Width="100px" CausesValidation="False" OnClick="Button2_Click" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            <table class="auto-style3">
                <tr>
                    <td class="tableStyle1">お客様ID</td>
                    <td class="tableStyle2">
                        <asp:Label ID="customer_idLabel" runat="server" Text='<%# Eval("customer_id") %>' />
                    </td>
                    <td class="tableStyle1">お誕生日</td>
                    <td class="tableStyle2">
                        <asp:TextBox ID="customer_birthTextBox" runat="server" CssClass="imeOff" Text='<%# Bind("customer_birth","{0:yyyy/MM/dd}") %>' Width="240px" />
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ControlToValidate="customer_birthTextBox" Display="Dynamic" ErrorMessage="「0000/00/00」の書式で入力してください" ForeColor="Red" ValidationExpression="\d{4}(/(\d{2}))(/(\d{2}))"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="tableStyle1">カナ</td>
                    <td class="auto-style4" colspan="3">
                        <asp:TextBox ID="customer_kanaTextBox0" runat="server" CssClass="imeON" Text='<%# Bind("customer_kana") %>' Width="240px" />
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="customer_kanaTextBox0" Display="Dynamic" ErrorMessage="必須入力です" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="customer_kanaTextBox0" Display="Dynamic" ErrorMessage="20文字以内で入力してください" ForeColor="Red" ValidationExpression=".{0,20}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="tableStyle1">お客様名</td>
                    <td class="auto-style4" colspan="3">
                        <asp:TextBox ID="customer_nameTextBox0" runat="server" CssClass="imeON" OnTextChanged="customer_nameTextBox_TextChanged" Text='<%# Bind("customer_name") %>' Width="240px" />
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="customer_nameTextBox0" Display="Dynamic" ErrorMessage="必須入力です" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="customer_nameTextBox0" Display="Dynamic" ErrorMessage="20文字以内で入力してください" ForeColor="Red" ValidationExpression=".{0,20}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="tableStyle1">電話番号</td>
                    <td class="auto-style4" colspan="3">
                        <br />
                        <asp:TextBox ID="telTextBox0" runat="server" CssClass="imeOff" Text='<%# Bind("tel") %>' Width="240px" OnTextChanged="telTextBox0_TextChanged" />
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server" ControlToValidate="telTextBox0" Display="Dynamic" ErrorMessage="20文字以内で入力してください" ForeColor="Red" ValidationExpression=".{0,20}"></asp:RegularExpressionValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="tableStyle1">住所</td>
                    <td class="auto-style4" colspan="3">
                        <asp:TextBox ID="addressTextBox0" runat="server" CssClass="imeON" Text='<%# Bind("address") %>' Width="500px" />
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="addressTextBox0" Display="Dynamic" ErrorMessage="100文字以内で入力してください" ForeColor="Red" ValidationExpression=".{0,100}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="tableStyle1">ご要望・ご質問</td>
                    <td class="auto-style4" colspan="3">
                        <asp:TextBox ID="customer_memoTextBox0" runat="server" CssClass="imeON" Height="60px" Text='<%# Bind("customer_memo") %>' TextMode="MultiLine" Width="800px" />
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ControlToValidate="customer_memoTextBox0" Display="Dynamic" ErrorMessage="200文字以内で入力してください" ForeColor="Red" ValidationExpression=".{0,200}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
            </table>
            <asp:Button ID="Button3" runat="server" CommandName="Insert" Height="50px" Text="登録" Width="100px" OnClick="Button3_Click" />
            <asp:Button ID="Button4" runat="server" CommandName="Cancel" Height="50px" Text="キャンセル" Width="100px" CausesValidation="False" OnClick="Button4_Click" />
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
            <asp:Button ID="Button5" runat="server" CommandName="Edit" Height="50px" Text="編集" Width="100px" />
            <br />
        </ItemTemplate>
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:FormView>
</asp:Content>
