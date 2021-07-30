<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="FloraSoft.Search" %>
<%@ Register Src="modules/CommonHeader.ascx" TagName="CommonHeader" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title>Flora CPS: Search Check</title>
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
        <table>
            <tr>
                <td colspan="7" class="Head" align="center">Search Cheques</td>
            </tr>
            <tr><td style="width: 30px" align=right></td>
                <td><asp:DropDownList ID="TypeDrpdwn" runat="server">
                         <asp:ListItem Value="1">Outward</asp:ListItem>
                         <asp:ListItem Value="2">Inward</asp:ListItem>
                    </asp:DropDownList></td> 
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
                <td width="100"></td>
                <td align=right><asp:CheckBox ID="DateCheckbox" runat=server  /></td>
                <td class="NormalBold">Settlement Date</td>
                <td>
                    <table>
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
                        </tr>
                      </table>
                </td>
            </tr> 
            <tr><td align=right><asp:CheckBox ID="TCCheckbox" runat=server  /></td>
                <td class="NormalBold">Trans Code</td>
                <td>
                   <asp:DropDownList ID="TCList" runat="server" Width="200px" DataTextField="TransactionCode" DataValueField="TransCode"></asp:DropDownList>
                </td>
                <td width="100"></td>
                <td align=right><asp:CheckBox ID="AccCheckBox" runat="server"  /></td>
                <td class="NormalBold">Account</td>
                <td><asp:TextBox ID="AccTextBox" MaxLength="13" CssClass="inputlt" runat="server"></asp:TextBox></td>
            </tr>
            <tr><td align=right><asp:CheckBox ID="BranchCheckBox" runat="server"  /></td>
                <td class="NormalBold">Branch</td>
                <td><asp:DropDownList ID="BranchList" DataTextField="BranchName" DataValueField="RoutingNo" Width="200px"  runat="server"></asp:DropDownList></td>            
                <td width="100"></td>
                <td align=right><asp:CheckBox ID="SLNoCheckBox" runat="server" /></td>
                <td class="NormalBold">Cheque SL No.</td>
                <td><asp:TextBox ID="SLNoTextBox" CssClass="inputlt" runat="server" MaxLength="7"></asp:TextBox></td>
            </tr>  
            <tr>
                <td align=right><asp:CheckBox ID="NameCheckBox" runat="server"  /></td>
                <td class="NormalBold">Other Bank</td>
                <td><asp:DropDownList ID="NameDrpdwn" Width="200px" DataTextField="BankName" DataValueField="BankCode"  runat="server"></asp:DropDownList></td>                  
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
                 <td><asp:LinkButton ID="PrintBtn" runat="server" CssClass="CommandButton" BorderStyle="none" Text="Print Selected Images" OnClick="PrintBtn_Click"   /></td>
                 <td></td>
                 <td align="center"><asp:LinkButton ID="SearchBtn" runat="server" CssClass="CommandButton" BorderStyle="none" Text="Search" OnClick="LinkButton1_Click"   /></td>
                 <td></td>
                 <td align="Right" colspan="3"><asp:LinkButton ID="PrintListBtn" runat="server" CssClass="CommandButton" BorderStyle="none" Text="Print List" OnClick="PrintListBtn_Click" /></td>
             </tr>
       </table> 
        <table>
            <tr>
                <td width="30px"></td>
                <td>
                    <!----------------------------------->
                        <asp:DataGrid ID="MyDataGrid" runat="server"  AlternatingItemStyle-BackColor="#ffffff"
                            AutoGenerateColumns="false" BorderWidth="0px" CellPadding="5" CellSpacing="1"
                            FooterStyle-CssClass="GrayBackWhiteFont" FooterStyle-HorizontalAlign="Right" GridLines="None"
                            HeaderStyle-CssClass="GrayBackWhiteFont" Height="0px" ItemStyle-BackColor="#dee9fc"
                            ItemStyle-CssClass="NormalSmall"  
                            ShowFooter="true" DataKeyField="CheckID" 
                            AllowPaging="True" PageSize="400"  OnPageIndexChanged="MyDataGrid_PageIndexChanged">
                           <Columns>
                              <asp:TemplateColumn HeaderText="Select">
                                <ItemTemplate>
                                    <asp:CheckBox ID="Check" runat="server" />
                                </ItemTemplate>
                              </asp:TemplateColumn>
                              <ASP:TemplateColumn HeaderText="Front" FooterStyle-CssClass="red">
                                    <ItemTemplate>
	                                    <a href="javascript:ViewCheck('<%#DataBinder.Eval(Container.DataItem, "CheckID")%>',0)">View</a>
	                                </ItemTemplate>
	                          </ASP:TemplateColumn>
                              <ASP:TemplateColumn HeaderText="Back" FooterStyle-CssClass="red">
                                    <ItemTemplate>
	                                    <a href="javascript:ViewCheck('<%#DataBinder.Eval(Container.DataItem, "CheckID")%>',1)">View</a>
	                                </ItemTemplate>
	                          </ASP:TemplateColumn>
	                          <asp:BoundColumn DataField = "SettlementDate"     HeaderText="Setl. Date"         ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
	                          <asp:BoundColumn DataField = "CCY"                HeaderText="CCY"                ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
	                          <asp:BoundColumn DataField = "BranchName"         HeaderText="Branch"             ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
	                          <asp:BoundColumn DataField = "BankName"           HeaderText="Bank"               ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
	                          <asp:BoundColumn DataField = "PresRoutingNo"      HeaderText="Pres RoutingNo"     ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
	                          <asp:BoundColumn DataField = "RepInd"             HeaderText="Rep Ind"            ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
	                          <asp:BoundColumn DataField = "CheckRoutingNo"     HeaderText="ChequeRoutingNo"    ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
	                          <asp:BoundColumn DataField = "CheckActNo"         HeaderText="Cheque ActNo"       ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
	                          <asp:BoundColumn DataField = "CheckSLNo"          HeaderText="CheckSLNo"          ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
	                          <asp:BoundColumn DataField = "CheckTransCode"     HeaderText="Tran Code"          ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" ItemStyle-HorizontalAlign="right" />       
	                          <asp:BoundColumn DataField = "CheckAmount"        HeaderText="CheckAmount"        ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" DataFormatString="{0:F2}" ItemStyle-HorizontalAlign="right" />       
 	                          <asp:BoundColumn DataField = "ReturnReason"       HeaderText="Return Reason"      ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
                         </Columns>
                           <PagerStyle PageButtonCount="50" CssClass="PagerStyle" Mode="NumericPages"></PagerStyle>
                    </asp:DataGrid>
                    <!----------------------------------->
                </td>
            </tr>
        </table>
    </div>
    <asp:DataGrid ID="ExcelGrid" runat="server" Visible="false" ItemStyle-CssClass="NormalSmall" AutoGenerateColumns="false" HeaderStyle-CssClass="NormalSmall" ShowFooter="true">
        <Columns>
              <asp:BoundColumn DataField = "SettlementDate"     HeaderText="Settlement Date"    ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
 	          <asp:BoundColumn DataField = "CCY"                HeaderText="CCY"                ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
              <asp:BoundColumn DataField = "BranchName"         HeaderText="Branch Name"        ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
              <asp:BoundColumn DataField = "BankName"           HeaderText="Bank Name"          ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
              <asp:BoundColumn DataField = "PresRoutingNo"      HeaderText="Pres RoutingNo"     ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
              <asp:BoundColumn DataField = "RepInd"             HeaderText="Rep Ind"            ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
              <asp:BoundColumn DataField = "CheckRoutingNo"     HeaderText="Cheque RoutingNo"   ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
              <asp:BoundColumn DataField = "CheckActNo"         HeaderText="Cheque ActNo"       ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
              <asp:BoundColumn DataField = "CheckSLNo"          HeaderText="Cheque SLNo"        ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
              <asp:BoundColumn DataField = "CheckAmount"        HeaderText="Cheque Amount"      ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
              <asp:BoundColumn DataField = "StatusName"         HeaderText="Status"             ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
              <asp:BoundColumn DataField = "CBSResponse"        HeaderText="CBSResponse"        ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
              <asp:BoundColumn DataField = "CBSShadowResponse"  HeaderText="CBSShadowResponse"  ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
              <asp:BoundColumn DataField = "CBSReturnResponse"  HeaderText="CBSReturnResponse"  ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
        </Columns>
    </asp:DataGrid>
    </form>
    </body>
</html>
