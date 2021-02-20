<%@ Page Language="C#" MasterPageFile="~/Artist.Master" AutoEventWireup="true" CodeBehind="ArtistHomepage.aspx.cs" Inherits="WebPrototypeNew.ArtistHomepage" %>

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
</asp:Content>