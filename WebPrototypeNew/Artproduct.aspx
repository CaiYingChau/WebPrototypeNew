<%@ Page Language="C#"  MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="Artproduct.aspx.cs" Inherits="WebPrototypeNew.Artproduct" %>


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
        .option{
            text-align:center;
            height:250px;
            width:325px;
        }
         .option1 {
            text-align:center;
            height:250px;
            width:325px;
            padding-left:10px;
        }
        .option1:hover {
            opacity:0.6;
        }
        .option:hover {
            opacity:0.6;
        }
    </style>
        <div>
            <h1 style="text-align:center;">Art Gallery</h1>
            <br />
            <table style="width:100%;">
            <tr>
                <td>
                    <asp:ImageButton ID="Image1" runat="server" ImageURL ="Images/painting.jpg" PostBackUrl="~/Painting.aspx" CssClass="option1"/><h3 style="text-align:center">Painting</h3>
                </td>
                <td>
                    <asp:ImageButton ID="Image2" runat="server" ImageURL ="Images/newdrawing.jpg" PostBackUrl="~/Drawing.aspx" CssClass="option" /><h3 style="text-align:center">Drawing</h3> 
                </td>
                <td>
                    <asp:ImageButton ID="Image3" runat="server" ImageURL ="Images/photograhy.jpg" PostBackUrl="~/Photography.aspx" CssClass="option" /><h3 style="text-align:center">Photography</h3> 
                </td>
                <td>
                    <asp:ImageButton ID="Image4" runat="server" ImageURL ="Images/sculpture.jpg" PostBackUrl="~/Sculpture.aspx" CssClass="option"/><h3 style="text-align:center">Sculpture</h3>
                </td>
            </tr>
        </table>
            <br />
            <br />
        </div>

</asp:Content>