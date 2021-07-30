<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManualReturn.aspx.cs" Inherits="FloraSoft.ManualReturn" %>
<%@ Register Src="modules/AdminHeader.ascx" TagName="AdminHeader" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Change Inward Queue</title>
    <link href="includes/sitec.css" rel="stylesheet" type="text/css" /> 
</head>
<body topmargin="0" leftmargin="0">
    <form id="form1" runat="server">
        <uc1:AdminHeader ID="AdminHeader1" runat="server" />
        <div class="Head" align="center">Manual Return by Admin</div>
    <table>
        <tr>
            <td><asp:Image ID="FrontImage" runat="Server" Width="700" /></td>
       </tr>
       <tr>
           <td><asp:Image ID="BackImage" runat="Server" Width="700" /></td>
        </tr>
        <tr>
            <td>
                <table>
                    <tr>
                        <td class="NormalBold" width="150">Current Queue</td>
                        <td><asp:Label ID="CurrentQueue" runat="server" CssClass="Normal"></asp:Label></td>
                    </tr>
                     <tr>
                        <td class="NormalBold">Return Reasosn</td>
                        <td><asp:DropDownList ID="NewQueueList" DataTextField="ReturnReason" DataValueField="ReturnCD" runat="Server" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="ChangeQueueBtn" runat="server" CssClass="inputlt" Text="Return" OnClick="ChangeQueueBtn_Click" />
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
