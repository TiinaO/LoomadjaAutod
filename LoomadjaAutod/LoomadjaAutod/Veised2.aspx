<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Veised2.aspx.cs" Inherits="LoomadjaAutod.Vaised" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <style>
        body { background-color: lightgrey;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
    <div>
        <h1>Veised</h1>
    </div>     
        <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField DeleteText="Kustuta" ShowEditButton="True" EditText="Muuda"/>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="loomanimi" HeaderText="loomanimi" SortExpression="loomanimi" />
                <asp:BoundField DataField="vanus" HeaderText="vanus" SortExpression="vanus" />
                <asp:BoundField DataField="mass" HeaderText="mass" SortExpression="mass" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:LoomadjaAutodConnectionString1 %>" DeleteCommand="DELETE FROM [Veised] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Veised] ([loomanimi], [vanus], [mass]) VALUES (@loomanimi, @vanus, @mass)" ProviderName="<%$ ConnectionStrings:LoomadjaAutodConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [loomanimi], [vanus], [mass] FROM [Veised]" UpdateCommand="UPDATE [Veised] SET [loomanimi] = @loomanimi, [vanus] = @vanus, [mass] = @mass WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="loomanimi" Type="String" />
                <asp:Parameter Name="vanus" Type="Int32" />
                <asp:Parameter Name="mass" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="loomanimi" Type="String" />
                <asp:Parameter Name="vanus" Type="Int32" />
                <asp:Parameter Name="mass" Type="Int32" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    
        <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" DefaultMode="Insert" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="loomanimi" HeaderText="loomanimi" SortExpression="loomanimi" />
                <asp:BoundField DataField="vanus" HeaderText="vanus" SortExpression="vanus" />
                <asp:BoundField DataField="mass" HeaderText="mass" SortExpression="mass" />
                <asp:CommandField ShowInsertButton="True" InsertText="Lisa" CancelText="Katkesta" />
            </Fields>
        </asp:DetailsView>
    </form>
</body>
</html>
