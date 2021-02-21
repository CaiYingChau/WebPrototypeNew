<%@ Page Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="WebPrototypeNew.Cart" %>

<asp:Content ID="Content" runat="server" ContentPlaceHolderID="ContentPlaceHolder1" >
    <style>
        .homeimage
        {
           background-color:darkblue;
           width: 600px;
           height:250px;
           color:white;
           font-family : 'Times New Roman', Times, serif;
           font-weight: lighter;
           text-align:center;
        }
        .auto-style3 {
            width: 800px;
            height: 280px;
        }
    </style>
    <div>
            <h1 style="text-align:center;">My Cart</h1>
        </div>
    <div>

        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>

    </div>
</asp:Content>
