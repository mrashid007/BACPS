<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManualInward.aspx.cs" Inherits="FloraSoft.ManualInward" %>
<%@ Register Src="modules/AdminHeader.ascx" TagName="AdminHeader" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Manual Inward</title>
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
     <uc1:AdminHeader ID="AdminHeader1" runat="server" />
     <div class="Head" align="center">Update Inward Manually</div>
     <table>
        <tr>
            <td width="70"></td>
            <td>
            <!---------------------------------------------------------------->
                <table>
                    <tr>
                        <td colspan="2">
                            <asp:DropDownList ID="BranchList"        runat="server" DataTextField="BranchName"    DataValueField="RoutingNo" AutoPostBack="true"></asp:DropDownList>
                            <asp:DropDownList ID="ClearingTypeList" runat="server" AutoPostBack="true">
                                <asp:ListItem Text="RV" Value="11"></asp:ListItem>
                                <asp:ListItem Text="HV" Value="19"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td width="50"></td>
                        <td>
                            <asp:DropDownList ID="StartSLList" runat="server"  AutoPostBack="true" Visible="false">
                                <asp:ListItem Text="1"></asp:ListItem>
                                <asp:ListItem Text="1001"></asp:ListItem>
                                <asp:ListItem Text="2001"></asp:ListItem>
                                <asp:ListItem Text="3001"></asp:ListItem>
                                <asp:ListItem Text="4001"></asp:ListItem>
                                <asp:ListItem Text="5001"></asp:ListItem>
                                <asp:ListItem Text="6001"></asp:ListItem>
                                <asp:ListItem Text="7001"></asp:ListItem>
                                <asp:ListItem Text="8001"></asp:ListItem>
                                <asp:ListItem Text="9001"></asp:ListItem>
                                <asp:ListItem Text="10001"></asp:ListItem>
                                <asp:ListItem Text="11001"></asp:ListItem>
                                <asp:ListItem Text="12001"></asp:ListItem>
                                <asp:ListItem Text="13001"></asp:ListItem>
                                <asp:ListItem Text="14001"></asp:ListItem>
                                <asp:ListItem Text="15001"></asp:ListItem>
                                <asp:ListItem Text="16001"></asp:ListItem>
                                <asp:ListItem Text="17001"></asp:ListItem>
                                <asp:ListItem Text="18001"></asp:ListItem>
                                <asp:ListItem Text="19001"></asp:ListItem>
                                <asp:ListItem Text="20001"></asp:ListItem>
                                <asp:ListItem Text="21001"></asp:ListItem>
                                <asp:ListItem Text="22001"></asp:ListItem>
                                <asp:ListItem Text="23001"></asp:ListItem>
                                <asp:ListItem Text="24001"></asp:ListItem>
                                <asp:ListItem Text="25001"></asp:ListItem>
                                <asp:ListItem Text="26001"></asp:ListItem>
                                <asp:ListItem Text="27001"></asp:ListItem>
                                <asp:ListItem Text="28001"></asp:ListItem>
                                <asp:ListItem Text="29001"></asp:ListItem>
                                <asp:ListItem Text="30001"></asp:ListItem>
                                <asp:ListItem Text="31001"></asp:ListItem>
                                <asp:ListItem Text="32001"></asp:ListItem>
                                <asp:ListItem Text="33001"></asp:ListItem>
                                <asp:ListItem Text="34001"></asp:ListItem>
                                <asp:ListItem Text="35001"></asp:ListItem>
                                <asp:ListItem Text="36001"></asp:ListItem>
                                <asp:ListItem Text="37001"></asp:ListItem>
                                <asp:ListItem Text="38001"></asp:ListItem>
                                <asp:ListItem Text="39001"></asp:ListItem>
                                <asp:ListItem Text="40001"></asp:ListItem>
                                <asp:ListItem Text="41001"></asp:ListItem>
                                <asp:ListItem Text="42001"></asp:ListItem>
                                <asp:ListItem Text="43001"></asp:ListItem>
                                <asp:ListItem Text="44001"></asp:ListItem>
                                <asp:ListItem Text="45001"></asp:ListItem>
                                <asp:ListItem Text="46001"></asp:ListItem>
                                <asp:ListItem Text="47001"></asp:ListItem>
                                <asp:ListItem Text="48001"></asp:ListItem>
                                <asp:ListItem Text="49001"></asp:ListItem>
                                <asp:ListItem Text="50001"></asp:ListItem>
                          </asp:DropDownList>
                        </td>
                        <td align="center"><asp:LinkButton ID="ExportToPdfBtn" CssClass="CommandButton" runat="server" Visible="false" Text="Print Images " OnClick="ExportToPdfBtn_Click"></asp:LinkButton></td>
                        <td width="50"></td>
                        <!--<td colspan="2"><a href="ReturnBySLNo.aspx" class="CommandButton">Return By SL No.</a></td>-->
                        <td><asp:TextBox ID="TxtCheckSLNo" runat="server" MaxLength="7" ToolTip="Serial No" Width="50px" CssClass="inpult"></asp:TextBox></td>
                        <td>
                            <asp:DropDownList ID="SearchType" runat="server" AutoPostBack="true">
                                <asp:ListItem Text=" Check Serial No" Value="SERIAL"></asp:ListItem>
                                <asp:ListItem Text="Run No" Value="RUN"></asp:ListItem>
                            </asp:DropDownList>
                        </td>                        
                        <td width="50"><asp:LinkButton ID="FindBtn" runat="server" CssClass="CommandButton" Text="<img src='images/Search.gif' border=0>" ToolTip="Search by SL no." OnClick="FindBtn_Click"></asp:LinkButton></td>
                    </tr>
                 </table>
                <div style="position:relative;OVERFLOW: auto;WIDTH:1010px;HEIGHT: 385px;">
                <asp:DataGrid ID="BatchChecksGrid" runat="server"  
                    AlternatingItemStyle-BackColor="#FFFFFF"
                    AutoGenerateColumns="false" BorderWidth="0px" Height="0px"
                    CellPadding="5" CellSpacing="1"
                    FooterStyle-CssClass="GrayBackWhiteFont" GridLines="None"
                    HeaderStyle-CssClass="GrayBackWhiteFont"
                    ItemStyle-BackColor="#dee9fc" Width="993px"
                    ItemStyle-CssClass="NormalSmall" DataKeyField="CheckID"  
                    ShowFooter="false" AllowPaging="false" PageSize="1000" OnPageIndexChanged="BatchChecksGrid_PageIndexChanged">
                   <Columns>
                      <asp:TemplateColumn HeaderText="Select" ItemStyle-Width="35px">
                        <ItemTemplate>
                            <asp:CheckBox ID="Check" runat="server" />
                        </ItemTemplate>
                      </asp:TemplateColumn>
                      <asp:TemplateColumn HeaderText="CheckSLNo" ItemStyle-Wrap="false"  ItemStyle-Width="55px">
                            <ItemTemplate>
                                <a href="ChangeInwardQueue.aspx?CheckID=<%#DataBinder.Eval(Container.DataItem, "CheckID")%>&QueueName=<%#DataBinder.Eval(Container.DataItem, "QueueName")%>"><%#DataBinder.Eval(Container.DataItem, "CheckSLNo")%></a>
                            </ItemTemplate>
                      </asp:TemplateColumn>                        
                      <asp:BoundColumn DataField = "Run"              HeaderText="Run"              ItemStyle-Wrap ="false"  HeaderStyle-Wrap="False" />       
                      <asp:BoundColumn DataField = "BranchName"       HeaderText="Branch"           ItemStyle-Wrap ="false"  HeaderStyle-Wrap="False" />       
                      <asp:BoundColumn DataField = "LockedBy"         HeaderText="Locked By"        ItemStyle-Wrap ="false"  HeaderStyle-Wrap="False"  DataFormatString="{0:d}" />       
                      <asp:BoundColumn DataField = "ClearingType"     HeaderText="Type"             ItemStyle-Wrap ="false"  HeaderStyle-Wrap="False" />       
                      <asp:BoundColumn DataField = "CheckActNo"       HeaderText="Account No."      ItemStyle-Wrap ="false"  HeaderStyle-Wrap="False" />       
                      <asp:BoundColumn DataField = "CheckTransCode"   HeaderText="TC"               ItemStyle-Wrap ="false"  HeaderStyle-Wrap="False" ItemStyle-HorizontalAlign="Right" />       
                      <asp:BoundColumn DataField = "CheckAmount"      HeaderText="Amount"           ItemStyle-Wrap ="false"  HeaderStyle-Wrap="False" ItemStyle-HorizontalAlign="Right" DataFormatString="{0:F2}" />       
                      <asp:BoundColumn DataField = "CBSResponseDB"    HeaderText="CBSResponseDB"    ItemStyle-Wrap ="false"  HeaderStyle-Wrap="False"  />       
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
                      <asp:BoundColumn DataField = "ReturnReason"    HeaderText="Return Reason" ItemStyle-Width="120px"            ItemStyle-Wrap ="false"  HeaderStyle-Wrap="False" />       
                      <asp:BoundColumn DataField = "QueueName"       HeaderText="Queue" ItemStyle-Width="50px"            ItemStyle-Wrap ="false"  HeaderStyle-Wrap="False" />       
                  </Columns>
                   <PagerStyle PageButtonCount="50" Position="TopAndBottom" HorizontalAlign="Left" CssClass="PagerStyle" Mode="NumericPages"></PagerStyle>
                </asp:DataGrid>
                </div>
                <table width="993px" border="0" class="GrayBackWhiteFont" cellpadding="5" height="20px" cellspacing="1">
                    <tr>
                        <td class="NormalBold" width="35px"><asp:Label ID="CheckReturned" runat="server"></asp:Label></td>
                        <td class="NormalBold" width="55px"><asp:Label ID="CheckCount" runat="server"></asp:Label></td>
                        <td width="910px"></td></tr>
               </table>
                <asp:Label ID="Msg" CssClass="NormalRed" runat="server" Text=""></asp:Label>
                <table>
                    <tr>
                        <td><asp:CheckBox id="CheckAll" runat="server" Text="Select All" CssClass="NormalBold" AutoPostBack="true" OnCheckedChanged="CheckAll_CheckedChanged" /></td>
                        <td width="50"></td>
                        <td><asp:DropDownList ID="ReturnReasonList" DataTextField="ReturnReason" DataValueField="ReturnCD" runat="Server" /></td>
                        <td width="50"></td>
                        <td><asp:Button ID="ReturnBtn"  Text="Return Selected" runat="server" CssClass="inputlt" OnClick="ReturnBtn_Click"  /></td>
                   </tr>
                </table>
            <!---------------------------------------------------------------->
         </td>
       </tr>
     </table>
    </form>
</body>
</html>

