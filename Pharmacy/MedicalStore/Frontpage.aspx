<%@ Page Title="" Language="C#" MasterPageFile="~/MedicalStore.Master" AutoEventWireup="true" CodeBehind="Frontpage.aspx.cs" Inherits="MedicalStore.Frontpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="div" style="text-align: center; padding-top: 200px; padding-bottom: 220px;">
        <asp:Button ID="Button1" runat="server" Style="border: 2px solid white; padding-left: 10px; padding-right: 10px; border-radius: 8px; box-shadow: 0 10px 50px red;" Font-Size="Larger" Font-Bold="true" Text="SignUp" Height="78px" Width="174px" BorderColor="White" BorderStyle="Solid" ForeColor="Black" PostBackUrl="~/Signup.aspx" />
        <asp:Button ID="Button2" runat="server" Font-Size="Larger" Style="border: 2px solid white; padding-left: 10px; padding-right: 10px; border-radius: 8px; box-shadow: 0 10px 50px red; margin-left: 50px" Font-Bold="true" Text="Login" Height="78px" Width="174px" BorderColor="White" BorderStyle="Solid" ForeColor="Black" PostBackUrl="~/Login.aspx" />
    </div>
</asp:Content>
