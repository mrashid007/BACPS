<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IREList.aspx.cs" Inherits="FloraSoft.IREList" %>
<%@ Register Src="Modules/OCEBatchTree.ascx" TagName="OCEBatchTree" TagPrefix="uc2" %>
<%@ Register Src="modules/AdminOpManagerHeader.ascx" TagName="AdminOpManagerHeader" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>View IRE</title>
    <link href="includes/sitec.css" rel="stylesheet" type="text/css" /> 
    <script>
    	function ViewCheck(checkid, viewside)
		{
			var str = 'ViewOCECheck.aspx?CheckID='+checkid+'&ViewSide='+viewside;
			window.open(str,'CheckImage','scrollbars=no,width=950,height=470,left=20,top=10');
		}
    </script>
</head>
<body topmargin="0" leftmargin="0">
    <form id="form1" runat="server">
        <uc1:AdminOpManagerHeader ID="AdminOpManagerHeader1" runat="server" />
        <table width="100%">
           <tr>
               <td width="50"></td>
               <td valign="top">
                <!--------------------------------------->
                <div class="Head">IRE List</div>
                <!--------------------------------------->
                <table>
                    <tr>
                        <td><asp:DropDownList ID="BranchList" runat="server" DataTextField="BranchName" Width="200px" DataValueField="RoutingNo" AutoPostBack="true"></asp:DropDownList></td>
                        <td>                                
                            <asp:DropDownList ID="ClearingTypeList" runat="server" AutoPostBack="true">
                                <asp:ListItem Text="Reg" Value="31"></asp:ListItem>
                                <asp:ListItem Text="HV"  Value="39"></asp:ListItem>                                
                            </asp:DropDownList>
                        </td>
                        <td width="150"></td>
                        <td><asp:LinkButton ID="BtnUpdateMissingCheckID" CssClass="CommandButton" runat="server" Text="Match Checks" OnClick="BtnUpdateMissingCheckID_Click"></asp:LinkButton></td>
                   </tr>
                </table>
                <!--------------------------------------->
                <asp:DataGrid ID="IREGrid" runat="server"  
                    AlternatingItemStyle-BackColor="#ffffff"
                    AutoGenerateColumns="false" BorderWidth="0px" 
                    CellPadding="5" CellSpacing="1"
                    FooterStyle-CssClass="GrayBackWhiteFont" GridLines="None"
                    HeaderStyle-CssClass="GrayBackWhiteFont" Height="0px" 
                    ItemStyle-BackColor="#dee9fc" FooterStyle-HorizontalAlign="Center"
                    ItemStyle-CssClass="Normal"  
                    ShowFooter="true" AllowPaging="True" PageSize="700" OnPageIndexChanged="IREGrid_PageIndexChanged">
                   <Columns>
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
                      <asp:BoundColumn DataField = "Run"              HeaderText="Run"              ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" ItemStyle-HorizontalAlign="Center"  />       
                      <asp:BoundColumn DataField = "SettlementDate"   HeaderText="SettlementDate"   ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" ItemStyle-HorizontalAlign="Center"  />       
                      <asp:BoundColumn DataField = "BankName"         HeaderText="Bank"             ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" ItemStyle-HorizontalAlign="Left"  />       
                      <asp:BoundColumn DataField = "BranchName"       HeaderText="BranchName"       ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" ItemStyle-HorizontalAlign="Left"  />       
                      <asp:BoundColumn DataField = "PresRoutingNo"    HeaderText="PresRT No."       ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" ItemStyle-HorizontalAlign="Center"   />       
                      <asp:BoundColumn DataField = "CheckRoutingNo"   HeaderText="CheckRT No."      ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" ItemStyle-HorizontalAlign="Center"   />       
                      <asp:BoundColumn DataField = "CheckActNo"       HeaderText="CheckAct No."     ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" ItemStyle-HorizontalAlign="Right"  />       
                      <asp:BoundColumn DataField = "CheckSLNo"        HeaderText="CheckSL No."      ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" ItemStyle-HorizontalAlign="Right"  />       
                      <asp:BoundColumn DataField = "CheckAmount"      HeaderText="CheckAmount"      ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" ItemStyle-HorizontalAlign="Right" DataFormatString="{0:F2}" />       
                      <asp:BoundColumn DataField = "ITemSeqNo"        HeaderText="Item SeqNo."      ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" ItemStyle-HorizontalAlign="Right"  />       
                      <asp:BoundColumn DataField = "RepInd"           HeaderText="RepInd"           ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" ItemStyle-HorizontalAlign="Center" />       
                      <asp:BoundColumn DataField = "ReturnCD"         HeaderText="ReturnCD"         ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" ItemStyle-HorizontalAlign="Center" />       
                      <asp:BoundColumn DataField = "Matched"          HeaderText="Matched"          ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" ItemStyle-HorizontalAlign="Center" />       
                      <asp:TemplateColumn HeaderText="Remove"         ItemStyle-Wrap="false">
                            <ItemTemplate>
                                <a href="RemoveIRE.aspx?IREID=<%#DataBinder.Eval(Container.DataItem, "IREID")%>"><%#DataBinder.Eval(Container.DataItem, "Removed")%></a>
                            </ItemTemplate>
                      </asp:TemplateColumn>                  
                   </Columns>
                   <PagerStyle PageButtonCount="50" Position="TopAndBottom" CssClass="PagerStyle" Mode="NumericPages"></PagerStyle>
               </asp:DataGrid>    
                <!--------------------------------------->
               </td>
            </tr>
        </table>
    </form>
</body>
</html>
