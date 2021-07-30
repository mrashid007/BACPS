<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BatchChecks.aspx.cs" Inherits="FloraSoft.BatchChecks" %>
<%@ Register Src="Modules/OCEBatchTree.ascx" TagName="OCEBatchTree" TagPrefix="uc2" %>
<%@ Register Src="modules/AdminOpManagerHeader.ascx" TagName="AdminOpManagerHeader" TagPrefix="uc1" %>
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
        <uc1:AdminOpManagerHeader ID="AdminOpManagerHeader1" runat="server" />
        <table width="100%">
           <tr>
               <td valign="top" width="220px">
                    <uc2:OCEBatchTree ID="OCEBatchTree1" runat="server" />
                </td>
                <td valign="top">                    
                    <asp:Panel ID="BatchPanel" runat="server">
                       <div class="Head"><asp:Label ID="BatchName1" runat="server" /></div>
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
                              <asp:BoundColumn DataField = "CheckAmount"      HeaderText="CheckAmount"    ItemStyle-Wrap ="True"  HeaderStyle-Wrap="False" ItemStyle-HorizontalAlign="Right" DataFormatString="{0:F2}"  />       
                              <asp:BoundColumn DataField = "RepInd"           HeaderText="Rep."           ItemStyle-Wrap ="True"  HeaderStyle-Wrap="False" ItemStyle-HorizontalAlign="Right"  />       
                              <asp:BoundColumn DataField = "StatusName"       HeaderText="Status"         ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
                              <asp:TemplateColumn HeaderText="IRE"          ItemStyle-Wrap="false">
                                    <ItemTemplate>
                                        <a href="ForceIRE.aspx?CheckID=<%#DataBinder.Eval(Container.DataItem, "CheckID")%>">Create</a>
                                    </ItemTemplate>
                              </asp:TemplateColumn>                  
                              <asp:TemplateColumn HeaderText="Delete"        ItemStyle-Wrap="false">
                                    <ItemTemplate>
                                        <a href="DeleteCheck.aspx?CheckID=<%#DataBinder.Eval(Container.DataItem, "CheckID")%>">Delete</a>
                                    </ItemTemplate>
                              </asp:TemplateColumn>                  
                           </Columns>
                       </asp:DataGrid>    
                       <!------------------------------>
                       <br />
                       <table>
                            <tr><td colspan="5" class="Head">Change Branch:&nbsp;[<asp:Label ID="BatchName2" runat="server" />]</td></tr>
                            <tr>
                                <td class="Normal">From</td>
                                <td><asp:Label ID="CurrentBranch" runat="server" CssClass="NormalBold" /></td>
                                <td class="Normal" width="100" align="Right">To&nbsp;&nbsp;</td>
                                <td><asp:DropDownList ID="NewBranchList" runat="server" DataTextField="BranchName" Width="200px" DataValueField="RoutingNo" /></td>
                                <td><asp:LinkButton ID="BtnMoveBatch" runat="server" CssClass="CommandButton" Text="Move" OnClick="BtnMoveBatch_Click" /></td>
                            </tr>
                            <tr><td colspan="5" height="30"></td></tr>
                            <tr><td colspan="5" class="Head">Move This Batch:&nbsp;[<asp:Label ID="BatchName3" runat="server" />]</td></tr>
                            <tr>
                                <td class="Normal">From</td>
                                <td><asp:Label ID="CurrentStatus" runat="server" CssClass="NormalBold" /></td>
                                <td class="Normal" width="100" align="Right">To&nbsp;&nbsp;</td>
                                <td>
                                    <asp:DropDownList ID="NewStatusList" Width="200px" runat="server">
                                        <asp:ListItem Text="Scanman"     Value="1"></asp:ListItem>
                                        <asp:ListItem Text="Maker" Value="2"></asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td><asp:LinkButton ID="BtnChangeStatus" runat="server" CssClass="CommandButton" Text="Change" OnClick="BtnChangeStatus_Click"  /></td>
                            </tr>
                            <tr><td colspan="5" height="30"></td></tr>
                            <tr><td colspan="5" class="Head">Delete This Batch:&nbsp;[<asp:Label ID="BatchName4" runat="server" />]</td></tr>
                            <tr>
                                <td colspan="5"><asp:LinkButton ID="BtnDeleteBatch" runat="server" CssClass="CommandButton" Text="Delete This Batch" OnClick="BtnDeleteBatch_Click" /></td>
                            </tr>
                            <tr><td colspan="5" height="30"></td></tr>
                            <tr><td colspan="5" class="Head">Change ClearingType:&nbsp;[<asp:Label ID="BatchName5" runat="server" />]</td></tr>
                            <tr>
                                <td class="Normal">From</td>
                                <td><asp:Label ID="CurrentClearingType" runat="server" CssClass="NormalBold" /></td>
                                <td class="Normal" width="100" align="Right">To&nbsp;&nbsp;</td>
                                <td><asp:DropDownList ID="NewClearingTypeList" runat="server">
                                        <asp:ListItem Text="RV" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="HV" Value="9"></asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td><asp:LinkButton ID="BtnChangeClearingType" runat="server" CssClass="CommandButton" Text="Change" OnClick="BtnChangeClearingType_Click" /></td>
                            </tr>                      
                       </table>
                       <!------------------------------>
                   </asp:Panel>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
