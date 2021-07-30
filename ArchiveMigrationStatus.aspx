<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ArchiveMigrationStatus.aspx.cs" Inherits="FloraSoft.ArchiveMigrationStatus" %>
<%@ Register Src="modules/AdminHeader.ascx" TagName="AdminHeader" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Migration Checklist for Admin</title>
    <link href="includes/sitec.css" rel="stylesheet" type="text/css" /> 
</head>
<body topmargin="0" leftmargin="0">
    <form id="form1" runat="server">
        <uc1:AdminHeader ID="AdminHeader1" runat="server" />
        <table border="0">
           <tr>
               <td valign="top" style="width: 100px"></td>
                <td valign="top">
                       
                       <asp:DataGrid ID="ResultGrid" runat="server"  
                            AlternatingItemStyle-BackColor="#ffffff"
                            AutoGenerateColumns="false" BorderWidth="0px" 
                            CellPadding="5" CellSpacing="1"
                            FooterStyle-CssClass="GrayBackWhiteFont" GridLines="None"
                            HeaderStyle-CssClass="GrayBackWhiteFont" Height="0px" 
                            ItemStyle-BackColor="#dee9fc"
                            ItemStyle-CssClass="NormalSmall" 
                            ShowFooter="true">
                           <Columns>                             
                              <asp:BoundColumn DataField = "TestName"     HeaderText="Test Name"         ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
                              <asp:BoundColumn DataField = "ResultCnt"   HeaderText="Result Count"        ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
                            </Columns>
                       </asp:DataGrid>    
                       <!------------------------------>
                </td>
            </tr>
            <tr>
                <td></td>
                <td><asp:LinkButton ID="FixErrorBtn" runat="server" CssClass="Normal" Text="Fix Error" OnClick="FixErrorBtn_Click" /></td>
            </tr>
        </table>
    </form>
</body>
</html>
