<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReturnBySLNo.aspx.cs" Inherits="FloraSoft.ReturnBySLNo" %>

<%@ Register Src="modules/AdminHeader.ascx" TagName="AdminHeader" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Manual Import From CBS</title>
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
     <div class="Head" align="center">Return Inward by SL No.</div>
     <br /><br />
     <table>
        <tr>
            <td width="70"></td>
            <td>
            <!---------------------------------------------------------------->
                <table>
                    <tr>
                        <td width="100"></td>
                        <td class="NormalBold">Enter list of Cheque Serial Numbers separated by comma(,) or dash(-)<br />
                            Example: 1234568-2345678-9876543<br /><br />
                            <asp:TextBox ID="TxtCheckSLNo" runat="server" 
                                MaxLength="300" TextMode="MultiLine" Width="455px" Height="50px"
                                CssClass="inpult"></asp:TextBox></td>
                        <td width="10"></td>
                        <td width="50" valign="bottom"><asp:LinkButton ID="FindBtn" runat="server" CssClass="CommandButton" Text="<img src='images/Search.gif' border=0>"></asp:LinkButton></td>
                    </tr>
                 </table>
                <asp:DataGrid ID="BatchChecksGrid" runat="server"  
                    AlternatingItemStyle-BackColor="#FFFFFF"
                    AutoGenerateColumns="false" BorderWidth="0px" Height="0px"
                    CellPadding="5" CellSpacing="1"
                    FooterStyle-CssClass="GrayBackWhiteFont" GridLines="None"
                    HeaderStyle-CssClass="GrayBackWhiteFont"
                    ItemStyle-BackColor="#dee9fc" Width="993px"
                    ItemStyle-CssClass="NormalSmall" DataKeyField="CheckID"  
                    ShowFooter="false" AllowPaging="False" OnItemCommand="BatchChecksGrid_ItemCommand" >
                   <Columns>
                      <asp:TemplateColumn ItemStyle-Width="35px">
                        <ItemTemplate>
                            <asp:LinkButton ID="SaveBtn" runat="Server" CssClass="CommandButton" Text="Save"></asp:LinkButton>
                        </ItemTemplate>
                      </asp:TemplateColumn>
                      <asp:TemplateColumn HeaderText="Return Reason" ItemStyle-Width="35px">
                        <ItemTemplate>
                            <asp:DropDownList ID="RRList" DataSource='<%# ReturnReasons%>' runat="server" DataTextField="ReturnReason" DataValueField="ReturnCD" />
                        </ItemTemplate>
                      </asp:TemplateColumn>
                      <asp:TemplateColumn HeaderText="CheckSLNo" ItemStyle-Wrap="false"  ItemStyle-Width="55px">
                            <ItemTemplate>
                                <a href="ChangeInwardQueue.aspx?CheckID=<%#DataBinder.Eval(Container.DataItem, "CheckID")%>&QueueName=<%#DataBinder.Eval(Container.DataItem, "QueueName")%>"><%#DataBinder.Eval(Container.DataItem, "CheckSLNo")%></a>
                            </ItemTemplate>
                      </asp:TemplateColumn> 
                      <asp:BoundColumn DataField = "BranchName"       HeaderText="Branch"           ItemStyle-Wrap ="false"  HeaderStyle-Wrap="False" />       
                      <asp:BoundColumn DataField = "BankName"         HeaderText="Bank"             ItemStyle-Wrap ="false"  HeaderStyle-Wrap="False"  ItemStyle-HorizontalAlign="Left" />       
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
                      <asp:BoundColumn DataField = "QueueName"       HeaderText="Queue" ItemStyle-Width="50px"            ItemStyle-Wrap ="false"  HeaderStyle-Wrap="False" />       
                  </Columns>
                   <PagerStyle PageButtonCount="50" Position="TopAndBottom" HorizontalAlign="Left" CssClass="PagerStyle" Mode="NumericPages"></PagerStyle>
                </asp:DataGrid>
            <!---------------------------------------------------------------->
         </td>
       </tr>
     </table>
    </form>
</body>
</html>

