<%@ Page Title="" Language="C#" MasterPageFile="~/MedicalStore.Master" AutoEventWireup="true" CodeBehind="Employ.aspx.cs" Inherits="MedicalStore.Employ" %>

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
    <asp:Button ID="Button1" runat="server" Style="border: 2px solid white; padding-left: 10px; padding-right: 10px; border-radius: 8px; box-shadow: 0 10px 50px red;" Font-Size="Larger" Font-Bold="true" Text="Show All Employes" Height="78px" Width="291px" BorderColor="White" BorderStyle="Solid" ForeColor="Black" OnClick="Button1_Click" />
    </p>
    <div class="div" style="padding-left:210px; padding-bottom:134px; padding-top:89px;">
    <p style="margin-left: 60px">
        Find Employ of Pharmacy by Entering Employ ID &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Textbox1" runat="server"></asp:TextBox>

        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Font-Size="Larger" Style="border: 2px solid white; padding-left: 10px; padding-right: 10px; border-radius: 8px; box-shadow: 0 10px 50px red; margin-left: 50px; margin-top: 22px;" Font-Bold="true" Text="Submit" Width="118px" BorderColor="White" BorderStyle="Solid" ForeColor="Black" Height="31px" OnClick="Button2_Click" />
    </p>
    <p style="margin-left: 60px">
        Find Employ of Pharmacy by Entering Employ Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Textbox2" runat="server"></asp:TextBox>

        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Font-Size="Larger" Style="border: 2px solid white; padding-left: 10px; padding-right: 10px; border-radius: 8px; box-shadow: 0 10px 50px red; margin-left: 50px; margin-top: 22px;" Font-Bold="true" Text="Submit" Width="118px" BorderColor="White" BorderStyle="Solid" ForeColor="Black" Height="31px" OnClick="Button3_Click" />
    </p>
    </div>
</asp:Content>

