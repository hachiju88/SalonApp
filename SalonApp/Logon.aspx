<%@ Page Title="ログオン" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Logon.aspx.cs" Inherits="SalonApp.Logon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 700px;
            height: 300px;
        }
        .auto-style3 {
            width: 210px;
        }
        .auto-style4 {
            width: 120px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style2">
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">スタッフログインID：</td>
            <td class="auto-style4">
                <asp:TextBox ID="UserIDTextBox" runat="server" TabIndex="1" CssClass="imeOff"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">パスワード：</td>
            <td class="auto-style4">
                <asp:TextBox ID="PasswordTextBox" runat="server" CssClass="imeOff" TabIndex="2" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="LogonButton" runat="server" Text="ログオン" TabIndex ="3" OnClick="RogonButton_Click"/>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Label ID="ErrorLabel" runat="server" Text="" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="NewCustomer" runat="server" Text="ご新規様 登録" TabIndex="4"/>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
