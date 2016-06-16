<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Autod 2.aspx.cs" Inherits="LoomadjaAutod.Autod" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body { background-color: lightcyan;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
    <div>
    <h1>Autod</h1>
    </div>
        <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="registrinumber" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:CommandField ShowEditButton="True" EditText="Muuda" />
                <asp:BoundField DataField="registrinumber" HeaderText="registrinumber" ReadOnly="True" SortExpression="registrinumber" />
                <asp:BoundField DataField="omanik" HeaderText="omanik" SortExpression="omanik" />
                <asp:BoundField DataField="aasta" HeaderText="aasta" SortExpression="aasta" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:LoomadjaAutodConnectionString1 %>" DeleteCommand="DELETE FROM [Autod] WHERE [registrinumber] = @registrinumber" InsertCommand="INSERT INTO [Autod] ([registrinumber], [omanik], [aasta]) VALUES (@registrinumber, @omanik, @aasta)" ProviderName="<%$ ConnectionStrings:LoomadjaAutodConnectionString1.ProviderName %>" SelectCommand="SELECT [registrinumber], [omanik], [aasta] FROM [Autod]" UpdateCommand="UPDATE [Autod] SET [omanik] = @omanik, [aasta] = @aasta WHERE [registrinumber] = @registrinumber">
            <DeleteParameters>
                <asp:Parameter Name="registrinumber" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="registrinumber" Type="String" />
                <asp:Parameter Name="omanik" Type="String" />
                <asp:Parameter Name="aasta" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="omanik" Type="String" />
                <asp:Parameter Name="aasta" Type="Int32" />
                <asp:Parameter Name="registrinumber" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="Silver" BorderWidth="1px" CellPadding="3" DataKeyNames="registrinumber" DataSourceID="SqlDataSource2" DefaultMode="Insert" GridLines="Horizontal" Height="50px" OnPageIndexChanging="DetailsView1_PageIndexChanging" Width="125px">
            <AlternatingRowStyle BackColor="Silver" />
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <Fields>
                <asp:BoundField DataField="registrinumber" HeaderText="registrinumber" ReadOnly="True" SortExpression="registrinumber" />
                <asp:BoundField DataField="omanik" HeaderText="omanik" SortExpression="omanik" />
                <asp:BoundField DataField="aasta" HeaderText="aasta" SortExpression="aasta" />
                <asp:CommandField ShowInsertButton="True" InsertText="Lisa" CancelText="Katkesta"/>
            </Fields>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="Black" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        </asp:DetailsView>
    </form>
</body>
</html>
