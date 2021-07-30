<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CutOffTime.aspx.cs" Inherits="FloraSoft.CutOffTime" %>
<%@ Register Src="modules/CommonHeader.ascx" TagName="CommonHeader" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Edit Messages</title>
    <link href="includes/sitec.css" rel="stylesheet" type="text/css" /> 
</head>
<body topmargin="0" leftmargin="0">
    <form id="form1" runat="server">
         <uc1:CommonHeader ID="CommonHeader1" runat="server" />
   <div>
        <div class="Head" align="center">Set Cut Off Time</div>
        <table>
            <tr>
                <td width="80"></td>
                <td class="NormalBold">Inward HV Cut Off Time</td>
                <td><asp:TextBox ID="HVCT" runat="server" CssClass="inputlt" Width="40px"></asp:TextBox></td>
                <td width="200"></td>
                <td class="NormalBold">Outward HV Cut Off Time</td>
                <td><asp:TextBox ID="OHVCT" runat="server" CssClass="inputlt" Width="40px"></asp:TextBox></td>
                <td></td>            </tr>
            <tr>
                <td width="80"></td>
                <td class="NormalBold">Inward RV Cut off Time</td>
                <td><asp:TextBox ID="RVCT" runat="server" CssClass="inputlt" Width="40px"></asp:TextBox></td>
                <td></td>
                <td class="NormalBold">Outward RV Cut off Time</td>
                <td><asp:TextBox ID="ORVCT" runat="server" CssClass="inputlt" Width="40px"></asp:TextBox></td>
                <td></td>           
            </tr>
            <tr>
                <td></td>
                <td align="left" colspan="2"><asp:LinkButton ID="SaveBtn" Text="Save" runat="server" CssClass="CommandButton" OnClick="SaveBtn_Click"></asp:LinkButton></td>
                <td align="right" colspan="2"><asp:LinkButton ID="CancelBtn" Text="Cancel" runat="server" CssClass="CommandButton" CausesValidation="false" OnClick="CancelBtn_Click"></asp:LinkButton></td>
                <td></td>           
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
