<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InwardReview.aspx.cs" Inherits="FloraSoft.InwardReview" %>

<%@ Register Src="Modules/ICECheckStatus.ascx"  TagName="ICECheckStatus"    TagPrefix="uc3" %>
<%@ Register Src="Modules/ICEQueueList.ascx"    TagName="ICEQueueList"      TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Inward List</title>
    <link href="includes/sitec.css" rel="stylesheet" type="text/css" /> 
    <script>
    	function ViewCheck(checkid, viewside)
		{
			var str = 'ViewICECheck.aspx?CheckID='+checkid+'&ViewSide='+viewside;
			window.open(str,'CheckImage','scrollbars=no,width=950,height=470,left=20,top=150');
		}
    </script>
</head>
<body topmargin="0" leftmargin="0">
    <form id="form1" runat="server">
         <a href="BranchMenu.aspx"><img src="images/BACPSHeader.gif" width="1100" height="50" border="0"></a>
     <table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td width="200" valign="top">
               <table border="0" cellpadding="0" cellspacing="0">
                    <tr><td><uc2:ICEQueueList id="ICEQueueList1" runat="server" /></td></tr>
                    <tr><td><uc3:ICECheckStatus ID="ICECheckStatus1" runat="server" /></td></tr>
               </table>
            </td>
            <td width="840" valign="top">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td class="Head" width="50%">List of Inward Cheques for Review</td>
                        <td align="right" width="50%"><asp:Label ID="WelcomeMsg" runat="server" CssClass="NormalBold"></asp:Label></td>
                    </tr>
               <div class="Head" nowrap></div>
               <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td width="10"></td>
                        <td nowrap>
                            <asp:DropDownList ID="ClearingTypeList" runat="server" AutoPostBack="true">
                                <asp:ListItem Text="All" Value="0"></asp:ListItem>
                                <asp:ListItem Text="HV"  Value="19"></asp:ListItem>
                                <asp:ListItem Text="Reg" Value="11"></asp:ListItem>
                            </asp:DropDownList>
                               <asp:DropDownList ID="CurrencyList" runat="server" Enabled="true" AutoPostBack="true" OnSelectedIndexChanged="CurrencyList_SelectedIndexChanged">
                                    <asp:ListItem Text="All"></asp:ListItem>
                                    <asp:ListItem Text="BDT"></asp:ListItem>
                                    <asp:ListItem Text="USD"></asp:ListItem>
                                    <asp:ListItem Text="GBP"></asp:ListItem>
                                    <asp:ListItem Text="EUR"></asp:ListItem>
                                    <asp:ListItem Text="CAD"></asp:ListItem>
                                    <asp:ListItem Text="JPY"></asp:ListItem>
                                </asp:DropDownList>

                           <asp:DropDownList ID="TCList" Width="150" runat="server" AutoPostBack="true">
                                <asp:ListItem Text="Returned" Value="true"></asp:ListItem>
                                <asp:ListItem Text="Approved" Value="false"></asp:ListItem>
                           </asp:DropDownList>
                        </td>
                        <td width="10"></td>
                        <td width="30"><asp:Label ID="CheckCnt" runat="server" CssClass="NormalBold" /></td>
                        <td align="center"></td>
                        <td width="30"></td>
                        <td align="right"><asp:LinkButton ID="StartBtn" runat="server" CssClass="CommandButton" Visible="false" Text="Start All" OnClick="StartBtn_Click"></asp:LinkButton></td>
                        <td width="80"></td>
                        <td><asp:TextBox ID="SrchText" runat="server" Width="80px" CssClass="Inputlt"></asp:TextBox></td>
                        <td width="10px"></td>
                        <td><asp:LinkButton ID="SrchBtn" runat="server" CssClass="CommandButton" Text="Find"></asp:LinkButton></td>
                    </tr>
                </table>
               <!------------------------->
               <asp:DataGrid ID="BatchChecksGrid" runat="server"  
                    AlternatingItemStyle-BackColor="#FFFFFF"
                    AutoGenerateColumns="false" BorderWidth="0px" 
                    CellPadding="5" CellSpacing="1"
                    FooterStyle-CssClass="GrayBackWhiteFont" GridLines="None"
                    HeaderStyle-CssClass="GrayBackWhiteFont" Height="0px" 
                    ItemStyle-BackColor="#dee9fc" Width="100%"
                    ItemStyle-CssClass="NormalSmall"  
                    ShowFooter="true" AllowPaging="True" PageSize="50" OnPageIndexChanged="BatchChecksGrid_PageIndexChanged">
                   <Columns>
                      <asp:TemplateColumn HeaderText="SL No.">
                            <ItemTemplate>
                                <a href="ICEReview.aspx?CheckID=<%#DataBinder.Eval(Container.DataItem, "CheckID")%>"><%#DataBinder.Eval(Container.DataItem, "CheckSLNO")%></a>
                            </ItemTemplate>
                      </asp:TemplateColumn>
                      <asp:BoundColumn DataField = "BranchName"       HeaderText="Branch"           ItemStyle-Wrap ="false"  HeaderStyle-Wrap="False" />       
                      <asp:BoundColumn DataField = "LockedByName"     HeaderText="Locked By"        ItemStyle-Wrap ="false"  HeaderStyle-Wrap="False"  DataFormatString="{0:d}" />       
                      <asp:BoundColumn DataField = "ClearingType"     HeaderText="Type"             ItemStyle-Wrap ="false"  HeaderStyle-Wrap="False" />       
                      <asp:BoundColumn DataField = "CheckActNo"       HeaderText="Account No."      ItemStyle-Wrap ="false"  HeaderStyle-Wrap="False" />       
                      <asp:BoundColumn DataField = "CheckTransCode"   HeaderText="TC"               ItemStyle-Wrap ="false"  HeaderStyle-Wrap="False" ItemStyle-HorizontalAlign="Right" />       
                      <asp:BoundColumn DataField = "CheckAmount"      HeaderText="Amount"           ItemStyle-Wrap ="false"  HeaderStyle-Wrap="False" ItemStyle-HorizontalAlign="Right" DataFormatString="{0:F2}" />       
                      <ASP:TemplateColumn HeaderText="Front" FooterStyle-CssClass="red">
                            <ItemTemplate>
                                <a href="javascript:ViewCheck('<%#DataBinder.Eval(Container.DataItem, "CheckID")%>','0')">View</a>
                            </ItemTemplate>
                      </ASP:TemplateColumn>
                      <ASP:TemplateColumn HeaderText="Back" FooterStyle-CssClass="red">
                            <ItemTemplate>
                                <a href="javascript:ViewCheck('<%#DataBinder.Eval(Container.DataItem, "CheckID")%>','1')">View</a>
                            </ItemTemplate>
                      </ASP:TemplateColumn>                              
                      <asp:BoundColumn DataField = "ReturnReason"    HeaderText="Return Reason"             ItemStyle-Wrap ="false"  HeaderStyle-Wrap="False" />       
<%--                      <asp:BoundColumn DataField = "PPStatus"        HeaderText="PPay"    ItemStyle-Wrap ="false"  HeaderStyle-Wrap="False" />       --%>
                      <asp:BoundColumn DataField = "QueueName"       HeaderText="Queue"            ItemStyle-Wrap ="false"  HeaderStyle-Wrap="False" />       
                 </Columns>
                   <PagerStyle PageButtonCount="50" Position="TopAndBottom" CssClass="PagerStyle" Mode="NumericPages"></PagerStyle>
                </asp:DataGrid>
                <!------------------------->
            </td>
        </tr>
       </table> 
    </form>
</body>
</html>
