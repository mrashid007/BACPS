<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InwardChecker.aspx.cs" Inherits="FloraSoft.InwardChecker" %>

<%@ Register Src="Modules/ICEQueueList.ascx" TagName="ICEQueueList" TagPrefix="uc3" %>
<%@ Register Src="Modules/DuplicateInward.ascx" TagName="DuplicateList" TagPrefix="uc4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Flora BACPS: Inward Checker</title>
    <script type="text/javascript">
        function ViewCheck(n) {
            var str = 'ViewICECheck.aspx?ViewSide=0&CheckID=' + document.all["CheckID"].value;
            if (n == 1) {
                str = 'ViewICECheck.aspx?ViewSide=1&CheckID=' + document.all["CheckID"].value;
            }
            window.open(str, 'CheckImage', 'scrollbars=no,width=960,height=430,left=20,top=150');
        }

        function ViewSignature(accNo, sigImageId) {
            var Item = 'ViewSignature.aspx?accNo=' + accNo + '&sigImageId=' + sigImageId;
            window.open(Item, 'Signature', 'scrollbars=no,titlebar=no,toolbar=no,width=600,height=500,left=80,top=200');
        }

    </script>
    <link href="includes/sitec.css" rel="stylesheet" type="text/css" />
</head>
<body topmargin="0" leftmargin="0">
    <form id="form1" runat="server">
        <table border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td><a href="InwardList.aspx">
                    <img src="images/BACPSHeader.gif" width="1110" height="45" border="0"></a></td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="WelcomeMsg" runat="server" CssClass="NormalBold"></asp:Label></td>
            </tr>
        </table>
        <table border="0" cellpadding="0" cellspacing="0" width="1000px">
            <tr>
                <td width="100%" valign="top" border="0" cellpadding="0" cellspacing="0">
                    <!---------------LEFT PANE------------------>
                    <uc3:ICEQueueList ID="ICEQueueList1" runat="server" />
                    <table cellspacing="1" cellspacing="0" width="260px">
                        <tr bgcolor="#a0f6a2">
                            <td colspan="2" class="NormalBold">MICR INFORMATION</td>
                        </tr>
                        <tr bgcolor="#a0f6a2">
                            <td class="Normal">Serial No.</td>
                            <td>
                                <asp:Label ID="CheckSLNo" runat="server" CssClass="NormalLargeBold"></asp:Label></td>
                        </tr>
                        <tr bgcolor="#a0f6a2">
                            <td class="Normal">Routing No</td>
                            <td>
                                <asp:Label ID="IssueRoutingNo" runat="server" CssClass="NormalLargeBold"></asp:Label></td>
                        </tr>
                        <tr bgcolor="#a0f6a2">
                            <td class="Normal">Account No</td>
                            <td>
                                <asp:Label ID="AccountNo" runat="server" CssClass="NormalLargeBold"></asp:Label></td>
                        </tr>
                        <tr bgcolor="#a0f6a2">
                            <td class="Normal">Trans Code</td>
                            <td>
                                <asp:Label ID="CheckTransCode" runat="server" CssClass="Normal"></asp:Label>
                            </td>
                        </tr>
                        <tr bgcolor="#a0f6a2">
                            <td class="Normal">BranchCD </td>
                            <td>
                                <asp:Label ID="lblBranchCD" runat="server" CssClass="Normal"></asp:Label>
                            </td>
                        </tr>

                        <tr height="4">
                            <td></td>
                        </tr>
                        <tr bgcolor="lightyellow">
                            <td class="NormalBold" colspan="2">DATA ENTRY</td>
                        </tr>
                        <tr bgcolor="lightyellow">
                            <td class="Normal">Cheque Date</td>
                            <td>
                                <asp:Label ID="CheckDate" runat="server" CssClass="Normal"></asp:Label></td>
                        </tr>
                        <tr bgcolor="lightyellow">
                            <td class="Normal">Cheque Amount</td>
                            <td>
                                <asp:Label ID="CheckAmount" runat="server" CssClass="NormalLargeBold"></asp:Label>
                            </td>
                        </tr>
                        <tr bgcolor="lightyellow">
                            <td class="Normal">Currency</td>
                            <td>
                                <asp:Label ID="CCY" runat="server" CssClass="NormalLargeBold"></asp:Label>
                            </td>
                        </tr>
                        <tr height="4">
                            <td></td>
                        </tr>
                        <tr bgcolor="lightblue">
                            <td class="NormalBold" colspan="2">SECURITY</td>
                        </tr>
                        <tr bgcolor="lightblue">
                            <td class="Normal">Rep. Ind.</td>
                            <td>
                                <asp:Label ID="RepresentmentIndicator" runat="server" CssClass="Normal"></asp:Label></td>
                        </tr>
                        <tr bgcolor="lightblue">
                            <td class="Normal">MICR valid</td>
                            <td>
                                <asp:Label ID="MICRValidIndicator" runat="server" CssClass="Normal"></asp:Label></td>
                        </tr>
                        <tr bgcolor="lightblue">
                            <td class="Normal">Correction Ind</td>
                            <td>
                                <asp:Label ID="CorrectionIndicator" runat="server" CssClass="Normal"></asp:Label>
                            </td>
                        </tr>
                        <tr bgcolor="#e8ceeb">
                            <td class="NormalBold" colspan="2">SETTLEMENT</td>
                        </tr>
                        <tr bgcolor="#e8ceeb">
                            <td class="Normal">Date</td>
                            <td>
                                <asp:Label ID="SettlementDate" runat="server" CssClass="Normal"></asp:Label></td>
                        </tr>
                        <tr bgcolor="#e8ceeb">
                            <td class="Normal">Time</td>
                            <td>
                                <asp:Label ID="ECESettlementTime" runat="server" CssClass="Normal"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <uc4:DuplicateList ID="DuplicateList1" runat="server" />
                    <!---------------END LEFT PANE-------------->
                </td>

                <td width="2"></td>
                <td width="550" valign="top" align="left">
                    <!---------------CENTER PANE------------------>
                    <table width="545">
                        <tr>
                            <td align="center" nowrap>
                                <asp:Label ID="Msg" CssClass="NormalRed" runat="server"></asp:Label></td>
                        </tr>
                    </table>

                    <asp:Panel ID="pnlInwardCheque" runat="server">
                        <table border="0" cellpadding="0" cellspacing="4">
                            <tr>
                                <td>
                                    <a href="#" onclick="ViewCheck(0)">
                                        <asp:Image ID="FrontImage" BorderWidth="1" BorderColor="Black" runat="Server" Width="540" Height="225" /></a></td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="#" onclick="ViewCheck(1)">
                                        <asp:Image ID="BackImage" BorderWidth="1" BorderColor="Black" runat="Server" Width="540" Height="225" /></a></td>
                            </tr>
                        </table>
                        <table border="0" cellpadding="0" cellspacing="3">
                            <tr>
                                <td>
                                    <asp:Button ID="RetrunBtn" runat="server" Text="Return to Maker" CssClass="inputlt" Width="135" Height="22px" OnClick="ReturnBtn_Click" /></td>
                                <td width="4"></td>
                                <td>
                                    <asp:TextBox ID="TextBox1" Width="263" runat="server" MaxLength="80" Text="Enter Return Reason Here..."></asp:TextBox></td>
                                <td width="4"></td>
                                <td>
                                    <asp:Button ID="SaveBtn" runat="server" Text="To Admin" CssClass="inputlt" Width="135" Height="22px" OnClick="SaveBtn_Click" /></td>
                            </tr>
                        </table>
                    </asp:Panel>
                    <!---------------END CENTER PANE-------------->
                </td>
                <td valign="top">
                    <!---------------RIGHT PANE------------------>
                    <table border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td>
                                <asp:DropDownList ID="ClearingTypeList" runat="server" Enabled="false">
                                    <asp:ListItem Text="All" Value="0"></asp:ListItem>
                                    <asp:ListItem Text="HV" Value="19"></asp:ListItem>
                                    <asp:ListItem Text="RV" Value="11"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="NormalBold">TC&nbsp;<asp:TextBox ID="TransactionCode" Enabled="false" runat="server" Width="40px" CssClass="inputltDisabled" MaxLength="2"></asp:TextBox></td>
                        </tr>
                    </table>
                    <table border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <asp:ListBox ID="CBSActList" OnSelectedIndexChanged="CBSActList_SelectedIndexChanged" AutoPostBack="true" runat="server" Style="width: 285px; height: 70px" DataTextField="CUSTNAME" DataValueField="IMAGEID" />
                                <a href="javascript:ViewSignature('<%=CBSActNo%>','<%= sigImageId %>');" style="border-color: black">
                                    <img id="SignatureImage" runat="server" style="width: 280px; height: 70px" alt="Signature" />
                                </a>
                            </td>
                        </tr>
                    </table>
                    <div style="height: 80px; overflow: auto">
                        <table bgcolor="white" height="78px" class="DarkBorderTable" cellpadding="1">
                            <tr>
                                <td>
                                    <asp:Label ID="lblBalanceInfo" runat="server" CssClass="NormalRed"></asp:Label></td>
                            </tr>
                            <tr>
                                <td class="Normal" valign="top">Special Instructions</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblSPINST" runat="server" CssClass="NormalSmallBlue"></asp:Label></td>
                                <td>
                            </tr>
                        </table>
                    </div>
                    <table bgcolor="white" class="DarkBorderTable" cellpadding="2">
                        <tr>
                            <td class="Normal" valign="top">Maker:
                                <asp:Label ID="Maker" runat="server" CssClass="NormalBlue"></asp:Label></td>
                        </tr>
                        <tr>
                            <td class="Normal">Maker's Action:
                                <asp:Label ID="ReturnReason" runat="server" CssClass="NormalBlue"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="Normal">Attention:
                                <asp:Label ID="SysMessage" runat="server" CssClass="NormalRed"></asp:Label></td>
                        </tr>
                        <tr>
                            <td class="Normal">Rejected Reason:
                                <asp:Label ID="RejectedReason" runat="server" CssClass="NormalRed"></asp:Label></td>
                        </tr>
                    </table>
                    <input type="hidden" id="CheckID" runat="server" />
                    <!---------------END RIGHT PANE-------------->
                </td>
            </tr>

        </table>

    </form>
</body>
</html>
