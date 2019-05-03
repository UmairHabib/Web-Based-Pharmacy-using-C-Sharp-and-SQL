<%@ Page Title="" Language="C#" MasterPageFile="~/MedicalStore.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MedicalStore.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="Button2" runat="server" PostBackUrl="~/Frontpage.aspx" Text="&lt;&lt; Back" />
    <body onkeydown = "return (event.keyCode!=13)">
        <div class="login">
            <div class="div" style="color: black">
                Username&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Style="margin-left: 0px"></asp:TextBox>
            </div>
            <div class="div" style="color: black">
                Password&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtPassword" TextMode="password" runat="server" Style="margin-left: 0px"></asp:TextBox>
            </div>
            <div class="div" style="padding-left: 27px; padding-right: 7px; height: 15px;">
                <asp:Button runat="server" ID="button1" Text="Login" Style="border: 2px solid white; padding-left: 10px; padding-right: 10px; border-radius: 8px; box-shadow: 0 0 10px red; margin-left: 55px;" OnClick="button1_Click1" />
                <br />
                &nbsp;&nbsp;&nbsp;
            <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" style="color: black" Text=""></asp:Label>
            </div>
        </div>
    </body>

</asp:Content>
