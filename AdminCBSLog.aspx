<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminCBSLog.aspx.cs" Inherits="FloraSoft.AdminCBSLog" %>

<%@ Register Src="modules/AdminHeader.ascx" TagName="AdminHeader" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Employee Activity</title>
    <link href="includes/sitec.css" rel="stylesheet" type="text/css" /> 
</head>
<body topmargin="0" leftmargin="0">
    <form id="form1" runat="server">
    <uc1:AdminHeader ID="AdminHeader1" runat="server" />
        <div class="Head" align="center">CBS Process Startup Log</div>        
        <div>
            <table align="center">
                <tr>
                    <td width="80"></td>
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
                        <asp:LinkButton ID="SearchBtn" Text="Search" CssClass="CommandButton" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td width="80"></td>
                    <td>
                        <!----------------------->
                        <asp:datagrid Id="AdminActivityGrid"
	                            HeaderStyle-CssClass="GrayBackWhiteFont"  FooterStyle-CssClass="GrayBackWhiteFont" 
	                            ItemStyle-CssClass="NormalSmall" ItemStyle-BackColor="#dee9fc"   
	                            AlternatingItemStyle-BackColor="#FFFFFF" runat="server" CellSpacing="1"  CellPadding="5" 
	                            autogeneratecolumns="true"  gridlines="None" borderwidth="0px" 
            	                ShowFooter="true"  Height="0px">
  	                    </asp:datagrid>
                        <!----------------------->
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

