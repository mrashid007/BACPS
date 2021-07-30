<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="FloraSoft.ChangePassword" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Change My Password</title>
    <link href="includes/sitec.css" rel="stylesheet" type="text/css" />
</head>
<body topmargin="0" leftmargin="0">
     <a href="Default.aspx"><img src="images/BACPSHeader.gif" border="0"></a>
   <form id="form1" runat="server">
        <div class="Head" align="center">Change My Password</div>
    <table width="705px">
        <tr>
            <td width="80"></td>
            <td style="width:120px" class="NormalBold">Old Password</td>
            <td style="width:500px">
                <asp:TextBox ID="OldPassword" runat="Server" TextMode="Password" CssClass="NormalBold" Width="100px" MaxLength="40"></asp:TextBox>
                <asp:RequiredFieldValidator 
                          id="ReqValOldPassword" 
                          CssClass="NormalRed" runat="server" 
                          ControlToValidate="OldPassword"
                          ErrorMessage="*" Display="dynamic"></asp:RequiredFieldValidator>        
            </td>
        </tr>
        <tr>
            <td></td>
            <td class="NormalBold">New Passsword</td>
            <td>
                <asp:TextBox ID="NewPassword" runat="Server" TextMode="Password" CssClass="NormalBold" Width="100px" MaxLength="40"></asp:TextBox>
                <asp:RequiredFieldValidator 
                          id="ReqValNewPassword" 
                          CssClass="NormalRed" runat="server" 
                          ControlToValidate="NewPassword"
                          ErrorMessage="*" Display="dynamic"></asp:RequiredFieldValidator>
           </td>        
        </tr>
        <tr>
             <td></td>
            <td class="NormalBold">Confirm</td>
            <td>
                <asp:TextBox ID="ConfirmPassword" runat="Server" TextMode="Password" CssClass="NormalBold" Width="100px" MaxLength="40"></asp:TextBox>
                <asp:RequiredFieldValidator 
                          id="ReqValConfirmPassword" 
                          CssClass="NormalRed" runat="server" 
                          ControlToValidate="ConfirmPassword"
                          ErrorMessage="*" Display="dynamic"></asp:RequiredFieldValidator>
            </td>      
        </tr>
        <tr>
           <td></td>
           <td colspan="2">
                <asp:Label ID="Msg" runat="Server" CssClass="NormalRed"></asp:Label>
            </td>
        </tr>
        <tr>
           <td></td>
           <td colspan="2">
                <asp:Button ID="ChangePwdBtn" runat="server" CssClass="inputlt" Text="Change" OnClick="ChangePwdBtn_Click" />
                <asp:LinkButton ID="LoginBtn" Visible="false" runat="server" CausesValidation="false" CssClass="CommandButton">Login</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td colspan="3" height="30px"></td>
        </tr>
        <tr>
            <td></td>
            <td colspan="2" class="NormalBold">Password Policy</td>
        </tr>
        <tr>
            <td></td>
            <td colspan="2" class="Normal">1. Password must be minimum 6 characters long.</td>
        </tr>
         <tr>
            <td></td>
            <td colspan="2" class="Normal">2. Password must contain both alphabet(both lower and upper) and numbers and also special characters.</td>
        </tr>   
         <tr>
            <td></td>
            <td colspan="2" class="Normal">3. Password must be changed within 90 days or it will deactivate.</td>
        </tr>   
        
         <tr>
            <td></td>
            <td colspan="2" class="Normal">4. While changing password you can not use the same password that you have used the last 3 times.</td>
        </tr>   
        
        </table>
    <div>
        
    </div>
    
    </form>
</body>
</html>
