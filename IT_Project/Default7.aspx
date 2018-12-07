<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default7.aspx.cs" Inherits="Default7" MasterPageFile="~/MasterPage2.master" theme="Maintheme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" BackColor="#FFFF99" BorderColor="#640000" BorderStyle="Groove" Font-Bold="True" Font-Names="Rockwell" Font-Size="Large" ForeColor="#640000" HorizontalAlign="Center" Width="500px" style="margin-left:400px;margin-top:180px">       
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <div>
            <br />
        ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
        <br />
        PASSWORD:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" TextMode="Password" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember Me"/>
            <br />
            <br />
        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" style="margin-right: 9px;" Height="36px" Width="70px" Font-Bold="True" Font-Size="Large" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Search" OnClick="Button2_Click" Height="36px" Width="70px" Font-Bold="True" Font-Size="Large" />
            <br />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Back" />
        </div>

</asp:Panel>
</asp:Content>