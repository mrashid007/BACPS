<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetailedSettlement.aspx.cs" Inherits="FloraSoft.DetailedSettlement" %>
<%@ Register Src="modules/CommonHeader.ascx" TagName="CommonHeader" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Today's Settlement Report: Flora Limited</title>
    <link href="includes/sitec.css" rel="stylesheet" type="text/css" /> 
    <script>
	function ViewCheck0(checkid)
	{
	    var str = 'ViewArcOCECheck.aspx?CheckID='+checkid + '&ViewSide=0';
	    var str1= 'scrollbars=no,width=950,height=470,left=20,top=10'
	    if(document.getElementById("EnvelopList").selectedIndex != 0)
	    {
		    str = 'ViewArcICECheck.aspx?CheckID='+checkid+'&ViewSide=0';
		    str1=  'scrollbars=no,width=950,height=470,left=20,top=10';
		}
		window.open(str,'CheckImage',str1);
	}
	function ViewCheck1(checkid)
	{
	    var str = 'ViewArcOCECheck.aspx?CheckID='+checkid + '&ViewSide=1';
	    var str1= 'scrollbars=no,width=950,height=470,left=20,top=10'
	    if(document.getElementById("EnvelopList").selectedIndex != 0)
	    {
		    str = 'ViewArcICECheck.aspx?CheckID='+checkid+ '&ViewSide=1';;
		    str1=   'scrollbars=no,width=950,height=470,left=20,top=10';
		}
		window.open(str,'CheckImage',str1);
	}
    </script>
</head>
<body topmargin="0" leftmargin="0">
    <form id="form1" runat="server">
     <uc1:CommonHeader ID="CommonHeader1" runat="server" /><br />
     <table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td width="20" rowspan="3"></td>
            <td class="Head" align="Center" colspan="3">Detailed Settlement Report</td>
       </tr>
        <tr>
            <td align="center">
                <table border="0" cellpadding="0" cellspacing="5">
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
                        </td>                        
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
                        </td>
                        <td>
                            <asp:dropdownlist id="ChkYear" Runat="server">
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
                       <td><asp:DropDownList ID="ddlBankList" Visible="false" runat="server" DataTextField="BankName" DataValueField="BankCode" /></td>
                        <td>
                                <asp:DropDownList ID="CurrencyList" runat="server" Enabled="true" AutoPostBack="true" OnSelectedIndexChanged="CurrencyList_SelectedIndexChanged">
                                    <asp:ListItem Text="BDT"></asp:ListItem>
                                    <asp:ListItem Text="USD"></asp:ListItem>
                                    <asp:ListItem Text="GBP"></asp:ListItem>
                                    <asp:ListItem Text="EUR"></asp:ListItem>
                                    <asp:ListItem Text="CAD"></asp:ListItem>
                                    <asp:ListItem Text="JPY"></asp:ListItem>
                                </asp:DropDownList>
                        </td>
                     </tr>
                </table>
            </td>
       </tr>
        <tr>
            <td align="center">
                <table border="0" cellpadding="0" cellspacing="5">
                    <tr>
                       <td>
                            <asp:DropDownList ID="EnvelopList" runat="server">
                                <asp:ListItem Text="Outward" Value="false"></asp:ListItem>
                                <asp:ListItem Text="Inward"  Value="true"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:DropDownList ID="ClearingTypeList" runat="server" >
                                <asp:ListItem Text="RV" Value="false"></asp:ListItem>
                                <asp:ListItem Text="HV" Value="true"></asp:ListItem>
                           </asp:DropDownList>
                        </td>
                        <td>
                            <asp:DropDownList ID="ReturnTypeList" runat="server">
                                <asp:ListItem Text="All" Value="0"></asp:ListItem>
                                <asp:ListItem Text="Approved" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Returned" Value="2"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td width="40"></td>
                        <td><asp:DropDownList ID="BankList" Width="150px" runat="server" DataTextField="BankName" DataValueField="BankCode"></asp:DropDownList></td>
                        <td><asp:DropDownList ID="BranchList"  Width="125px" runat="server" DataTextField="BranchName" DataValueField="RoutingNo" /></td>
                        <td>
                           <asp:DropDownList ID="TCList" runat="server" Width="150px" DataTextField="TransactionCode" DataValueField="TransCode">
                           </asp:DropDownList>
                        </td>
                        <td width="30"><asp:ImageButton ID="FindBtn" runat="server" ImageUrl="Images/monitor_05.gif" OnClick="FindBtn_Click" /></td>
                        <td width="20"><asp:LinkButton ID="ExportToPdfNoChargeBtn" ToolTip="PDF" CssClass="CommandButton" runat="server" Text="<img src='images/PDFIcon.gif' border='0'/>" OnClick="ExportToPdfNoChargeBtn_Click" ></asp:LinkButton></td>
                        <td width="30"><asp:LinkButton ID="ExcelBtn" ToolTip="Excel" runat="server" CssClass="CommandButton" Text="<img src='images/Excel.jpg' border='0'/>" OnClick="ExcelBtn_Click"></asp:LinkButton></td>
                        <td width="30"><asp:LinkButton ID="InwardDuplicate" ToolTip="Today's Inward Duplicate" runat="server" CssClass="CommandButton" Text="<img src='images/duplicate.png' height='25' border='0'/>" OnClick="InwardDuplicate_Click"></asp:LinkButton></td>
                        <td width="40"><asp:LinkButton ID="ImageBtn" ToolTip="Print Return Vouchers" runat="server" CssClass="CommandButton" Text="<img src='images/Check.jpg' height='20' border='1'/>" OnClick="ImageBtn_Click"></asp:LinkButton></td>
                         <td width="40"><a href="OnlineCheckList.aspx" target="_new">Online Cheques</a></td>
                    </tr>
                </table>
            </td>
       </tr>
     </table>
     <table>
        <tr>
            <td width="18"></td>
            <td>
                <!------------------------------------>
                 <asp:GridView ID="SettlementGrid" runat="server"  
                    AlternatingRowStyle-BackColor="lightyellow"
                    AutoGenerateColumns="false" BorderWidth="0px" 
                    CellPadding="5" CellSpacing="2"
                    FooterStyle-CssClass="GrayBackWhiteFont" GridLines="None" 
                    FooterStyle-HorizontalAlign="right"
                    HeaderStyle-CssClass="GrayBackWhiteFont" Height="0px" 
                    RowStyle-BackColor="White"
                    RowStyle-CssClass="NormalSmall"  
                    ShowFooter="true" AllowPaging="True" PageSize="100" PagerStyle-VerticalAlign="top" OnPageIndexChanging="SettlementGrid_PageIndexChanging">
                   <Columns>
                      <ASP:TemplateField HeaderText="Front" FooterStyle-CssClass="red">
                            <ItemTemplate>
                                <a href="javascript:ViewCheck0('<%#DataBinder.Eval(Container.DataItem, "CheckID")%>')">View</a>
                            </ItemTemplate>
                      </ASP:TemplateField>
                      <ASP:TemplateField HeaderText="Back" FooterStyle-CssClass="red">
                            <ItemTemplate>
                                <a href="javascript:ViewCheck1('<%#DataBinder.Eval(Container.DataItem, "CheckID")%>')">View</a>
                            </ItemTemplate>
                      </ASP:TemplateField>                 
                      <asp:BoundField DataField = "Run"                HeaderText="Run"                ItemStyle-Wrap ="false"  ItemStyle-HorizontalAlign="Left"   HeaderStyle-Wrap="False" />       
                      <asp:BoundField DataField = "Bankname"           HeaderText="Bank"               ItemStyle-Wrap ="false"  ItemStyle-HorizontalAlign="Left"   HeaderStyle-Wrap="False" />       
                      <asp:BoundField DataField = "BranchName"         HeaderText="Branch"             ItemStyle-Wrap ="false"  ItemStyle-HorizontalAlign="Left"   HeaderStyle-Wrap="False" />       
                      <asp:BoundField DataField = "PresRoutingNo"      HeaderText="Pres Routing No"    ItemStyle-Wrap ="false"  ItemStyle-HorizontalAlign="Right"  HeaderStyle-Wrap="False" />       
                      <asp:BoundField DataField = "CheckRoutingNo"     HeaderText="Check RoutingNo"    ItemStyle-Wrap ="false"  ItemStyle-HorizontalAlign="Right"  HeaderStyle-Wrap="False" />       
                      <asp:BoundField DataField = "CheckActNo"         HeaderText="Check ActNo"        ItemStyle-Wrap ="false"  ItemStyle-HorizontalAlign="Right"  HeaderStyle-Wrap="False" />       
                      <asp:BoundField DataField = "CheckSLNo"          HeaderText="Check SLNo"         ItemStyle-Wrap ="false"  ItemStyle-HorizontalAlign="Right"  HeaderStyle-Wrap="False" />       
                      <asp:BoundField DataField = "CheckTransCode"     HeaderText="Check TC"           ItemStyle-Wrap ="false"  ItemStyle-HorizontalAlign="Right"  HeaderStyle-Wrap="False" />       
                      <asp:BoundField DataField = "CheckAmount"        HeaderText="CheckAmount"        ItemStyle-Wrap ="false"  ItemStyle-HorizontalAlign="Right"  HeaderStyle-Wrap="False" DataFormatString="{0:F2}" />       
                      <asp:BoundField DataField = "BenefActNo"         HeaderText="Beneficiary"        ItemStyle-Wrap ="false"  ItemStyle-HorizontalAlign="Left"   HeaderStyle-Wrap="False" />           
                      <asp:BoundField DataField = "ReturnReason"       HeaderText="Return Reason"      ItemStyle-Wrap ="false"  ItemStyle-HorizontalAlign="Left"   HeaderStyle-Wrap="False" />           
                      <asp:BoundField DataField = "Charge"             HeaderText="Bank"               ItemStyle-Wrap ="false"  ItemStyle-HorizontalAlign="Left"   HeaderStyle-Wrap="False" />           
                      <asp:BoundField DataField = "BBCharge"           HeaderText="B.B"                ItemStyle-Wrap ="false"  ItemStyle-HorizontalAlign="Left"   HeaderStyle-Wrap="False" />           
                      <asp:BoundField DataField = "VAT"                HeaderText="Vat"                ItemStyle-Wrap ="false"  ItemStyle-HorizontalAlign="Left"   HeaderStyle-Wrap="False" />           
                      <asp:BoundField DataField = "Debit"              HeaderText="Debit"              ItemStyle-Wrap ="false"  ItemStyle-HorizontalAlign="Left"   HeaderStyle-Wrap="False" />           
                      <asp:BoundField DataField = "CBSResponse"        HeaderText="CBSResponse"     ItemStyle-Wrap ="false"  ItemStyle-HorizontalAlign="Left"   HeaderStyle-Wrap="False" />           
                      <asp:BoundField DataField = "CBSReferenceNo"     HeaderText="CBSReferenceNo"     ItemStyle-Wrap ="false"  ItemStyle-HorizontalAlign="Left"   HeaderStyle-Wrap="False" />           
                      <asp:BoundField DataField = "ErrorCode"          HeaderText="ErrorCode"          ItemStyle-Wrap ="false"  ItemStyle-HorizontalAlign="Left"   HeaderStyle-Wrap="False" />           
                      <asp:BoundField DataField = "CBSResponseRtn"     HeaderText="CBSResponseRtn"     ItemStyle-Wrap ="false"  ItemStyle-HorizontalAlign="Left"   HeaderStyle-Wrap="False" />           
                 
                   </Columns>
                 <PagerSettings PageButtonCount="80" Mode="Numeric" />
                 <PagerStyle  CssClass="PagerStyle"></PagerStyle>
                 </asp:GridView>

                <asp:Label ID="Msg" CssClass="NormalRed" runat="server" Text=""></asp:Label>
                <!------------------------------------>
            </td>
        </tr>
     </table>
    </form>
</body>
</html>

