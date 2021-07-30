
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClosePP.aspx.cs" Inherits="FloraSoft.ClosePP" %>
<%@ Register Src="modules/AdminHeader.ascx" TagName="AdminHeader" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Close Positive Pay: Admin</title>
    <link href= "includes/sitec.css" type="text/css" rel="stylesheet"/>
</head>
<body topmargin="0" leftmargin="0">
    <form id="form1" runat="server">
    <table topmargin="0" cellpadding="0" cellspacing="0">
        <tr>
            <td><uc1:AdminHeader ID="AdminHeader1" runat="server" /></td></tr>
        <tr>
            <td align="right" valign="top"><asp:Label ID="WelcomeMsg" runat="server" CssClass="NormalBold" /></td></tr>
    </table>
    <asp:Label ID="Msg" runat="server" CssClass="NormalRed" />
    <asp:Panel ID="ClosePPPanel" runat="server">
        <table cellpadding="4" cellspacing="0" bgcolor="white">
            <tr>
                <td width="100" bgcolor="#EFEFEF">&nbsp;</td>
                <td nowrap class="Normal">Are you sure you like to close positive pay now?&nbsp;&nbsp;<asp:Label ID="ClearingType" runat="server" /> </td>
                <td width="40">&nbsp;</td>
                <td><asp:LinkButton ID="btnYes" runat="server" CssClass="CommandButton" Text="Yes" OnClick="btnYes_Click" /></td>
                <td width="40">&nbsp;</td>
                <td><asp:LinkButton ID="btnCancel" runat="server" CssClass="CommandButton" Text="Cancel" OnClick="btnCancel_Click" /></td>
            </tr>
            <tr>
                <td width="100" bgcolor="#EFEFEF">&nbsp;</td>
                <td nowrap class="NormalRed">**This action can not be reversed.</td>
                <td colspan="4"></td>
            </tr>
        </table>
    </asp:Panel>
    </form>
</body>
</html>
