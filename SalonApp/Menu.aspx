<%@ Page Title="メニュー" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="SalonApp.Menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 1000px;
            height: 400px;
        }
        .auto-style3 {
            height: 50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="AdminPanel" runat="server" Height="400px" Width="1000px">
        <table class="auto-style2">
            <tr>
                <td>メインメニュー &lt;Adomin&gt;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td style="text-align: right">
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">ログオフ</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>顧客管理</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="">顧客検索</asp:HyperLink>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/CustomerList.aspx">顧客一覧</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Cash Resister</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style3">
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="">売上管理</asp:HyperLink>
                </td>
                <td class="auto-style3">
                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="">営業報告登録</asp:HyperLink>
                </td>
                <td class="auto-style3">
                    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="">営業報告一覧</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>Admin Menu</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/StaffMaster.aspx">スタッフマスタ</asp:HyperLink>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/TaskMaster.aspx">施術マスタ</asp:HyperLink>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="">顧客データ出力</asp:HyperLink>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="UserPanel" runat="server" Height="400px" Width="1000px">
        <table class="auto-style2">
            <tr>
                <td>メインメニュー &lt;User&gt;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td style="text-align: right">
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">ログオフ</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>顧客管理</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="">顧客検索</asp:HyperLink>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/CustomerList.aspx">顧客一覧</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Cash Resister</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style3">
                    <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="">売上管理</asp:HyperLink>
                </td>
                <td class="auto-style3">
                    <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="">営業報告登録</asp:HyperLink>
                </td>
                <td class="auto-style3">
                    <asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="">営業報告一覧</asp:HyperLink>
                </td>
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
    </asp:Panel>
</asp:Content>
