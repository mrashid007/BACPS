<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BranchMenu.aspx.cs" Inherits="FloraSoft.BranchMenu" %>
<%@ Register src="Modules/BranchHeader.ascx" tagname="BranchHeader" tagprefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Branch Home: Flora BACH</title>
    <link href= "includes/sitec.css" type="text/css" rel="stylesheet"/>
</head>
<body topmargin="0" leftmargin="0">
    <form id="form1" runat="server">
    <table border="0" cellpadding="0" cellspacing="0">
       <tr><td><a href="BranchMenu.aspx">
           <uc1:BranchHeader ID="BranchHeader1" runat="server" />
           </a></td></tr>
       <tr><td align="right"><asp:Label ID="WelcomeMsg" runat="server" CssClass="NormalBold"></asp:Label></td></tr>
    </table>
        <div>
            <table cellpadding="10" cellspacing="4">
                <tr>
                    <td width="250px" rowspan="3"></td>
                    <td colspan="5" class="Head" align="center">Branch Home Page</td>
                </tr>
                <tr>
                    <td><a href="InwardList.aspx"><img src="Images/Branch/InwardList.gif" border="0" /></a></td>
                    <td><a href="InwardReview.aspx"><img src="Images/Branch/InwardReview.gif" border="0" /></a></td>
                    <td><a href="OutwardBatchStatus.aspx"><img src="Images/Branch/OutwardBatch.gif" border="0" /></a></td>
                    <td><a href="DetailedSettlement.aspx"><img src="Images/Branch/DetailedSettlement.gif" border="0" /></a></td>
                    <td><a href="Search.aspx"><img src="Images/Branch/Search.gif" border="0"   /></a></td>
               </tr>
               <tr>
                    <td><a href="BranchReturnList.aspx"><img src="Images/Branch/ReturnVoucher.gif" border="0"   /></a></td>
                    <td><a href="ChangePassword.aspx"><img src="Images/Branch/ChangePasswordF.gif" border="0" /></a></td>
                    <td><a href="BranchMessages.aspx"><img src="Images/Branch/MyMessages.gif" border="0" /></a></td>
                    <td><a href="CBSConsulatedCalculation.aspx"> <img src="Images/Branch/CBSConsulated.gif" border="0" /></a></td>
                    <td><a href="LogOut.aspx"><img src="Images/Branch/SignOutF.gif" border="0" /></a></td>
                    <td></td>
                </tr>               
            </table>
        </div>
    </form>
</body>
</html>
