﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateCustomer.aspx.cs" Inherits="InventoryManagementSystemCMPG223.UpdateCustomer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>update customer</title>
      <link rel="stylesheet" href="ProductStyles.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%;">
                <tr>
                    <td style="width: 20%;">&nbsp;</td>
                    <td >
                        <h1 id="AddLipstickHeading"> Update Customer Profile</h1>
                       

                    </td>
                    <td style="width: 20%;">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 20%;">&nbsp;</td>
                    <td class="content">
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="CustomerIdTB" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="CustomerIdTB" runat="server" placeholder="customer id"></asp:TextBox><br />


                        <asp:RequiredFieldValidator ControlToValidate="CustomerNameTB" ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="CustomerNameTB" runat="server" placeholder="customer name"></asp:TextBox><br />


                        <asp:RequiredFieldValidator ControlToValidate="CustomerEmailTB" ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="CustomerEmailTB" runat="server" placeholder="customer email"></asp:TextBox>
                        <br />
                        
                        <asp:Button ID="UpdateCustomerBtn" runat="server" Text="Update Customer profile" OnClick="UpdateCustomerBtn_Click" />
                        <br />
                        <asp:Label ID="FeedbackLbl" runat="server" Text=""></asp:Label><br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>


                        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Customers.aspx" runat="server">See customers</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>



        </div>
    </form>
</body>
</html>
