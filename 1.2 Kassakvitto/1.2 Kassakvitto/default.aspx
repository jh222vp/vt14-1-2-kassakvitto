<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="_1._2_Kassakvitto._default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RabattRäkning</title>
    <link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <h1>Kassakvitto</h1>
    <div>
        <asp:TextBox ID="totalBuySum" runat="server"></asp:TextBox>
        
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="totalBuySum" runat="server" ErrorMessage="Du måste skriva in något!" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="totalBuySum" ErrorMessage="Bara siffror!" Operator="DataTypeCheck" Type="Integer" Display="Dynamic"></asp:CompareValidator>
        
        <div id="CalcButton">
            <asp:Button ID="CalcSale" runat="server" Text="Beräkna Rabatt" OnClick="CalcSale_Click" />
        </div>
        
        <div id="border">
        <asp:Panel ID="outSum" Visible ="false" runat="server">
            <div id="OpenTimes">
                <asp:Label ID="openTime" runat="server" Text="Öppettider: 08 - 17"></asp:Label>
            </div>
            <div id ="TotalSums">
               <asp:Label ID="totalSum" runat="server" Text=""></asp:Label>
            </div>
            <div id="percents">
                <asp:Label ID="percent" runat="server" Text=""></asp:Label>
            </div>
            <div id="Discounts">
                <asp:Label ID="discount" runat="server" Text="Label"></asp:Label>
            </div>
            <div id ="sumAfterDiscounts">
                <asp:Label ID="sumAfterDiscount" runat="server" Text=""></asp:Label>
            </div>
        </asp:Panel>
            </div>

    </div>
    </form>
</body>
</html>
