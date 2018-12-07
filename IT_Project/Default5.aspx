<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default5.aspx.cs" Inherits="Default5" MasterPageFile="~/MasterPage2.master" Theme="Maintheme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" BackColor="#FFFF99" BorderColor="#640000" BorderStyle="Groove" Font-Bold="True" Font-Names="Rockwell" Font-Size="Large" ForeColor="#640000" HorizontalAlign="Center" Width="550px" style="margin-left:400px;margin-top:186px">       

        <div style="margin-left: 40px">
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="true" DataSourceID="SqlDataSource1" AutoGenerateColumns="false" OnRowDataBound="GridView1_RowDataBound" onselectedindexchanged="GridView1_SelectedIndexChanged" >
            <Columns>
            <asp:BoundField DataField="Sid" HeaderText="Id" ItemStyle-Width="50" />
            <asp:BoundField DataField="S_name" HeaderText="Name" ItemStyle-Width="50" />
            <asp:BoundField DataField="Status" HeaderText="Status" ItemStyle-Width="50" />
            <asp:BoundField DataField="Id" HeaderText="TId" ItemStyle-Width="50" />
            </Columns>
</asp:GridView>
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        connectionstring="<%$ConnectionStrings:db%>"
         SelectCommand="select * from Student where Status='unallotted'">   
        </asp:SqlDataSource>

        <br />
        Enter ID of teacher:&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />


        <asp:Button ID="Button1" runat="server" Text="Request" OnClick="Button1_Click" Font-Size="Large" Height="38px" style="margin-top: 0px" Width="102px" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <br />

        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Back" />
</asp:Panel>
</asp:Content>