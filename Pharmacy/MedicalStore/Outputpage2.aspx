<%@ Page Title="" Language="C#" MasterPageFile="~/MedicalStore.Master" AutoEventWireup="true" CodeBehind="Outputpage2.aspx.cs" Inherits="MedicalStore.Outputpage2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
        <div style="padding-bottom:500px;">
            <div id="menu">
                <ul>
                    <li class="active"><a href="Home.aspx" accesskey="1" title="">Home</a></li>
                    <li><a href="Medicine.aspx" accesskey="2" title="">Medicines</a></li>
                    <li><a href="Employ.aspx" accesskey="3" title="">Employees</a></li>
                    <li><a href="Purchase.aspx" accesskey="4" title="">Purchase</a></li>
                    <li><a href="Dealer.aspx" accesskey="5" title="">Dealers</a></li>
                    <li><a href="About.aspx" accesskey="6" title="">About Us</a></li>
                    <li><a href="Frontpage.aspx" accesskey="7" title="">Sign Out</a></li>
                </ul>
                <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>

            </div>

        </div>
    </body>
</asp:Content>
