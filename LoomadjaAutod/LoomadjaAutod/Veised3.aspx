<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Veised3.aspx.cs" Inherits="LoomadjaAutod.Vaised" %>

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
    <form id="form3" runat="server">
    <div>
        <h1>Veised</h1>
    </div>     
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" style="margin-bottom: 0px" Text="Button" />
        <asp:GridView ID="GridView3" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource3" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
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
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:LoomadjaAutodConnectionString1 %>" SelectCommand="SELECT [Id], [loomanimi], [vanus], [mass] FROM [Veised] WHERE (([loomanimi] LIKE '%' + @loomanimi + '%') or ([vanus] = @vanus) or ([mass] = @mass))">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="loomanimi" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox1" Name="vanus" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="TextBox1" Name="mass" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    
        <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource3" DefaultMode="Insert" Height="50px" Width="125px">
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
