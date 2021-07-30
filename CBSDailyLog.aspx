<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CBSDailyLog.aspx.cs" Inherits="FloraSoft.CBSDailyLog" %>
<%@ Register src="Modules/CommonHeader.ascx" tagname="CommonHeader" tagprefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>CBS Transaction Log</title>
    <link href="includes/sitec.css" rel="stylesheet" type="text/css" /> 
    <script>
    	function ViewCheck(checkid, viewside)
		{
			var str = 'ViewICECheck.aspx?CheckID='+checkid+'&ViewSide='+viewside;
			window.open(str,'CheckImage','scrollbars=no,width=950,height=470,left=20,top=10');
		}
    </script>
</head>
<body topmargin="0" leftmargin="0">
    <form id="form1" runat="server">
     <uc1:CommonHeader ID="CommonHeader1" runat="server" />
        <table>
            <tr>
                <td></td>
                <td class="Head" colspan="5">CBS Financial Log</td>
            </tr>
            <tr>
                <td width="100px"></td>
                <td style="height: 24px">
                    <asp:DropDownList ID="ChkDay" runat="server">
                        <asp:ListItem Value="01">01</asp:ListItem>
                        <asp:ListItem Value="02">02</asp:ListItem>
                        <asp:ListItem Value="03">03</asp:ListItem>
                        <asp:ListItem Value="04">04</asp:ListItem>
                        <asp:ListItem Value="05">05</asp:ListItem>
                        <asp:ListItem Value="06">06</asp:ListItem>
                        <asp:ListItem Value="07">07</asp:ListItem>
                        <asp:ListItem Value="08">08</asp:ListItem>
                        <asp:ListItem Value="09">09</asp:ListItem>
                        <asp:ListItem Value="10">10</asp:ListItem>
                        <asp:ListItem Value="11">11</asp:ListItem>
                        <asp:ListItem Value="12">12</asp:ListItem>
                        <asp:ListItem Value="13">13</asp:ListItem>
                        <asp:ListItem Value="14">14</asp:ListItem>
                        <asp:ListItem Value="15">15</asp:ListItem>
                        <asp:ListItem Value="16">16</asp:ListItem>
                        <asp:ListItem Value="17">17</asp:ListItem>
                        <asp:ListItem Value="18">18</asp:ListItem>
                        <asp:ListItem Value="19">19</asp:ListItem>
                        <asp:ListItem Value="20">20</asp:ListItem>
                        <asp:ListItem Value="21">21</asp:ListItem>
                        <asp:ListItem Value="22">22</asp:ListItem>
                        <asp:ListItem Value="23">23</asp:ListItem>
                        <asp:ListItem Value="24">24</asp:ListItem>
                        <asp:ListItem Value="25">25</asp:ListItem>
                        <asp:ListItem Value="26">26</asp:ListItem>
                        <asp:ListItem Value="27">27</asp:ListItem>
                        <asp:ListItem Value="28">28</asp:ListItem>
                        <asp:ListItem Value="29">29</asp:ListItem>
                        <asp:ListItem Value="30">30</asp:ListItem>
                        <asp:ListItem Value="31">31</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="ChkMonth" runat="server">
                        <asp:ListItem Value="01">Jan</asp:ListItem>
                        <asp:ListItem Value="02">Feb</asp:ListItem>
                        <asp:ListItem Value="03">Mar</asp:ListItem>
                        <asp:ListItem Value="04">Apr</asp:ListItem>
                        <asp:ListItem Value="05">May</asp:ListItem>
                        <asp:ListItem Value="06">Jun</asp:ListItem>
                        <asp:ListItem Value="07">Jul</asp:ListItem>
                        <asp:ListItem Value="08">Aug</asp:ListItem>
                        <asp:ListItem Value="09">Sep</asp:ListItem>
                        <asp:ListItem Value="10">Oct</asp:ListItem>
                        <asp:ListItem Value="11">Nov</asp:ListItem>
                        <asp:ListItem Value="12">Dec</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="ChkYear" runat="server">
                        <asp:ListItem Value="2017">2017</asp:ListItem>
                        <asp:ListItem Value="2018">2018</asp:ListItem>
                        <asp:ListItem Value="2019">2019</asp:ListItem>
                        <asp:ListItem Value="2020">2020</asp:ListItem>
                        <asp:ListItem Value="2021">2021</asp:ListItem>
                        <asp:ListItem Value="2022">2022</asp:ListItem>
                        <asp:ListItem Value="2023">2023</asp:ListItem>
                        <asp:ListItem Value="2024">2024</asp:ListItem>
                        <asp:ListItem Value="2025">2025</asp:ListItem>
                        <asp:ListItem Value="2026">2026</asp:ListItem>
                        <asp:ListItem Value="2027">2027</asp:ListItem>
                        <asp:ListItem Value="2028">2028</asp:ListItem>
                        <asp:ListItem Value="2029">2029</asp:ListItem>
                        <asp:ListItem Value="2030">2030</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ICETypeList" runat="server" OnSelectedIndexChanged="ICETypeList_SelectedIndexChanged" AutoPostBack="true">
                        <asp:ListItem Text="Outward" Value="OCE" />
                        <asp:ListItem Text="Inward" Value="ICE" />
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ECETypeList" runat="server">
                        <asp:ListItem Text="RV" Value="false"></asp:ListItem>
                        <asp:ListItem Text="HV" Value="true"></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td><asp:DropDownList ID="BranchList"  Width="125px" runat="server" DataTextField="BranchName" DataValueField="RoutingNo" /></td>
                <td>
                    <asp:DropDownList ID="EnvelopList" runat="server" DataTextField="Title" DataValueField="Envelop"  />
                </td>
                <td>
                    <asp:DropDownList ID="ErrorCDList" runat="server">
                        <asp:ListItem Text="All" Value="ALL"></asp:ListItem>
                        <asp:ListItem Text="SUCCESS" Value="SUCCESS"></asp:ListItem>
                        <asp:ListItem Text="FAILED" Value="FAILED"></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td width="100"><asp:LinkButton ID="FindButton" runat="server" Text="Find" CssClass="CommandButton" /></td>
                <td width="20"><asp:LinkButton ID="PdBtn" ToolTip="PDF" CssClass="CommandButton" runat="server" Text="<img src='images/PDFIcon.gif' border='0'/>" OnClick="PdBtn_Click"></asp:LinkButton></td>
                <td><asp:LinkButton ID="ExcelBtn" ToolTip="Excel" runat="server" CssClass="CommandButton" Text="<img src='images/Excel.jpg' border='0'/>" OnClick="ExcelBtn_Click"></asp:LinkButton></td>
            </tr>
            </table>
            <table>
                <tr>
                    <td width="100px"></td>
                    <td class="NormalBold">Total count: <asp:Label ID="TotalCnt" runat="server" /></td>
                    <td width="50"></td>
                    <td class="NormalBold">Total Amount: <asp:Label ID="TotalAmnt" runat="server" /></td>
                </tr>
             </table>
            <table>
            <tr>
                <td width="100px"></td>
                <td>
                    <!------------------------------------------------->
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
                    <!------------------------------>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
