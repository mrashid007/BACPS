<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReturnVoucher.aspx.cs" Inherits="FloraSoft.ReturnVoucher" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Return Voucher</title>
    <link href="Includes/Print.css" rel="stylesheet" />
    <style>
        Table
        {
	        font-size: 8;
	        font-family: HELVETICA;
	        font-weight: normal;
	        color: #000000;
        }
    </style>
</head>
<body topmargin="0" leftmargin="0" bgcolor="white">
    <form id="form1" runat="server">
    <div id="PrintableArea" class="page">
    <table cellpadding="5" border="0">
        <tr>
            <td colspan="6" align="center"><img src='<%= LogoImage %>' height="40"></img></td>
        </tr>
        <tr>
            <td></td>
            <td colspan="2">RETURN VOUCHER (<%= session %>)</td>
            <td></td>
            <td colspan="2"></td>
        </tr>
        <tr>
            <td width="10"></td>
            <td>Settlement Date</td>
            <td><%= PostingDate %></td>
            <td width="100px"></td>
            <td>Check SLNo</td>
            <td><%= CheckSLNo %></td>
        </tr>
         <tr>
            <td></td>
            <td>Bank</td>
            <td><%= BankName %></td>
            <td></td>
            <td>Representment</td>
            <td><%= RepInd %></td>
        </tr>       
        <tr>
            <td></td>
            <td>Branch</td>
            <td><%= BranchName %></td>
            <td></td>
            <td>Transaction Code</td>
            <td><%= CheckTranCode %></td>
        </tr>
        <tr>
            <td></td>
            <td>Return Reason</td>
            <td><%= ReturnReason %></td>
            <td></td>
            <td>Cheque Amount</td>
            <td><%= CheckAmount %></td>
        </tr>
        <tr height="20"><td colspan="6"></td></tr>
        <tr>
            <td colspan="6" align="center">
                <asp:Image ID="FrontImage" BorderWidth="1px" runat="Server" Width="600" />
            </td>
         </tr>
        <tr><td colspan="6"></td></tr>
        <tr>           
            <td colspan="6" align="center"><asp:Image ID="BackImage" BorderWidth="1px" runat="Server" Width="600" /></td>
        </tr>
    </table>
    <table height="230"><tr><td></td></tr></table>
    <div align="center">_______________________________________________________________________________</div>
    <div style="font:verdana;font-size:small;" align="center"><%= Footer%></div>
    </form>
</body>
</html>
