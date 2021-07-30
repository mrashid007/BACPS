<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MIReports.aspx.cs" Inherits="FloraSoft.MIReports" %>
<%@ Register Src="modules/CommonHeader.ascx" TagName="CommonHeader" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title>Flora CPS: MI Reports</title>
    <link href="includes/sitec.css" rel="stylesheet" type="text/css" /> 
    <script>
	function ViewCheck(checkid, viewside)
	{
	    var str  = 'ViewArcOCECheck.aspx?ViewSide=' + viewside+'&CheckID='+ checkid;
	    if(document.getElementById("TypeDrpdwn").selectedIndex != 0)
	    {
		    str  = 'ViewArcICECheck.aspx?ViewSide=' + viewside+'&CheckID='+ checkid;
		}
		window.open(str,'CheckImage','scrollbars=no,width=950,height=470,left=20,top=10');
	}
    </script>
</head>
<body topmargin="0" leftmargin="0">
  <form id="form1" runat="server">
  <uc1:CommonHeader ID="CommonHeader1" runat="server" />
   <div>
        <table border="0">
            <tr>
                <td width="100px"></td>
                <td colspan="7" class="Head" align="center">MI Reports</td>
            </tr>
            <tr>
                <td width="100px"></td>
                <td colspan="3">
                    <asp:DropDownList ID="TypeDrpdwn" runat="server" AutoPostBack="true" OnSelectedIndexChanged="TypeDrpdwn_SelectedIndexChanged">
                         <asp:ListItem Value="OCE">Outward</asp:ListItem>
                         <asp:ListItem Value="ICE">Inward</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="CurrencyList" runat="server" Enabled="true" AutoPostBack="true" OnSelectedIndexChanged="CurrencyList_SelectedIndexChanged">
                        <asp:ListItem Text="BDT"></asp:ListItem>
                        <asp:ListItem Text="USD"></asp:ListItem>
                        <asp:ListItem Text="GBP"></asp:ListItem>
                        <asp:ListItem Text="EUR"></asp:ListItem>
                        <asp:ListItem Text="CAD"></asp:ListItem>
                        <asp:ListItem Text="JPY"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="HouseList" runat="server">
                        <asp:ListItem Value="false">RV</asp:ListItem>
                        <asp:ListItem Value="true">HV</asp:ListItem>
                    </asp:DropDownList>

                    <asp:CheckBox ID="ChargeCheckBox" runat="server" />
                    <asp:DropDownList ID="ChargeList" runat="server">
                        <asp:ListItem Value="1">Not Charged</asp:ListItem>
                        <asp:ListItem Value="0">Charged</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td width="100"></td>
                <td colspan="3">
                    <table>
                         <tr>
                            <td class="NormalBold">Start</td>                     
                            <td>
                                <asp:dropdownlist id="StartMonthList" Runat="server">
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
                            </td>
                            <td>
                                <asp:dropdownlist id="StartYearList" Runat="server">
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
                                </asp:dropdownlist>
                           </td>
                           <td width="22px"></td>
                           <td class="NormalBold">End</td>                     
                            <td>
                                <asp:dropdownlist id="EndMonthList" Runat="server">
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
                            </td>
                            <td>
                                <asp:dropdownlist id="EndYearList" Runat="server">
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
                                </asp:dropdownlist>
                            </td>

                        </tr>

                      </table>
                </td>
            </tr> 
            <tr>
                <td></td>
                <td align=right><asp:CheckBox ID="NameCheckBox" runat="server"  /></td>
                <td class="NormalBold">Other Bank</td>
                <td align="right"><asp:DropDownList ID="NameDrpdwn" Width="200px" DataTextField="BankName" DataValueField="BankCode"  runat="server"></asp:DropDownList></td>                  
                <td width="100"></td>
                <td align="right"><asp:CheckBox ID="AccCheckBox" runat="server"  /></td>
                <td class="NormalBold" width="130px" align="Left"><asp:Label id="ActTitle" runat="server" /></td>
                <td><asp:TextBox ID="AccTextBox" MaxLength="13" CssClass="inputlt" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td align="right"><asp:CheckBox ID="BranchCheckBox" runat="server"  /></td>
                <td class="NormalBold">Branch</td>
                <td align="right"><asp:DropDownList ID="BranchList" DataTextField="BranchName" DataValueField="RoutingNo" Width="200px"  runat="server"></asp:DropDownList></td>            
                <td width="100"></td>
                <td align="right"><asp:CheckBox ID="SLNoCheckBox" runat="server" /></td>
                <td class="NormalBold">Check Serial No</td>
                <td><asp:TextBox ID="SLNoTextBox" CssClass="inputlt" runat="server" MaxLength="7"></asp:TextBox></td>
            </tr>  
            <tr>
                <td></td>
                <td align="right"><asp:CheckBox ID="TCCheckbox" runat="server" /></td>
                <td class="NormalBold">Trans Code</td>
                <td align="right">
                   <asp:DropDownList ID="TCList" runat="server" Width="200px" DataTextField="TransactionCode" DataValueField="TransCode"></asp:DropDownList>
                </td>
                <td width="100"></td>
                <td align="right"><asp:CheckBox ID="AmountCheckBox" runat="server" /></td>
                <td class="NormalBold">Amount &nbsp;&nbsp;&nbsp; 
                    <asp:DropDownList ID="CompareList" runat="server">
                        <asp:ListItem Text="="></asp:ListItem>
                        <asp:ListItem Text=">"></asp:ListItem>
                        <asp:ListItem Text="<"></asp:ListItem>
                    </asp:DropDownList>
                 </td>
                <td><asp:TextBox ID="AmountTextBox" CssClass="inputlt" runat="server" MaxLength="14"></asp:TextBox></td>
            </tr>            

             <tr>
                 <td></td>
                 <td colspan="7">
                     <table bgcolor="#f8f8f8" class="inputlt" width="96%">
                         <tr class="Normal">
                             <td><asp:CheckBox ID="CkHV" runat="server" Text="Session" Checked="true" /></td>
                             <td><asp:CheckBox ID="CkSettlementDate" runat="server" Text="SettlementDate" Checked="true" /></td>
                             <td><asp:CheckBox ID="CkCCY" runat="server" Text="CCY" Checked="true" /></td>
                             <td><asp:CheckBox ID="CkBranch" runat="server" Text="Branch" Checked="true" /></td>
                             <td><asp:CheckBox ID="CkBank" runat="server" Text="Bank" Checked="true" /></td>
                             <td><asp:CheckBox ID="CkCheckSLNo" runat="server" Text="CheckSLNo" Checked="true" /></td>
                         </tr>
                         <tr class="Normal">
                             <td><asp:CheckBox ID="CkRepInd" runat="server" Text="RepInd" Checked="true" /></td>
                             <td><asp:CheckBox ID="CkPresRoutingNo" runat="server" Text="PresRoutingNo" /></td>
                             <td><asp:CheckBox ID="CkCheckRoutingNo" runat="server" Text="CheckRoutingNo" /></td>
                             <td><asp:CheckBox ID="CkBenefActNo" runat="server" Text="BenefActNo" Checked="true" /></td>                    
                             <td><asp:CheckBox ID="CkCheckActNo" runat="server" Text="CheckActNo" Checked="true" /></td>
                             <td><asp:CheckBox ID="CkCheckTransCode" runat="server" Text="CheckTransCode" Checked="true" /></td>
                         </tr>
                         <tr class="Normal">
                             <td><asp:CheckBox ID="CkCheckAmount" runat="server" Text="CheckAmount" Checked="true" /></td>
                             <td><asp:CheckBox ID="CkReturnCD" runat="server" Text="ReturnCD" /></td>
                             <td><asp:CheckBox ID="CkReturnReason" runat="server" Text="ReturnReason" Checked="true" /></td>
                             <td><asp:CheckBox ID="CkCharge" runat="server" Text="Charge" /></td>
                             <td><asp:CheckBox ID="CkVAT" runat="server" Text="VAT"  /></td>
                             <td><asp:CheckBox ID="CkBBCharge" runat="server" Text="BBCharge" /></td>                         
                         </tr>
                     </table>
                 </td>
             </tr>
             <tr>
                 <td colspan="3"></td>
                 <td align="center"><asp:LinkButton ID="SearchBtn" runat="server" CssClass="CommandButton" BorderStyle="none" Text="Search" OnClick="SearchBtn_Click"   /></td>
                 <td></td>
                 <td align="center" colspan="3"><asp:LinkButton ID="PrintListBtn" runat="server" CssClass="CommandButton" BorderStyle="none" Text="Excel" OnClick="PrintListBtn_Click"  /></td>
             </tr>
       </table> 

        <table>
            <tr>
                <td></td>
                <td class="NormalBold" align="right">Total Count:</td>
                <td class="NormalBold"><asp:Label ID="TotalCnt" runat="server" /></td>
                <td width="85"></td>
                <td class="NormalBold" align="right">Total Amount:</td>
                <td class="NormalBold"><asp:Label ID="TotalAmount" runat="server" /></td>
            </tr>
            <tr>
                <td width="100px"></td>
                <td colspan="5">
                    <!----------------------------------->
                        <asp:DataGrid ID="MyDataGrid" runat="server"  AlternatingItemStyle-BackColor="#ffffff"
                            AutoGenerateColumns="true" BorderWidth="0px" CellPadding="5" CellSpacing="1"
                            FooterStyle-CssClass="GrayBackWhiteFont" FooterStyle-HorizontalAlign="Right" GridLines="None"
                            HeaderStyle-CssClass="GrayBackWhiteFont" Height="0px" ItemStyle-BackColor="#dee9fc"
                            ItemStyle-CssClass="NormalSmall"  
                            ShowFooter="true" 
                            AllowPaging="True" PageSize="400"  OnPageIndexChanged="MyDataGrid_PageIndexChanged">
                           <PagerStyle PageButtonCount="50" CssClass="PagerStyle" Mode="NumericPages"></PagerStyle>
                    </asp:DataGrid>
                    <!----------------------------------->
                </td>
            </tr>
        </table>
    </div>
    </form>
    </body>
</html>
