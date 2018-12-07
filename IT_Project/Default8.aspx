<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default8.aspx.cs" Inherits="Default8"MasterPageFile="~/MasterPage2.master" theme="Maintheme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" BackColor="#FFFF99" BorderColor="#640000" BorderStyle="Groove" Font-Bold="True" Font-Names="Rockwell" Font-Size="Large" ForeColor="#640000" HorizontalAlign="Center" Width="500px" style="margin-left:400px;margin-top:180px">       
        <div>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateSelectButton="true" AutoGenerateColumns="false" Width="499px">
            <columns>
            <asp:BoundField DataField="Tid" HeaderText="Teacher ID" />
            <asp:BoundField DataField="Sid" HeaderText="Request made for Student Id"  />
            </columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            connectionstring="<%$ConnectionStrings:db%>"
            SelectCommand="select * from Requests"
            >
</asp:SqlDataSource>
            <br />
        </div>
<asp:Button ID="Button1" runat="server" Text="Reject" OnClick="Button1_Click" Width="85px" Font-Bold="True" Font-Size="Large" Height="39px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Text="Approve" OnClick="Button2_Click" Font-Bold="True" Font-Size="Large" Height="39px" Width="85px" />
        <br />
 <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Back" />
</asp:Panel>

</asp:Content>