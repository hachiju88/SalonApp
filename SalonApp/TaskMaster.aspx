<%@ Page Title="タスクマスタ" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TaskMaster.aspx.cs" Inherits="SalonApp.TaskMaster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SalonDBConnectionString %>" DeleteCommand="DELETE FROM [tbl_task] WHERE [task_id] = @task_id" InsertCommand="INSERT INTO [tbl_task] ([task_name], [maker], [task_price]) VALUES (@task_name, @maker, @task_price)" SelectCommand="SELECT * FROM [tbl_task]" UpdateCommand="UPDATE [tbl_task] SET [task_name] = @task_name, [maker] = @maker, [task_price] = @task_price WHERE [task_id] = @task_id">
        <DeleteParameters>
            <asp:Parameter Name="task_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="task_name" Type="String" />
            <asp:Parameter Name="maker" Type="String" />
            <asp:Parameter Name="task_price" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="task_name" Type="String" />
            <asp:Parameter Name="maker" Type="String" />
            <asp:Parameter Name="task_price" Type="Decimal" />
            <asp:Parameter Name="task_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="新しい施術の追加" />
    <asp:Label ID="MessageLabel" runat="server" EnableViewState="False" ForeColor="Red"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="task_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="task_id" HeaderText="施術ID" InsertVisible="False" ReadOnly="True" SortExpression="task_id">
            <HeaderStyle Width="100px" />
            <ItemStyle Width="120px" />
            </asp:BoundField>
            <asp:BoundField DataField="task_name" HeaderText="施術名" SortExpression="task_name">
            <ControlStyle Height="100px" />
            <ItemStyle Width="200px" />
            </asp:BoundField>
            <asp:BoundField DataField="maker" HeaderText="メーカー" SortExpression="maker">
            <ControlStyle Width="100px" />
            <ItemStyle Width="200px" />
            </asp:BoundField>
            <asp:BoundField DataField="task_price" HeaderText="単価" SortExpression="task_price">
            <ControlStyle Width="100px" />
            <ItemStyle Width="200px" />
            </asp:BoundField>
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
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
