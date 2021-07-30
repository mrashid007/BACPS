<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportViewerMenu.aspx.cs" Inherits="FloraSoft.ReportViewerMenu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <title>Report Viewer Home: Flora BACH</title>
    <link href= "includes/sitec.css" type="text/css" rel="stylesheet"/>
</head>
<body topmargin="0" leftmargin="0">
    <table border="0" cellpadding="0" cellspacing="0">
       <tr><td><a href="ReportViewerMenu.aspx"><img src="images/BACPSHeader.gif" border="0"></a></td></tr>
       <tr><td align="right"><asp:Label ID="WelcomeMsg" runat="server" CssClass="NormalBold"></asp:Label></td></tr>
    </table>
    <form id="form1" runat="server">
        <div>
            <table cellpadding="10" cellspacing="4">
                <tr>
                    <td width="300px" rowspan="3"></td>
                    <td colspan="4" class="Head" align="center">Report Viewer Home Page</td>
                </tr>
                <tr>
                    <td><a href="OutwardBatchStatus.aspx"><img src="Images/Branch/OutwardBatch.gif" border="0" /></a></td>
                    <td><a href="SettlementSummary.aspx"><img src="Images/Branch/NetSettlement.gif" border="0"  /></a></td>
                    <td><a href="DetailedSettlement.aspx"><img src="Images/Branch/DetailedSettlement.gif" border="0" /></a></td>
                    <td><a href="Search.aspx"><img src="Images/Branch/Search.gif" border="0" /></a></td>
              </tr>
                <tr>
                    <td><a href="BranchReturnList.aspx"><img src="Images/Branch/ReturnVoucher.gif" border="0"   /></a></td>
                    <td><a href="CBSDailyLog.aspx"><img src="Images/Branch/CBSFinancialLog.gif" border="0" /></a></td>
                    <td><a href="CBSTransactionStatus.aspx"><img src="Images/Branch/CBSStatus.gif" border="0"   /></a></td>
                    <td><a href="LogOut.aspx"><img src="Images/Branch/SignOutF.gif" border="0" /></a></td>
               </tr>               
            </table>
        </div>
    </form>
</body>
</html>
