<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebPrototypeNew.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
       <style type="text/css">
        .auto-style2 {
            width: 167px;
            height: 58px;
        }
        *
        {
            margin: 0px;
            padding:0px;
        }
        .login
        {
           text-align:center;
        }
        *
        #menu
        {
            margin-left:180px;
            margin-right:180px;
            margin-bottom:50px;
        }
        #menu ul
        {
            list-style:none;
        }
        #menu ul li 
        {
            background-color : dimgrey;
            border: 1px solid white;
            width: 190px;
            height: 35px;
            line-height:35px;
            text-align: center;
            float:left;
            position:relative;
            border-radius: 2px;
        }
        #menu ul li a 
        {
            text-decoration:none;
            color:white;
            display:block;
        }
        #menu ul li a:hover 
        {
            background-color:grey;
        }
        /* Second ul*/
        #menu ul ul
        {
            position:absolute;
            display:none;
        }
        #menu ul li:hover > ul
        {
            display:block;
        }
        /*Third ul*/
        #menu ul ul ul
        {
            margin-left:190px;
            top:0px;
        }
        .auto-style4 {
            width: 459px;
        }
        .auto-style5 {
            width: 459px;
            height: 58px;
        }
        .logintitle{
            text-align:center;
        }
        .fgtPwd {
            font-size : 15px;
            text-decoration: none;
        }
        .artlogin {
            font-size : 18px;
            text-decoration: none;
            text-align:center;
        }
        .label{
            font-size : 24px;
            font-weight:100;
        }
        .logintable{
            width:500px;
            height: 250px;
            border:1px solid grey;
            background-color:white;
            padding: 10px 10px 10px 10px;
            position:absolute;
            top:30%;
            left:30%;
            text-align: center;
        } 
        
.title{
	text-align : center;
}

/*assign full width inputs*/ 
    input[type=text], 
    input[type=password] { 
        width: 100%; 
        padding: 12px 20px; 
        margin: 8px 0; 
        display: inline-block; 
        border: 1px solid #ccc; 
        box-sizing: border-box; 
    } 
    
    /*set a style for the buttons*/ 
    .btnSubmit { 
        background-color: #EFEFEF; 
        color: black; 
        padding: 14px 20px; 
        margin: 8px 0; 
        border: none; 
        cursor: pointer; 
        width: 50%; 
		font-size:20px;
    } 
    .ddlbackground { 
        background-color: #EFEFEF; 
        color: black; 
        padding: 14px 20px; 
        margin: 8px 0; 
        border: none; 
        cursor: pointer; 
        width: 50%; 
		font-size:20px;
    } 
    
    /* set a hover effect for the button*/ 
    .btnSubmit:hover { 
        opacity: 0.8; 
    } 
    
    /*set extra style for the cancel button*/ 
    .cancelbtn { 
        width: auto; 
        padding: 10px 18px; 
        background-color: #f44336; 
    } 
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style4">
                        <img alt="" class="auto-style2" src="Images/logo.jpg" /></td>
                </tr>
            </table>
        </div>
        
        <br />
        <br />
        <div style="background-image:url(Images/background.jpg); height:700px">
            <table class="logintable" >
                 <tr>
                    <td colspan="2">
                        <h2><asp:Label ID="Label1" runat="server" Text="Registration Form"></asp:Label></h2>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:DropDownList ID="ddlCategory" runat="server" AutoPostBack="True" CssClass="ddlbackground">
                            <asp:ListItem>Customer</asp:ListItem>
                            <asp:ListItem>Artist</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblUsername" runat="server" Text="Username" CssClass="label"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUsername" runat="server" placeholder="Enter Your Username Here" AutoPostBack="True" OnTextChanged="txtUsername_TextChanged"></asp:TextBox>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPhone" runat="server" Text="Phone Number" CssClass="label"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPhone" runat="server" class="textfield" placeholder="601xxxxxxxxx"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblAddress" runat="server" Text="Address" CssClass="label"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtAddress" runat="server" class="textfield" placeholder="Full Address"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPwd" runat="server" Text="Password" CssClass="label"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblRePwd" runat="server" Text="Retype Password" CssClass="label"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtRePassword" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td style="text-align:left;">
                        <asp:CheckBox ID="checkbox1" runat="server" text=" I agree the Terms of use and private policy."/>
                        </td>
                </tr>
                <tr>
                    <td>
                        <br />
                        
                    </td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" CssClass="btnSubmit" Text="Submit" OnClick="btnSubmit_Click"/>
                    </td>
                </tr>
            </table>
            </div>
    </form>
</body>
</html>
