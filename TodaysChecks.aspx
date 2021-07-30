<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TodaysChecks.aspx.cs" Inherits="FloraSoft.TodaysChecks" %>
<%@ Register Src="Modules/BranchHeader.ascx" TagName="BranchHeader" TagPrefix="uc2" %>
<%@ Register Src="modules/AdminReportViewer.ascx" TagName="AdminReportViewer" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Today's Checks: Flora Limited</title>
    <link href="includes/sitec.css" rel="stylesheet" type="text/css" /> 
</head>
<body topmargin="0" leftmargin="0">
    <form id="form1" runat="server">
        <uc2:BranchHeader ID="BranchHeader1" runat="server" />
        <br />
     <table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td style="width: 72px"></td>
            <td class="Head" align="Center" colspan="2">Print Today's Checks</td>
       </tr>
       <tr>
            <td style="width: 72px"></td>
            <td colspan="2">
                <asp:DropDownList ID="ClearingTypeList" runat="server" >
                    <asp:ListItem Text="Reg" Value="false"></asp:ListItem>
                    <asp:ListItem Text="HV"  Value="true"></asp:ListItem>
                </asp:DropDownList>            
            </td>
       </tr>
       <tr>
            <td style="width: 72px"></td>
            <td>
               <table width="100%" bgcolor="#dddddd" cellpadding="1" cellspacing="1">
                <tr bgcolor="#dee9fc" height="26">
                    <td><asp:DropDownList ID="RangeList" runat="server"></asp:DropDownList></td>
                    <td><asp:LinkButton ID="InwardListBtn" runat="server" Text="Inward Checks" CssClass="CommandButton" OnClick="InwardListBtn_Click"></asp:LinkButton></td>
                </tr>
                <tr bgcolor="#ffffff" height="26">
                    <td colspan="2"> <asp:LinkButton ID="OREListBtn" runat="server" Text="Inward in Rejected Queue" CssClass="CommandButton" OnClick="OREListBtn_Click"></asp:LinkButton></td>
                </tr>
                <tr bgcolor="#dee9fc" height="26">
                    <td colspan="2"> <asp:LinkButton ID="IREList" runat="server" Text="Outward Return" CssClass="CommandButton" OnClick="IREList_Click"></asp:LinkButton></td>
               </tr>
          </table>
            </td>
       </tr>
     </table>
    </form>
</body>
</html>

