<%@ Page Title="" Language="C#" MasterPageFile="~/MedicalStore.Master" AutoEventWireup="true" CodeBehind="Dealer.aspx.cs" Inherits="MedicalStore.Dealer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body onkeydown="return (event.keyCode!=13)">

        <div style="font-size: large; padding-left:600px;">
                    <a href="Home.aspx" accesskey="1" title="" style="color: #000000">Home</a> &nbsp;&nbsp;&nbsp; <a href="Medicine.aspx" accesskey="2" title="" style="color: #000000">Medicines</a> &nbsp;&nbsp;&nbsp;<a href="Employ.aspx" accesskey="3" title="" style="color: #000000">Employees</a>
                        &nbsp;&nbsp;&nbsp;<a href="Purchase.aspx" accesskey="4" title="" style="color: #000000">Purchase</a> &nbsp;&nbsp;&nbsp;<a href="Dealer.aspx" accesskey="5" title="" style="color: #000000">Dealers</a>
                        &nbsp;&nbsp;&nbsp;<a href="About.aspx" accesskey="6" title="" style="color: #000000">About Us</a> &nbsp;&nbsp;&nbsp;<a href="Frontpage.aspx" accesskey="7" title="" style="color: #000000">Sign Out</a>
            </div>
    </body>
    <p>
        &nbsp;
    <asp:Button ID="Button1" runat="server" Style="border: 2px solid white; padding-left: 10px; padding-right: 10px; border-radius: 8px; box-shadow: 0 10px 50px red;" Font-Size="Larger" Font-Bold="true" Text="Show All Dealers" Height="78px" Width="291px" BorderColor="White" BorderStyle="Solid" ForeColor="Black" OnClick="Button1_Click" />
    </p>
    <p>
        &nbsp;
    <asp:Button ID="Button2" runat="server" Style="border: 2px solid white; padding-left: 10px; padding-right: 10px; border-radius: 8px; box-shadow: 0 10px 50px red;" Font-Size="Larger" Font-Bold="true" Text="Show All Companies" Height="78px" Width="291px" BorderColor="White" BorderStyle="Solid" ForeColor="Black" OnClick="Button2_Click" />
    </p>
    <p>
        &nbsp;
    <asp:Button ID="Button3" runat="server" Style="border: 2px solid white; padding-left: 10px; padding-right: 10px; border-radius: 8px; box-shadow: 0 10px 50px red;" Font-Size="Larger" Font-Bold="true" Text="Show All Purchases" Height="78px" Width="291px" BorderColor="White" BorderStyle="Solid" ForeColor="Black" OnClick="Button3_Click" />
    </p>
    <p>
        &nbsp;
    <asp:Button ID="Button4" runat="server" Style="border: 2px solid white; padding-left: 10px; padding-right: 10px; border-radius: 8px; box-shadow: 0 10px 50px red;" Font-Size="Larger" Font-Bold="true" Text="Show All Sales" Height="78px" Width="291px" BorderColor="White" BorderStyle="Solid" ForeColor="Black" OnClick="Button4_Click" />
    </p>
    <p style="margin-left: 60px">
        &nbsp;
    </p>
    <p style="margin-left: 60px">
        &nbsp;
    </p>
    <div class="div" style="color: black; padding-top:20px; padding-left:300px; padding-bottom:20px;">
    <p style="margin-left: 60px">
        Find Dealer of Pharmacy by Entering Dealer ID &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Textbox1" runat="server"></asp:TextBox>

        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" Font-Size="Larger" Style="border: 2px solid white; padding-left: 10px; padding-right: 10px; border-radius: 8px; box-shadow: 0 10px 50px red; margin-left: 50px; margin-top: 22px;" Font-Bold="true" Text="Submit" Width="118px" BorderColor="White" BorderStyle="Solid" ForeColor="Black" Height="31px" OnClick="Button5_Click" />
    </p>
    <p style="margin-left: 60px">
        Get The Dealer Name  By Providing Company ID &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="Textbox2" runat="server"></asp:TextBox>

        &nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:Button ID="Button6" runat="server" Font-Size="Larger" Style="border: 2px solid white; padding-left: 10px; padding-right: 10px; border-radius: 8px; box-shadow: 0 10px 50px red; margin-left: 50px; margin-top: 22px;" Font-Bold="true" Text="Submit" Width="118px" BorderColor="White" BorderStyle="Solid" ForeColor="Black" Height="31px" OnClick="Button6_Click" />

        <asp:Label ID="errorLabel" runat="server" Text="" Visible="false"></asp:Label>
    </div>
</asp:Content>
