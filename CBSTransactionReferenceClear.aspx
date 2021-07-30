<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CBSTransactionReferenceClear.aspx.cs" Inherits="FloraSoft.CBSTransactionReferenceClear" %>

<%@ Register Src="modules/AdminOpManagerHeader.ascx" TagName="AdminOpManagerHeader" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>CBS Consulated Calculation</title>
    <link href="includes/sitec.css" rel="stylesheet" type="text/css" />
</head>
<body topmargin="0" leftmargin="0">
    <form id="form1" runat="server">
        <uc1:AdminOpManagerHeader ID="AdminOpManagerHeader1" runat="server" />
        <a href="Default.aspx"></a>
        <div class="Head" align="center">
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </div>
        <div style="padding-left:40px;padding-top:30px;">
            <table border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td class="Head" align="Center" colspan="2">Service Type</td>
                    <td colspan="2">
                        <asp:DropDownList ID="GLTransactionType" runat="server">
                            <asp:ListItem Text="ICE GL " Value="ICEGLTR"></asp:ListItem>
                            <asp:ListItem Text="OCE GL " Value="OCEGLTR"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                     <td colspan="2">
                        <asp:DropDownList ID="TransactionType" runat="server">
                            <asp:ListItem Text="HV" Value="HV"></asp:ListItem>
                            <asp:ListItem Text="RV" Value="RV"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
<%--                    <td class="Head" align="Center" colspan="2" style="padding-left:30px;">
                        <asp:Button ID="btnBranchWiseGL" runat="server" OnClick="btnBranchWiseGL_Click" Text="Verify" />
                    </td>--%>
<%--                    <td class="Head" align="Center" colspan="2" style="padding-left:30px;">
                        <asp:Button ID="btnConfirm" runat="server" OnClick="btnConfirm_Click" Text="Confirm" />
                    </td>--%>
                    <td class="Head" align="Center" colspan="2" style="padding-left:30px;">
                        <a href="CBSEditTransaction.aspx">Edit Transaction</a>
                        <%--<asp:Button ID="btnRefrash" runat="server" OnClick="btnRefrash_Click" Text="Edit Transaction" />--%>
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <asp:DataGrid ID="CBSFileGrid" runat="server"
                AlternatingItemStyle-BackColor="#ffffff"
                AutoGenerateColumns="true" BorderWidth="0px"
                CellPadding="5" CellSpacing="1"
                FooterStyle-CssClass="GrayBackWhiteFont" GridLines="None"
                HeaderStyle-CssClass="GrayBackWhiteFont" Height="0px"
                ItemStyle-BackColor="#dee9fc"
                ItemStyle-CssClass="NormalSmall"
                ShowFooter="true">
            </asp:DataGrid>
        </div>

    </form>
</body>
</html>

