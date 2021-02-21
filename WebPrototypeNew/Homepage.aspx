<%@ Page Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="WebPrototypeNew.Homepage" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1" >
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
        .gallery {
           text-align:center;
            width:450px;
            height:300px;
        }
        .homegallery{
            border:none;
        }
    </style>
    <div>
           
            <table style="width:100%;">
                <tr>
                    <td class="homeimage"><h1>
                        <asp:Label ID="Label2" runat="server" Text="BUY ART ONLINE"></asp:Label>
                        </h1>
                        <br />
                        <h4>
                        <asp:Label ID="Label3" runat="server" Text="220000 artists | 1000000 collectors"></asp:Label>
                        </h4>
                        </td>
                    <td>
                        <img alt="" src="Images/homeimage.jpg" class="auto-style3" /></td>
                </tr>
            </table>
          
        </div>
    <br />
    <br />
    <div>
    <table class="homegallery" style="width:100%;">
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" ImageURL ="Images/1.jpg" CssClass="gallery"/>
            </td>
            <td>
                <asp:Image ID="Image2" runat="server" ImageURL ="Images/2.jpg" CssClass="gallery"/>
            </td>
            <td>
                <asp:Image ID="Image3" runat="server" ImageURL ="Images/3.jpg"  CssClass="gallery"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image4" runat="server" ImageURL ="Images/4.jpg" CssClass="gallery"/>
            </td>
            <td>
                <asp:Image ID="Image5" runat="server" ImageURL ="Images/5.jpg" CssClass="gallery"/>
            </td>
            <td>
                <asp:Image ID="Image6" runat="server" ImageURL ="Images/6.jpg" CssClass="gallery"/>
            </td>
        </tr>
        </table> 
    <br />
    <br />
</div>
</asp:Content>