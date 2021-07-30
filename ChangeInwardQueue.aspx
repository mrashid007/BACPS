<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangeInwardQueue.aspx.cs" Inherits="FloraSoft.ChangeInwardQueue" %>
<%@ Register Src="modules/AdminOpManagerHeader.ascx" TagName="AdminOpManagerHeader" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Change Inward Queue</title>
    <link href="includes/sitec.css" rel="stylesheet" type="text/css" /> 
</head>
<body topmargin="0" leftmargin="0">
    <form id="form1" runat="server">
        <uc1:AdminOpManagerHeader ID="AdminOpManagerHeader1" runat="server" />
        <div class="Head" align="center">Inward Cheques: Change Queue</div>
    <table cellpadding="5">
        <tr>
            <td colspan="2">
                <asp:Image ID="FrontImage" BorderWidth="1px" runat="Server" Width="615" />
                <asp:Image ID="BackImage" BorderWidth="1px" runat="Server" Width="615" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <table>
                    <tr>
                        <td class="NormalBold" width="150">Current Queue</td>
                        <td><asp:Label ID="CurrentQueue" runat="server" CssClass="Normal"></asp:Label></td>
                    </tr>
                     <tr>
                        <td class="NormalBold">New Queue</td>
                        <td>
                            <table border="0" cellpadding="1" cellspacing="0">
                                <tr>
                                    <td>
                                        <asp:DropDownList ID="NewQueueList" runat="Server">
                                            <asp:ListItem Text="Maker"   Value="3"></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td width="150"></td>
                                    <td><asp:LinkButton ID="BtnDelete" runat="server" CssClass="CommandButton" Visible="true" Text ="Delete" OnClick="BtnDelete_Click" /></td>
                                </tr>
                             </table>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                           <asp:Button ID="ChangeQueueBtn" runat="server" CssClass="inputlt" Visible="false" Text="Change Queue" OnClick="ChangeQueueBtn_Click" />
                        </td>
                    </tr>
               </table>
            </td>
        </tr>
    </table>
    <div>
        
    </div>
    
    </form>
</body>
</html>
