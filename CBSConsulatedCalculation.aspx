<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CBSConsulatedCalculation.aspx.cs" Inherits="FloraSoft.CBSConsulatedCalculation" %>

<%@ Register Src="modules/CommonHeader.ascx" TagName="CommonHeader" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>CBS Consulated Calculation</title>
    <link href="includes/sitec.css" rel="stylesheet" type="text/css" />
</head>
<body topmargin="0" leftmargin="0">
    <form id="form1" runat="server">
     <uc1:CommonHeader ID="CommonHeader1" runat="server" /><br />
        <a href="Default.aspx"></a>
        <div class="Head" align="center">
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </div>
        <div style="padding-left:40px;padding-top:30px;">
            <table border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td>Branch Name</td>
                    <td class="Head" align="Center" colspan="7" style="padding-left:30px;">
                    <asp:DropDownList ID="BranchList"  Width="205px" runat="server" DataTextField="BranchName" DataValueField="RoutingNo" />

                   </td>

                </tr>
                <tr>
                    <td colspan="2">Service Type</td>                    
                    <td>&nbsp</td>
                    <td>&nbsp</td>
                    <td colspan="2">
                        <asp:DropDownList ID="GLTransactionType" runat="server">
                            <asp:ListItem Text="ICE GL " Value="ICEGLTR"></asp:ListItem>
                            <asp:ListItem Text="OCE GL " Value="OCEGLTR"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp</td>
                     <td colspan="2">
                        <asp:DropDownList ID="TransactionType" runat="server">
                            <asp:ListItem Text="HV" Value="HV"></asp:ListItem>
                            <asp:ListItem Text="RV" Value="RV"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="Head" align="Center" colspan="2" style="padding-left:30px;">
                        <asp:Button ID="btnBranchWiseGL" runat="server" OnClick="btnBranchWiseGL_Click" Text="Verify" />
                    </td>
                    <td class="Head" align="Center" colspan="2" style="padding-left:30px;">
                        <asp:Button ID="btnConfirm" runat="server" ForeColor="Red" Font-Bold="true" OnClick="btnConfirm_Click" Text="Confirm" />
                    </td>                   
<%--                    <td class="Head" align="Center" colspan="2" style="padding-left:30px;">
                        <a href="CBSEditTransaction.aspx">Edit Transaction</a>
                        <asp:Button ID="btnRefrash" runat="server" OnClick="btnRefrash_Click" Text="Edit Transaction" />
                    </td>--%>
                </tr>
            </table>
        </div>
        <div style="padding-left:30px;">
            <asp:DataGrid ID="CBSFileGrid" runat="server"
                AlternatingItemStyle-BackColor="#ffffff"
                AutoGenerateColumns="false" BorderWidth="0px"
                CellPadding="5" CellSpacing="1"
                FooterStyle-CssClass="GrayBackWhiteFont" GridLines="None"
                HeaderStyle-CssClass="GrayBackWhiteFont" Height="0px"
                ItemStyle-BackColor="#dee9fc"
                ItemStyle-CssClass="NormalSmall"
                AllowPaging="True" PageSize="50"
                ShowFooter="true" OnPageIndexChanged="CBSFileGrid_PageIndexChanged">
                 <Columns>
                       <asp:BoundColumn  DataField = "BranchCD"   HeaderText="BranchCD"     ItemStyle-Width = "50px"   ItemStyle-Wrap ="false" HeaderStyle-HorizontalAlign="Center"  />
                       <asp:BoundColumn  DataField = "HV"   HeaderText="HV"         ItemStyle-Width = "50px"    ItemStyle-Wrap ="false" HeaderStyle-HorizontalAlign="Center"  ItemStyle-HorizontalAlign="Right" />
                       <asp:BoundColumn  DataField = "CCY"    HeaderText="CCY"      ItemStyle-Width = "50px"   DataFormatString="{0:N}"   ItemStyle-Wrap ="false" HeaderStyle-HorizontalAlign="Center"  ItemStyle-HorizontalAlign="Right" />
                       <asp:BoundColumn  DataField = "ValDate"   HeaderText="ValDate"         ItemStyle-Width = "100px"    ItemStyle-Wrap ="false" HeaderStyle-HorizontalAlign="Center"  ItemStyle-HorizontalAlign="Right" />
                       <asp:BoundColumn  DataField = "DrAccountNo"   HeaderText="DrAccountNo"         ItemStyle-Width = "100px"    ItemStyle-Wrap ="false" HeaderStyle-HorizontalAlign="Center"  ItemStyle-HorizontalAlign="Right" />
                       <asp:BoundColumn  DataField = "CrAccountNo"    HeaderText="CrAccountNo"      ItemStyle-Width = "100px"   ItemStyle-Wrap ="false" HeaderStyle-HorizontalAlign="Center"  ItemStyle-HorizontalAlign="Right" />
                       <asp:BoundColumn  DataField = "AmountLCY"    HeaderText="AmountLCY"      ItemStyle-Width = "100px"   DataFormatString="{0:N}"   ItemStyle-Wrap ="false" HeaderStyle-HorizontalAlign="Center"  ItemStyle-HorizontalAlign="Right" />
                       <asp:BoundColumn  DataField = "Narration"    HeaderText="Narration"      ItemStyle-Width = "200px"   ItemStyle-Wrap ="false" HeaderStyle-HorizontalAlign="Center"  ItemStyle-HorizontalAlign="Right" />
                   </Columns>
                <PagerStyle PageButtonCount="65" CssClass="PagerStyle" Mode="NumericPages"></PagerStyle>
            </asp:DataGrid>
        </div>

    </form>
</body>
</html>

