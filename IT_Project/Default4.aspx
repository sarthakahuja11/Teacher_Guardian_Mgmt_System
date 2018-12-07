<%@ Page Language="C#" AutoEventWireup="true"   MasterPageFile="~/MasterPage2.master" CodeFile="Default4.aspx.cs" Inherits="Default4" theme="Maintheme"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" BackColor="#FFFF99" BorderColor="#640000" BorderStyle="Groove" Font-Bold="True" Font-Names="Rockwell" Font-Size="Large" ForeColor="#640000" HorizontalAlign="Center" Height="150px" Width="500px" style="margin-left:400px;margin-top:180px">
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Check free slots" OnClick="Button1_Click" Height="69px" Width="161px" Font-Size="Large" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Button ID="Button2" runat="server" Text="Check filled slots" OnClick="Button2_Click" Height="69px" Width="160px" Font-Size="Large" />
        <div>
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Back" />
        </div>
        </asp:Panel>
  </asp:Content>        
