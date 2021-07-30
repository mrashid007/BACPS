<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MonthlyCharges.aspx.cs" Inherits="FloraSoft.MonthlyCharges" %>
<%@ Register Src="modules/AdminReportViewer.ascx" TagName="AdminReportViewer" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Today's Settlement Report: Flora Limited</title>
    <link href="includes/sitec.css" rel="stylesheet" type="text/css" /> 
</head>
<body topmargin="0" leftmargin="0">
    <form id="form1" runat="server">
     <uc1:AdminReportViewer ID="AdminReportViewer1" runat="server" /><br />
     <table align="left" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td width="20" rowspan="3"></td>
            <td colspan="7" align="center" class="Head">Monthly Charges Report (Net Summary)</td>
       </tr>
        <tr>
           <td>
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
                </asp:dropdownlist>
            </td>
            <td width="10"></td>
            <td>
           </td>
            <td width="10"></td>
           <td>
              <asp:DropDownList ID="ReportTypeList" runat="server">
                    <asp:ListItem Text="Bankwise" Value="true"></asp:ListItem>
                    <asp:ListItem Text="Branchwise" Value="false"></asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="ClearingTypeList" runat="server">
                    <asp:ListItem Text="Reg"  Value="0"></asp:ListItem>
                    <asp:ListItem Text="HV"   Value="1"></asp:ListItem>
                    <asp:ListItem Text="All"  Value="2"></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td width="10"></td>
            <td width="30"><asp:ImageButton ID="FindBtn" runat="server" ImageUrl="Images/monitor_01.gif" OnClick="FindBtn_Click" /></td>
            <td width="30"><asp:LinkButton ID="ExportToPdfBtn" ToolTip="PDF" CssClass="CommandButton" runat="server" Text="<img src='images/PDFIcon.gif' border='0'/>" OnClick="ExportToPdfBtn_Click"></asp:LinkButton></td>
            <td width="30"><asp:LinkButton ID="ExcelBtn" ToolTip="Excel" runat="server" CssClass="CommandButton" Text="<img src='images/Excel.jpg' border='0'/>" OnClick="ExcelBtn_Click"></asp:LinkButton></td>
            <td width="30"></td>
       </tr>
        <tr>
            <td colspan="10">
               <asp:DataGrid ID="SettlementGrid" runat="server"  
                    AlternatingItemStyle-BackColor="lightyellow"
                    AutoGenerateColumns="false" BorderWidth="0px" 
                    CellPadding="6" CellSpacing="1" Width="770px"
                    FooterStyle-CssClass="GrayBackWhiteFont" GridLines="None"
                    HeaderStyle-CssClass="GrayBackWhiteFont" Height="0px" 
                    ItemStyle-BackColor="White"
                    ItemStyle-CssClass="NormalSmall" FooterStyle-HorizontalAlign="Right"  
                    ShowFooter="true">
                   <Columns>
                       <asp:BoundColumn  DataField = "Name"      HeaderText="Name"      ItemStyle-Width = "150px"   ItemStyle-Wrap ="false" HeaderStyle-HorizontalAlign="Center"  />
                       <asp:BoundColumn  DataField = "CNT"       HeaderText="Count"     ItemStyle-Width = "50px"    ItemStyle-Wrap ="false" HeaderStyle-HorizontalAlign="Center"  ItemStyle-HorizontalAlign="Right" />
                       <asp:BoundColumn  DataField = "CheckAmount" HeaderText="OCE"     ItemStyle-Width = "100px"   ItemStyle-Wrap ="false" HeaderStyle-HorizontalAlign="Center"  ItemStyle-HorizontalAlign="Right" DataFormatString="{0:F2}" />
                       <asp:BoundColumn  DataField = "Charge"    HeaderText="Bank"    ItemStyle-Width = "100px"   ItemStyle-Wrap ="false" HeaderStyle-HorizontalAlign="Center"  ItemStyle-HorizontalAlign="Right" DataFormatString="{0:F2}" />
                       <asp:BoundColumn  DataField = "BBCharge"  HeaderText="BB"        ItemStyle-Width = "100px"   ItemStyle-Wrap ="false" HeaderStyle-HorizontalAlign="Center"  ItemStyle-HorizontalAlign="Right" DataFormatString="{0:F2}" />
                       <asp:BoundColumn  DataField = "VAT"       HeaderText="VAT"       ItemStyle-Width = "100px"   ItemStyle-Wrap ="false" HeaderStyle-HorizontalAlign="Center"  ItemStyle-HorizontalAlign="Right" DataFormatString="{0:F2}" />
                       <asp:BoundColumn  DataField = "Debit"    HeaderText="Debit"    ItemStyle-Width = "100px"   ItemStyle-Wrap ="false" HeaderStyle-HorizontalAlign="Center"  ItemStyle-HorizontalAlign="Right" DataFormatString="{0:F2}" />
                   </Columns>
                 </asp:DataGrid>
                <asp:Label ID="Msg" CssClass="NormalRed" runat="server" Text=""></asp:Label>
            </td>
         </tr>
        </table>
    </form>
</body>
</html>

