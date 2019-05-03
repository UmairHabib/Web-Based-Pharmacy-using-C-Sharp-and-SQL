<%@ Page Title="" Language="C#" MasterPageFile="~/MedicalStore.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="MedicalStore.Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="Button1" runat="server" PostBackUrl="~/Frontpage.aspx" Text="&lt;&lt; Back" />
        <div class="signup" style="padding-bottom: 60px; padding-top: 75px;">
            <div class="div" style="color: black">
                Fullname&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </div>

            <div class="div" style="color: black">
                Contact No.&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </div>

            <div class="div" style="color: black; padding-right: 10px;">
                House Address&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </div>

            <div class="div" style="color: black">
                Designation&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </div>

            <div class="div" style="color: black">
                Salary&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </div>

            <div class="div" style="color: black">
                Username&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </div>

            <div class="div" style="color: black">
                Password &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox8" TextMode="password" runat="server"></asp:TextBox>
            </div>

            <div class="div" style="padding-right: 40px; color: black;">
                Confirm Password&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox9" TextMode="password" runat="server"></asp:TextBox>
            </div>

            <div class="div" style="color: black">
                Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </div>

            <div class="div" style="padding-left: 7px; padding-right: 7px; margin-left: 40px; color: black">
                <asp:Button runat="server" ID="Button2" Text="Signup" Style="border: 2px solid white; padding-left: 10px; padding-right: 10px; border-radius: 8px; box-shadow: 0 0 10px red; margin-left: 52px;" OnClick="button2_Click" />
                <br />
                &nbsp;&nbsp;&nbsp;
            <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" style="color: black" Text=""></asp:Label>
            </div>

        </div>
</asp:Content>
