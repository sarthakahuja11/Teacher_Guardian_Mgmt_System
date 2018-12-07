<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default6.aspx.cs" Inherits="Default6" MasterPageFile="~/MasterPage2.master" theme="Maintheme" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" BackColor="#FFFF99" BorderColor="#640000" BorderStyle="Groove" Font-Bold="True" Font-Names="Rockwell" Font-Size="Large" ForeColor="#640000" HorizontalAlign="Center" Width="350px" style="margin-left:400px;margin-top:180px">
        <div style="margin-left: 40px">
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
        </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        connectionstring="<%$ConnectionStrings:db%>"
         SelectCommand="select * from Student where Status='allotted'"
        >   
        </asp:SqlDataSource>
        <br />
         <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Back" />

        &nbsp;
 </asp:Panel>
</asp:Content>