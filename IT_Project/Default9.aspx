<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default9.aspx.cs" Inherits="Default9" MasterPageFile="~/MasterPage2.master" theme="Maintheme" %>    
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" BackColor="#FFFF99" BorderColor="#640000" BorderStyle="Groove" Font-Bold="True" Font-Names="Rockwell" Font-Size="Large" ForeColor="#640000" HorizontalAlign="Center" Width="500px" style="margin-left:400px;margin-top:180px">       
        <div>
            <br />
            Enter new teacher ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            Enter teacher name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
        </div>
        <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" Font-Bold="True" Font-Size="Large" Height="41px" Width="94px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</asp:Panel>
</asp:Content>
