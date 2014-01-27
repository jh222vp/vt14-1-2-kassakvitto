<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="_1._2_Kassakvitto._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Kassakvitto</h1>
    <div>
        <asp:TextBox ID="totalBuySum" runat="server"></asp:TextBox>
        <asp:Button ID="CalcSale" runat="server" Text="Beräkna Rabatt" OnClick="CalcSale_Click" />
        <asp:Literal ID="Literal1" Text="Total Köpesumma: " runat="server"></asp:Literal>

        <asp:Panel ID="Panel1" Visible ="false" runat="server"></asp:Panel>

        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator"></asp:CompareValidator>

    </div>
    </form>
</body>
</html>
