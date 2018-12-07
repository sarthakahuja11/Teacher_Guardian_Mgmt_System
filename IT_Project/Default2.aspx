<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default2.aspx.cs" Inherits="Default2" MasterPageFile="~/MasterPage2.master" theme="Maintheme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" BackColor="#FFFF99" BorderColor="#640000" BorderStyle="Groove" Font-Bold="True" Font-Names="Rockwell" Font-Size="Large" ForeColor="#640000" HorizontalAlign="Center" Width="500px" style="margin-left:400px;margin-top:180px">       
        <br />
        ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        PASSWORD:<asp:TextBox ID="TextBox2" TextMode="Password" runat="server"></asp:TextBox>
        <br />
        <br />
        <div>
            <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Sign In" OnClick="Button2_Click" />
        </div>
        <asp:RequiredFieldValidator id="rfv1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter ID" />
        <asp:RequiredFieldValidator id="rfv2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter the password" />
        <br />
</asp:Panel>        
</asp:Content>