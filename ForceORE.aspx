<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForceORE.aspx.cs" Inherits="FloraSoft.ForceORE" %>
<%@ Register Src="modules/AdminOpManagerHeader.ascx" TagName="AdminOpManagerHeader" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Force IRE</title>
    <link href="includes/sitec.css" rel="stylesheet" type="text/css" /> 
</head>
<body topmargin="0" leftmargin="0">
    <form id="form1" runat="server">
        <uc1:AdminOpManagerHeader ID="AdminOpManagerHeader1" runat="server" />
        <div class="Head" align="center">Create IRE Manually</div>
    <table>
        <tr>
            <td>
                <asp:Image ID="FrontImage" runat="Server" Width="450" />
                <asp:Image ID="BackImage" runat="Server" Width="450" />
            </td>
        </tr>
        <tr>
            <td>
                <table>
                     <tr>
                        <td><asp:DropDownList ID="ReturnReasonList" runat="server" DataTextField="ReturnReason" DataValueField="ReturnCD" /></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="BtnCreateIRE" runat="server" CssClass="inputlt" Text="Create IRE" OnClick="BtnCreateIRE_Click" />
                        </td>
                    </tr>
               </table>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
