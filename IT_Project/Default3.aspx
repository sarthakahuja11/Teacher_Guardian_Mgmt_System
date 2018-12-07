<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" MasterPageFile="~/MasterPage2.master" Theme="Maintheme"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" BackColor="#FFFF99" BorderColor="#640000" BorderStyle="Groove" Font-Bold="True" Font-Names="Rockwell" Font-Size="Large" ForeColor="#640000" HorizontalAlign="Center" Height="120px" Width="700px" style="margin-left:400px;margin-top:180px">              
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> 
            <br />
            <br />
            <br/>
            <asp:Button ID="Button1" runat="server" Text="Check Availability of Slots" OnClick="Button1_Click" />

            <br />
           
    </asp:Panel>    
</asp:Content>