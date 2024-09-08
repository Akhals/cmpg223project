﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUpPage.aspx.cs" Inherits="InventoryManagementSystemCMPG223.SignUpPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign up</title>
    <link rel="stylesheet" href="ProductStyles.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%;">
                <tr>
                    <td style="width: 20%;">&nbsp;</td>
                    <td>
                        <h1 id="signUpHeading">Sign up</h1>
                    </td>
                    <td style="width: 20%;">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="content">

                      
                        
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Username1" ErrorMessage="*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="Username1" runat="server" placeholder="Enter your email"></asp:TextBox><br />
                        
                        
                        <asp:RequiredFieldValidator ControlToValidate="UserPassword"  ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="UserPassword" runat="server" placeholder="Enter your password"></asp:TextBox><br />

                        <asp:Button ID="SignUpBtn" runat="server" Text="Create Account" OnClick="SignUpBtn_Click" />

                        <div class="HaveAccountContainer">
                            <p id="haveAccountText">Have account?</p>
                            <asp:HyperLink ID="LoginLbl" runat="server" NavigateUrl="~/LoginPage.aspx">Login</asp:HyperLink>
                        </div>


                        <asp:Label ID="LblDisplay" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>

            </table>

        </div>
    </form>
</body>
</html>
