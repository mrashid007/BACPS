<%@ Control Language="C#" AutoEventWireup="true" EnableViewState="false" CodeBehind="AdminCBS.ascx.cs" Inherits="FloraSoft.AdminCBS" %>
<style type="text/css">
    .Hide {
        display: none;
    }
</style>
<asp:GridView ID="CBSGrid" runat="server"
    Width="100%" BorderWidth="0px" GridLines="None" AutoGenerateColumns="False" CellPadding="5"
    CellSpacing="1" AlternatingRowStyle-BackColor="#ffffff" RowStyle-BackColor="#dee9fc" RowStyle-CssClass="Normal"
    HeaderStyle-CssClass="GrayBackWhiteFont">
    <Columns>
        <asp:BoundField ItemStyle-Width="50%" ItemStyle-CssClass="NormalSmall" DataField="Process" ControlStyle-Font-Bold="true" HeaderText="CBS Process" />
<%--        <asp:HyperLinkField DataNavigateUrlFields="OptionName" DataNavigateUrlFormatString="../ToggleProcess.aspx?ProcessID={0}" HeaderText="Status" DataTextField="Status" />--%>
        <asp:TemplateField HeaderText="Status" ItemStyle-Font-Underline="true">
            <ItemTemplate>
                <a href="../ToggleProcess.aspx?ProcessID=<%#Eval("OptionName")%>" onclick="return confirm('Are you sure?')"><%#Eval("Status")%></a>
             </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
<table width="100%" bgcolor="#dddddd" cellpadding="1" cellspacing="1">
    <tr bgcolor="#ffffff" height="16">
        <td style="width: 50%" class="Normal">&nbsp;Consulated</td>
        <td>
            <a href="../CBSConsulatedCalculation.aspx" runat="server">CBS GL</a>
        </td>
    </tr>
    <tr bgcolor="#ffffff" height="16">
        <td style="width: 50%; text-align: center; font-size: large;" colspan="2">
            <a href="../CBSEditTransaction.aspx" runat="server">Edit Transaction</a> </td>
    </tr>

    <tr bgcolor="#dee9fc" height="16">
        <td style="padding-bottom: 3px" colspan="2"><a href="AdminCBSLog.aspx" class="Normal">Process Start/Stop Log</a></td>
    </tr>
</table>
<div style="max-height:80px; overflow-y:scroll;">
    <table>
        <tr bgcolor="#ffffff" height="16">
            <td style="width: 50%" class="Normal">&nbsp;OCE(HV) Wait</td>
            <td>
                <asp:Label ID="CBSOCEHVCnt" runat="server" CssClass="NormalSmall" /></td>
        </tr>
        <tr bgcolor="#ffffff" height="16">
            <td style="width: 50%" class="Normal">&nbsp;OCE(RV) Wait</td>
            <td>
                <asp:Label ID="CBSOCERVCnt" runat="server" CssClass="NormalSmall" /></td>
        </tr>
<%--        <tr bgcolor="#ffffff" height="16">
            <td style="width: 50%" class="Normal">&nbsp;ICE(HV) Wait</td>
            <td>
                <asp:Label ID="CBSICEHVCnt" runat="server" CssClass="NormalSmall" /></td>
        </tr>
        <tr bgcolor="#ffffff" height="16">
            <td style="width: 50%" class="Normal">&nbsp;ICE(HV) Wait</td>
            <td>
                <asp:Label ID="CBSICERVCnt" runat="server" CssClass="NormalSmall" /></td>
        </tr>--%>
        <tr bgcolor="#ffffff" height="16">
            <td style="width: 50%" class="Normal">&nbsp;CHG/VAT Wait</td>
            <td>
                <asp:Label ID="CBSCHGVATCnt" runat="server" CssClass="NormalSmall" /></td>
        </tr>
    </table>
</div>
