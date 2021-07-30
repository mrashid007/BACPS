<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeActivity.aspx.cs" Inherits="FloraSoft.EmployeeActivity" %>

<%@ Register Src="modules/AdminHeader.ascx" TagName="AdminHeader" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Employee Activity</title>
    <link href="includes/sitec.css" rel="stylesheet" type="text/css" /> 
</head>
<body topmargin="0" leftmargin="0">
    <form id="form1" runat="server">
    <uc1:AdminHeader ID="AdminHeader1" runat="server" />
    <a href="Default.aspx"></a>
        <div class="Head" align="center">Employee Inward Activity</div>        
        <div>
            <table align="center">
             <tr>
                 <td><asp:Label ID="lblSettlementDate" CssClass="NormalBold" runat="server"></asp:Label></td>
                 <td width="20"></td>
                 <td><asp:Label ID="lblClearingType" CssClass="NormalBold" runat="server"></asp:Label></td>
                 <td width="20"></td>
                 <td><asp:Label ID="lblUserName" CssClass="NormalBold" runat="server"></asp:Label></td>
                 <td width="20"></td>
                 <td><asp:LinkButton ID="ExcelBtn" ToolTip="Excel" runat="server" CssClass="CommandButton" Text="<img src='images/Excel.jpg' border='0'/>" OnClick="ExcelBtn_Click"></asp:LinkButton></td>
                 <td width="20"></td>
                 <td><a class="CommandButton" href="ActivityReport.aspx">Back</a></td>
            </tr>
            </table>
            <table align="center">
                <tr>
                    <td width="80"></td>
                    <td>
                        <!----------------------->
                        <asp:datagrid Id="EmpActivityGrid"
	                            HeaderStyle-CssClass="GrayBackWhiteFont"  FooterStyle-CssClass="GrayBackWhiteFont" 
	                            ItemStyle-CssClass="NormalSmall" ItemStyle-BackColor="#dee9fc"   
	                            AlternatingItemStyle-BackColor="#FFFFFF" runat="server" CellSpacing="1"  CellPadding="5" 
	                            autogeneratecolumns="true"  gridlines="None" borderwidth="0px" 
            	                ShowFooter="true"  Height="0px">
  	                    </asp:datagrid>
                        <!----------------------->
                        <asp:Label ID="lblCount" runat="server" CssClass="NormalBold" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

