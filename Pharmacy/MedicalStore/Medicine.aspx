<%@ Page Title="" Language="C#" MasterPageFile="~/MedicalStore.Master" AutoEventWireup="true" CodeBehind="Medicine.aspx.cs" Inherits="MedicalStore.Medicine" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <body onkeydown="return (event.keyCode!=13)">
        <div>
            <div style="font-size: large; padding-left:600px;">
                    <a href="Home.aspx" accesskey="1" title="" style="color: #000000">Home</a> &nbsp;&nbsp;&nbsp; <a href="Medicine.aspx" accesskey="2" title="" style="color: #000000">Medicines</a> &nbsp;&nbsp;&nbsp;<a href="Employ.aspx" accesskey="3" title="" style="color: #000000">Employees</a>
                        &nbsp;&nbsp;&nbsp;<a href="Purchase.aspx" accesskey="4" title="" style="color: #000000">Purchase</a> &nbsp;&nbsp;&nbsp;<a href="Dealer.aspx" accesskey="5" title="" style="color: #000000">Dealers</a>
                        &nbsp;&nbsp;&nbsp;<a href="About.aspx" accesskey="6" title="" style="color: #000000">About Us</a> &nbsp;&nbsp;&nbsp;<a href="Frontpage.aspx" accesskey="7" title="" style="color: #000000">Sign Out</a>
            </div>
            <p>
                &nbsp;
            <asp:Button ID="Button1" runat="server" Style="border: 2px solid white; padding-left: 10px; padding-right: 10px; border-radius: 8px; box-shadow: 0 10px 50px red;" Font-Size="Larger" Font-Bold="true" Text="Show All Medicines" Height="78px" Width="300px" BorderColor="White" BorderStyle="Solid" ForeColor="Black" OnClick="Button1_Click" />
            <p>
                &nbsp;
                <asp:Button ID="Button2" runat="server" Style="border: 2px solid white; padding-left: 10px; padding-right: 10px; border-radius: 8px; box-shadow: 0 10px 50px red;" Font-Size="Larger" Font-Bold="true" Text="Show Out Of Stock" Height="78px" Width="293px" BorderColor="White" BorderStyle="Solid" ForeColor="Black" OnClick="Button2_Click" />
            </p>
            <p>
                &nbsp;
                <asp:Button ID="Button3" runat="server" Style="border: 2px solid white; padding-left: 10px; padding-right: 10px; border-radius: 8px; box-shadow: 0 10px 50px red;" Font-Size="Larger" Font-Bold="true" Text="Show All Expired" Height="78px" Width="293px" BorderColor="White" BorderStyle="Solid" ForeColor="Black" OnClick="Button3_Click" />
            </p>
            <div class="div" style="color:black; padding-left: 260px">
            <p style="margin-left: 60px">
                Find Price of Medicine by Entering Medicine ID &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Textbox1" runat="server" OnTextChanged="Textbox1_TextChanged" EnableViewState="false"></asp:TextBox>

                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" Font-Size="Larger" Style="border: 2px solid white; padding-left: 10px; padding-right: 10px; border-radius: 8px; box-shadow: 0 10px 50px red; margin-left: 50px; margin-top: 22px;" Font-Bold="true" Text="Submit" Width="118px" BorderColor="White" BorderStyle="Solid" ForeColor="Black" Height="31px" OnClick="Button4_Click" />
            </p>
            <p style="margin-left: 60px">
                Find Expiry Date(dd mm yyyy) of Medicine by Entering Medicine ID &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="Textbox2" runat="server"></asp:TextBox>

                &nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:Button ID="Button5" runat="server" Font-Size="Larger" Style="border: 2px solid white; padding-left: 10px; padding-right: 10px; border-radius: 8px; box-shadow: 0 10px 50px red; margin-left: 50px; margin-top: 22px;" Font-Bold="true" Text="Submit" Width="118px" BorderColor="White" BorderStyle="Solid" ForeColor="Black" Height="31px" OnClick="Button5_Click" />
            </p>

            <p style="margin-left: 60px">
                Find Who Took These Medicine by Entering Medicine ID &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
                <asp:TextBox ID="Textbox3" runat="server"></asp:TextBox>

                &nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:Button ID="Button6" runat="server" Font-Size="Larger" Style="border: 2px solid white; padding-left: 10px; padding-right: 10px; border-radius: 8px; box-shadow: 0 10px 50px red; margin-left: 50px; margin-top: 22px;" Font-Bold="true" Text="Submit" Width="118px" BorderColor="White" BorderStyle="Solid" ForeColor="Black" Height="31px" OnClick="Button6_Click" />
            </p>
            <p style="margin-left: 60px">
                Find All Information of Medicine by Entering Medicine ID &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:TextBox ID="Textbox4" runat="server"></asp:TextBox>

                &nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:Button ID="Button7" runat="server" Font-Size="Larger" Style="border: 2px solid white; padding-left: 10px; padding-right: 10px; border-radius: 8px; box-shadow: 0 10px 50px red; margin-left: 50px; margin-top: 22px;" Font-Bold="true" Text="Submit" Width="118px" BorderColor="White" BorderStyle="Solid" ForeColor="Black" Height="31px" OnClick="Button7_Click" />
            </p>
            <p style="margin-left: 60px">
                Find Medicine Quantity left in stock by Entering Medicine ID &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
                <asp:TextBox ID="Textbox5" runat="server"></asp:TextBox>

                &nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:Button ID="Button8" runat="server" Font-Size="Larger" Style="border: 2px solid white; padding-left: 10px; padding-right: 10px; border-radius: 8px; box-shadow: 0 10px 50px red; margin-left: 50px; margin-top: 22px;" Font-Bold="true" Text="Submit" Width="118px" BorderColor="White" BorderStyle="Solid" ForeColor="Black" Height="31px" OnClick="Button8_Click" />
            </p>
            <p style="margin-left: 60px">
                Find Purchase Date of Medicine from Dealer by Entering Medicine ID&nbsp;&nbsp; &nbsp;
                <asp:TextBox ID="Textbox6" runat="server"></asp:TextBox>

                &nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:Button ID="Button9" runat="server" Font-Size="Larger" Style="border: 2px solid white; padding-left: 10px; padding-right: 10px; border-radius: 8px; box-shadow: 0 10px 50px red; margin-left: 50px; margin-top: 22px;" Font-Bold="true" Text="Submit" Width="118px" BorderColor="White" BorderStyle="Solid" ForeColor="Black" Height="31px" OnClick="Button9_Click" />
            </p>
            <p style="margin-left: 60px">
                Find Number of Sales of Medicine by Entering Medicine ID &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:TextBox ID="Textbox7" runat="server"></asp:TextBox>

                &nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:Button ID="Button10" runat="server" Font-Size="Larger" Style="border: 2px solid white; padding-left: 10px; padding-right: 10px; border-radius: 8px; box-shadow: 0 10px 50px red; margin-left: 50px; margin-top: 22px;" Font-Bold="true" Text="Submit" Width="118px" BorderColor="White" BorderStyle="Solid" ForeColor="Black" Height="31px" OnClick="Button10_Click" />
            </p>
            <p style="margin-left: 60px">
                Update Manufacturing Date(dd mm yyyy) of Medicine by Entering Medicine ID &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:TextBox ID="Textbox8" runat="server"></asp:TextBox>
            </p>
            <p style="margin-left: 60px">
                And Manufactuing Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Textbox9" runat="server"></asp:TextBox>

                &nbsp;&nbsp;&nbsp; 
                <asp:Button ID="Button11" runat="server" Font-Size="Larger" Style="border: 2px solid white; padding-left: 10px; padding-right: 10px; border-radius: 8px; box-shadow: 0 10px 50px red; margin-left: 50px; margin-top: 22px;" Font-Bold="true" Text="Submit" Width="118px" BorderColor="White" BorderStyle="Solid" ForeColor="Black" Height="31px" OnClick="Button11_Click" />
            </p>
            <p style="margin-left: 60px">
                Update Expiry Date of Medicine(dd mm yyyy) by Entering Medicine ID &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
                <asp:TextBox ID="Textbox10" runat="server"></asp:TextBox>
                &nbsp;
            </p>
            <p style="margin-left: 60px">
                &nbsp;And Expiry Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Textbox11" runat="server"></asp:TextBox>

                &nbsp;&nbsp;&nbsp; 
                <asp:Button ID="Button12" runat="server" Font-Size="Larger" Style="border: 2px solid white; padding-left: 10px; padding-right: 10px; border-radius: 8px; box-shadow: 0 10px 50px red; margin-left: 50px; margin-top: 22px;" Font-Bold="true" Text="Submit" Width="118px" BorderColor="White" BorderStyle="Solid" ForeColor="Black" Height="31px" OnClick="Button12_Click" />
            </p>
           </div>
        </div>
    </body>

</asp:Content>
