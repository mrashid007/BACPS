<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BranchChecks.aspx.cs" Inherits="FloraSoft.BranchChecks" %>
<%@ Register Src="Modules/OCEBatchTree.ascx" TagName="OCEBatchTree" TagPrefix="uc2" %>
<%@ Register Src="modules/CommonHeader.ascx" TagName="BranchHeader" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>View Batch Checks</title>
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
        <uc1:BranchHeader ID="BranchHeader1" runat="server" />
        <table width="100%">
           <tr>
               <td valign="top" colspan="2">
                    <uc2:OCEBatchTree ID="OCEBatchTree1" runat="server" />
                </td>
                <td valign="top">
                    <asp:Panel ID="BatchPanel" runat="server">
                       <div class="Head">Batch Cheques:&nbsp;[<asp:Label ID="BatchName" runat="server" />]</div>
                       <!------------------------------>
                       <asp:DataGrid ID="BatchChecksGrid" runat="server"  
                            AlternatingItemStyle-BackColor="#ffffff" Width="750px"
                            AutoGenerateColumns="false" BorderWidth="0px" 
                            CellPadding="5" CellSpacing="1"
                            FooterStyle-CssClass="GrayBackWhiteFont" GridLines="None"
                            HeaderStyle-CssClass="GrayBackWhiteFont" Height="0px" 
                            ItemStyle-BackColor="#dee9fc"
                            ItemStyle-CssClass="Normal"  
                            ShowFooter="true">
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
                              <asp:BoundColumn DataField = "BankName"         HeaderText="Bank"           ItemStyle-Wrap ="false"  HeaderStyle-Wrap="False" ItemStyle-HorizontalAlign="Left" />       
                              <asp:BoundColumn DataField = "CheckRoutingNo"   HeaderText="CheckRT No."    ItemStyle-Wrap ="True"  HeaderStyle-Wrap="False" ItemStyle-HorizontalAlign="Left"  />       
                              <asp:BoundColumn DataField = "CheckActNo"       HeaderText="CheckAct No."   ItemStyle-Wrap ="True"  HeaderStyle-Wrap="False" ItemStyle-HorizontalAlign="Right" />       
                              <asp:BoundColumn DataField = "CheckSLNo"        HeaderText="CheckSL No."    ItemStyle-Wrap ="True"  HeaderStyle-Wrap="False" ItemStyle-HorizontalAlign="Right"  />       
                              <asp:BoundColumn DataField = "CheckAmount"      HeaderText="CheckAmount"    ItemStyle-Wrap ="True"  HeaderStyle-Wrap="False" ItemStyle-HorizontalAlign="Right"  />       
                              <asp:BoundColumn DataField = "RepInd"           HeaderText="Rep."           ItemStyle-Wrap ="True"  HeaderStyle-Wrap="False" ItemStyle-HorizontalAlign="Right"  />       
                              <asp:BoundColumn DataField = "StatusName"       HeaderText="Status"         ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />                        
                           </Columns>
                       </asp:DataGrid>    
                       <!------------------------------>
                       <br />
                   </asp:Panel>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
