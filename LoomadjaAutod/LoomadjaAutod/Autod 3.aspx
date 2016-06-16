<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Autod 3.aspx.cs" Inherits="LoomadjaAutod.Autod" %>

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
    <form id="form3" runat="server">
    <div>
    <h1>Autod</h1>
    </div>
        <asp:TextBox ID="TextBox1" runat="server" Width="130px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Otsi" />
        <asp:GridView ID="GridView3" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="registrinumber" DataSourceID="SqlDataSource3" EmptyDataText="There are no data records to display." ForeColor="Black" GridLines="Horizontal">
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
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:LoomadjaAutodConnectionString1 %>" SelectCommand="SELECT [registrinumber], [omanik], [aasta] FROM [Autod] WHERE (([registrinumber] LIKE '%' + @registrinumber + '%') or ([omanik] LIKE '%' + @omanik + '%'))">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="registrinumber" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox1" Name="omanik" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="Silver" BorderWidth="1px" CellPadding="3" DataKeyNames="registrinumber" DataSourceID="SqlDataSource3" DefaultMode="Insert" GridLines="Horizontal" Height="50px" OnPageIndexChanging="DetailsView1_PageIndexChanging" Width="125px">
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
