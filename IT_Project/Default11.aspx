<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default11.aspx.cs" Inherits="Default11" MasterPageFile="~/MasterPage2.master" Theme="Maintheme"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Panel ID="Panel1" runat="server" BackColor="#FFFF99" BorderColor="#640000" BorderStyle="Groove" Font-Bold="True" Font-Names="Rockwell" Font-Size="Large" ForeColor="#640000" HorizontalAlign="Center" Width="500px" style="margin-left:400px;margin-top:180px">
        Please enter Student/Teacher ID or name for details:<br />
        <br />
        Teacher ID: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        Student ID: <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        Student Name: <asp:TextBox ID="TextBox3" runat="server" ></asp:TextBox>
        <br />
        <br />
        <div>
            <asp:Button ID="Button1" runat="server" Text="Search Student record" OnClick="Button1_Click" Font-Size="Small"/>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Search Teacher record" OnClick="Button2_Click" Font-Size="Small"/>
            <br />
        </div>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Back" />
    </asp:Panel>
       
</asp:Content>
