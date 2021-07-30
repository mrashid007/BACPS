<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InwardCheckHistory.aspx.cs" Inherits="FloraSoft.InwardCheckHistory" %>
<%@ Register Src="modules/AdminHeader.ascx" TagName="AdminHeader" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Inward Cheque History</title>
    <link href="includes/sitec.css" rel="stylesheet" type="text/css" /> 
    <script>
    	function ViewCheck(checkid)
		{
			var str = 'ViewInwardCheck.aspx?CheckID='+checkid;
			window.open(str,'CheckImage','scrollbars=no,width=650,height=600,left=20,top=100');
		}

    </script>
</head>
<body topmargin="0" leftmargin="0">
    <form id="form1" runat="server">
        <uc1:AdminHeader ID="AdminHeader1" runat="server" />
    <div>
       <div class="Head" align="center">Inward Cheque History</div>
       <table>
        <tr>
            <td width="80"></td>
            <td>
                <!------------------------->
        <table>
            <tr>
                <td style="width: 83px" align="right"><asp:CheckBox ID="CheckBox1" runat="server" Checked="True" Enabled="False"  /></td>
                <td></td>
                <td>			                    
                    <asp:dropdownlist id="ChkMonth" Runat="server">
				                    <asp:ListItem Value="1">Jan</asp:ListItem>
				                    <asp:ListItem Value="2">Feb</asp:ListItem>
				                    <asp:ListItem Value="3">Mar</asp:ListItem>
				                    <asp:ListItem Value="4">Apr</asp:ListItem>
				                    <asp:ListItem Value="5">May</asp:ListItem>
				                    <asp:ListItem Value="6">Jun</asp:ListItem>
				                    <asp:ListItem Value="7">Jul</asp:ListItem>
				                    <asp:ListItem Value="8">Aug</asp:ListItem>
				                    <asp:ListItem Value="9">Sep</asp:ListItem>
				                    <asp:ListItem Value="10">Oct</asp:ListItem>
				                    <asp:ListItem Value="11">Nov</asp:ListItem>
				                    <asp:ListItem Value="12">Dec</asp:ListItem>
			        </asp:dropdownlist>
                	<asp:dropdownlist id="ChkYear" Runat="server">
				                    <asp:ListItem Value="2011">2011</asp:ListItem>
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
            </tr>   
            <tr><td align="right"><asp:CheckBox ID="DateCheckbox" runat="server"  /></td>
                <td class="NormalBold">Date</td>
                <td colspan="2">
                         <asp:dropdownlist id="ChkDay" Runat="server">
				                    <asp:ListItem Value="1">01</asp:ListItem>
				                    <asp:ListItem Value="2">02</asp:ListItem>
				                    <asp:ListItem Value="3">03</asp:ListItem>
				                    <asp:ListItem Value="4">04</asp:ListItem>
				                    <asp:ListItem Value="5">05</asp:ListItem>
				                    <asp:ListItem Value="6">06</asp:ListItem>
				                    <asp:ListItem Value="7">07</asp:ListItem>
				                    <asp:ListItem Value="8">08</asp:ListItem>
				                    <asp:ListItem Value="9">09</asp:ListItem>
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
            </tr>
            <tr><td style="width: 83px" align=right><asp:CheckBox ID="ChkUserID" runat="server"  /></td>
                <td class="NormalBold">Login ID</td>
                <td colspan="2"><asp:TextBox ID="TxtLoginID" MaxLength="20" CssClass="inputlt" runat="server"/></td>
            </tr>
            <tr><td style="width: 83px" align=right><asp:CheckBox ID="ChkAccount" runat="server"  /></td>
                <td class="NormalBold">Account</td>
                <td colspan="2"><asp:TextBox ID="TxtCheckActNo" MaxLength="13" CssClass="inputlt" runat="server"></asp:TextBox></td>
            </tr>
            <tr><td style="width: 83px" align=right><asp:CheckBox ID="ChkSLNo" runat="server" /></td>
                <td class="NormalBold">Cheque SL No</td>
                <td colspan="2">
                    <asp:TextBox ID="TxtCheckSLNo" CssClass="inputlt" runat="server" MaxLength="7"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
                <td><asp:LinkButton ID="SearchBtn" runat="server" CssClass="CommandButton" BorderStyle="none" Text="Search" OnClick="LinkButton1_Click"   /></td>
                <td></td>
                <td><asp:LinkButton ID="PrintBtn" runat="server" CssClass="CommandButton" BorderStyle="None" Text="Print" OnClick="PrintBtn_Click"></asp:LinkButton></td>
            </tr>
       </table> 
                <asp:DataGrid ID="ChecksGrid" runat="server"  
                    AlternatingItemStyle-BackColor="#FFFFFF"
                    AutoGenerateColumns="false" BorderWidth="0px" 
                    CellPadding="5" CellSpacing="1"
                    FooterStyle-CssClass="GrayBackWhiteFont" GridLines="None"
                    HeaderStyle-CssClass="GrayBackWhiteFont" Height="0px" 
                    ItemStyle-BackColor="#dee9fc" Width="100%"
                    ItemStyle-CssClass="NormalSmall"  
                    ShowFooter="true"  AllowPaging="True" PageSize="50" OnPageIndexChanged="ChecksGrid_PageIndexChanged">
                   <Columns>
                        <asp:BoundColumn DataField = "HistoryID"        HeaderText="HistoryID"      ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />
                        <asp:BoundColumn DataField = "HistoryTime"      HeaderText="HistoryTime"    ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />
                        <asp:BoundColumn DataField = "UserName"         HeaderText="User"         ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />
                        <asp:BoundColumn DataField = "ChangeDesc"       HeaderText="ChangeDesc"     ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />
                        <asp:BoundColumn DataField = "IPAddress"        HeaderText="IPAddress"      ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />
                        <asp:BoundColumn DataField = "CheckActNo"       HeaderText="Account No."         ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />
                        <asp:BoundColumn DataField = "CheckRoutingNo"   HeaderText="Routing No."         ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />
                        <asp:BoundColumn DataField = "CheckSLNo"       HeaderText="Serial No."         ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />
                        <asp:BoundColumn DataField = "ReturnCD"         HeaderText="ReturnCD"       ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />
                        <asp:BoundColumn DataField = "RejectedReason"   HeaderText="RejectedReason" ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />
                        <asp:BoundColumn DataField = "QueueName"        HeaderText="Queue"        ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />
                    </Columns>
                   <PagerStyle PageButtonCount="50" CssClass="PagerStyle" Mode="NumericPages"></PagerStyle>
              </asp:DataGrid>      
                <!------------------------->
            </td>
       </tr>
       </table>
    </div>
    </form>
</body>
</html>
