<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ICEHistory.aspx.cs" Inherits="FloraSoft.ICEHistory" %>
<%@ Register Src="modules/AdminHeader.ascx" TagName="AdminHeader" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Inward Cheque History</title>
    <link href="includes/sitec.css" rel="stylesheet" type="text/css" /> 
</head>
<body topmargin="0" leftmargin="0">
    <form id="form1" runat="server">
        <uc1:AdminHeader ID="AdminHeader1" runat="server" />
    <div>
       <div class="Head" align="center">Inward Cheque History</div>
       <table>
        <tr>
            <td width="80"></td>
            <td>
                <!------------------------->
                <table>
                    <tr>
                        <td><asp:TextBox ID="TxtCheckSLNo" runat="server" MaxLength="7" Width="50px" CssClass="inpult"></asp:TextBox></td>
                        <td width="50"><asp:LinkButton ID="FindBtn" runat="server" CssClass="CommandButton" Text="<img src='images/Search.gif' border=0>" OnClick="FindBtn_Click"></asp:LinkButton></td>
                    </tr>
               </table> 
                <asp:DataGrid ID="ChecksGrid" runat="server"  
                    AlternatingItemStyle-BackColor="#ffffff" AutoGenerateColumns="False" BorderWidth="0px" 
                    CellPadding="5" CellSpacing="1" FooterStyle-CssClass="GrayBackWhiteFont" GridLines="None"
                    HeaderStyle-CssClass="GrayBackWhiteFont" Height="0px" 
                    ItemStyle-BackColor="#dee9fc" ItemStyle-CssClass="Normal"  ShowFooter="true">
                   <Columns>
                        <asp:BoundColumn DataField = "HistoryID"        HeaderText="HistoryID"      ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />
                        <asp:BoundColumn DataField = "HistoryTime"      HeaderText="HistoryTime"    ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />
                        <asp:BoundColumn DataField = "IPAddress"        HeaderText="IPAddress"      ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />
                        <asp:BoundColumn DataField = "ChangeDesc"       HeaderText="ChangeDesc"     ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />
                        <asp:BoundColumn DataField = "UserID"           HeaderText="UserID"         ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />
                        <asp:BoundColumn DataField = "ReturnReason"     HeaderText="ReturnReason"   ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />
                        <asp:BoundColumn DataField = "RejectedReason"   HeaderText="RejectedReason" ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />
                        <asp:BoundColumn DataField = "ApprovedBy"       HeaderText="ApprovedBy"     ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />
                        <asp:BoundColumn DataField = "QueueName"        HeaderText="Queue"          ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />
                    </Columns>
              </asp:DataGrid>      
                <!------------------------->
            </td>
       </tr>
       </table>
    </div>
    </form>
</body>
</html>
