<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InwardActivityReport.aspx.cs" Inherits="FloraSoft.InwardActivityReport" %>
<%@ Register Src="modules/AdminReportViewer.ascx" TagName="AdminReportViewer" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Activity Report: Flora Limited</title>
    <link href="includes/sitec.css" rel="stylesheet" type="text/css" /> 
</head>
<body topmargin="0" leftmargin="0">
    <form id="form1" runat="server">
     <uc1:AdminReportViewer ID="AdminReportViewer1" runat="server" /><br />
     <table align="left" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td width="20" rowspan="3"></td>
            <td colspan="7" align="center" class="Head">Inward Activity Report</td>
       </tr>
        <tr>
           <td>
	            <asp:dropdownlist id="ChkDay" Runat="server">
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
	            </asp:dropdownlist>   
                <asp:dropdownlist id="ChkMonth" Runat="server">
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
                </asp:dropdownlist>
                <asp:dropdownlist id="ChkYear" Runat="server">
                    <asp:ListItem Value="2012">2012</asp:ListItem>
                    <asp:ListItem Value="2013">2013</asp:ListItem>
                    <asp:ListItem Value="2014">2014</asp:ListItem>
                    <asp:ListItem Value="2015">2015</asp:ListItem>
					<asp:ListItem Value="2016">2016</asp:ListItem>
					<asp:ListItem Value="2017">2017</asp:ListItem>
					<asp:ListItem Value="2018">2018</asp:ListItem>
					<asp:ListItem Value="2019">2019</asp:ListItem>
					<asp:ListItem Value="2020">2020</asp:ListItem>
                </asp:dropdownlist>
            </td>
            <td width="10"></td>
            <td>
           </td>
            <td width="10"></td>
           <td>
                <asp:DropDownList ID="ClearingTypeList" runat="server">
                    <asp:ListItem Text="Reg"  Value="11"></asp:ListItem>
                    <asp:ListItem Text="HV"   Value="19"></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td width="10"></td>
            <td width="30"><asp:ImageButton ID="FindBtn" runat="server" ImageUrl="Images/monitor_01.gif" OnClick="FindBtn_Click" /></td>
            <td width="30"><asp:LinkButton ID="ExcelBtn" ToolTip="Excel" runat="server" CssClass="CommandButton" Text="<img src='images/Excel.jpg' border='0'/>" OnClick="ExcelBtn_Click"></asp:LinkButton></td>
            <td width="30"></td>
       </tr>
        <tr>
            <td colspan="10">
                <asp:GridView ID="ActivityGrid" runat="server" AutoGenerateColumns="false" 
                    AlternatingRowStyle-BackColor="lightyellow"
                    BorderWidth="0px" CellPadding="6" CellSpacing="1"
                    FooterStyle-CssClass="GrayBackWhiteFont" GridLines="None"
                    HeaderStyle-CssClass="GrayBackWhiteFont" Height="0px"
                    RowStyle-BackColor="White" RowStyle-CssClass="Normal" 
                    FooterStyle-HorizontalAlign="Right" ShowFooter="true">
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="UserName,SettlementDate, ClearingType" DataNavigateUrlFormatString="EmployeeActivity.aspx?UserName={0}&SettlementDate={1}&ClearingType={2}" HeaderText="User" DataTextField="UserName" ItemStyle-Width="200px" FooterStyle-HorizontalAlign="Center" />
                        <asp:BoundField DataField="Maker" HeaderText="Maker" ItemStyle-Width="70px" ItemStyle-Wrap="false" HeaderStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right" />
                        <asp:BoundField DataField="Checker" HeaderText="Checker" ItemStyle-Width="70px" ItemStyle-Wrap="false" HeaderStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Right" />
                    </Columns>
                </asp:GridView>
                <asp:Label ID="Msg" CssClass="NormalRed" runat="server" Text=""></asp:Label>
            </td>
         </tr>
        </table>
    </form>
</body>
</html>

