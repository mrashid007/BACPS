<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BranchIQAList.aspx.cs" Inherits="FloraSoft.BranchIQAList" %>
<%@ Register Src="Modules/OCEBatchTree.ascx" TagName="OCEBatchTree" TagPrefix="uc2" %>
<%@ Register Src="modules/AdminHeader.ascx" TagName="AdminHeader" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>View IQA List</title>
    <link href="includes/sitec.css" rel="stylesheet" type="text/css" /> 
    <script>
    	function ViewCheck(checkid, viewside)
		{
			var str = 'ViewOCECheck.aspx?CheckID='+checkid+'&ViewSide='+viewside;
			window.open(str,'CheckImage','scrollbars=no,width=950,height=470,left=20,top=10');
		}
    </script></head>
<body topmargin="0" leftmargin="0">
    <form id="form1" runat="server">
        <uc1:AdminHeader ID="AdminHeader1" runat="server" />
        
        <table border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td width="50"></td>
                <td>
                    <table>
                        <tr>
                            <td><div class="Head" align="left">Today's IQA List</div></td>
                            <td width="50"></td>
                            <td><asp:LinkButton ID="ExportToPdfBtn" CssClass="CommandButton" runat="server" Text="<img src='images/PDFIcon.gif' border='0'/>" OnClick="ExportToPdfBtn_Click"></asp:LinkButton></td>
                        </tr>
                    </table>
                    
                    <!------------------------------>
                    <asp:DataGrid ID="BatchFileGrid" runat="server"  
                        AlternatingItemStyle-BackColor="#ffffff" Width="750px"
                        AutoGenerateColumns="false" BorderWidth="0px" 
                        CellPadding="5" CellSpacing="1"
                        FooterStyle-CssClass="GrayBackWhiteFont" GridLines="None"
                        HeaderStyle-CssClass="GrayBackWhiteFont" Height="0px" 
                        ItemStyle-BackColor="#dee9fc" FooterStyle-HorizontalAlign="Center" 
                        ItemStyle-CssClass="Normal" DataKeyField="CheckID"  
                        ShowFooter="true" OnItemCommand="BatchFileGrid_ItemCommand">
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
                        <asp:TemplateColumn HeaderText="Zone" ItemStyle-Wrap="false"  ItemStyle-HorizontalAlign="Left" >
                            <ItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "Zone")%>
                            </ItemTemplate>
                        </asp:TemplateColumn>                         
                        <asp:TemplateColumn HeaderText="Branch" ItemStyle-Wrap="false"  ItemStyle-HorizontalAlign="Left" >
                            <ItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "BranchName")%>
                            </ItemTemplate>
                        </asp:TemplateColumn> 
                        <asp:TemplateColumn HeaderText="Batch" ItemStyle-Wrap="false"  ItemStyle-HorizontalAlign="Left" >
                            <ItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "BatchName")%>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="Scanman" ItemStyle-Wrap="false" ItemStyle-CssClass="NormalSmall"  ItemStyle-HorizontalAlign="Left" >
                            <ItemTemplate>
                               <%#DataBinder.Eval(Container.DataItem, "ScanMan")%>
                            </ItemTemplate>
                        </asp:TemplateColumn> 
                        <asp:TemplateColumn HeaderText="Rep" ItemStyle-Wrap="false"  ItemStyle-HorizontalAlign="Center" >
                            <ItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "RepInd")%>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="RepInd" Width="20"  runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "RepInd") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateColumn>                        
                        <asp:TemplateColumn HeaderText="CheckRoutingNo" ItemStyle-Wrap="false"  ItemStyle-HorizontalAlign="Center" >
                            <ItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "CheckRoutingNo")%>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="CheckRoutingNo" Width="75"  runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "CheckRoutingNo") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateColumn>
                         <asp:TemplateColumn HeaderText="CheckActNo" ItemStyle-Wrap="false"  ItemStyle-HorizontalAlign="Right" >
                            <ItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "CheckActNo")%>
                            </ItemTemplate>
                        </asp:TemplateColumn>                            
                        <asp:TemplateColumn HeaderText="CheckSLNo" ItemStyle-Wrap="false"  ItemStyle-HorizontalAlign="Right" >
                            <ItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "CheckSLNo")%>
                            </ItemTemplate>
                        </asp:TemplateColumn> 
                        <asp:TemplateColumn HeaderText="TC" ItemStyle-Wrap="false"  ItemStyle-HorizontalAlign="Center" >
                            <ItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "CheckTransCode")%>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="CheckTransCode" Width="20"  runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "CheckTransCode") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateColumn> 
                        <asp:TemplateColumn HeaderText="ItemSeqNo" ItemStyle-Wrap="false" ItemStyle-HorizontalAlign="Right" >
                            <ItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "ItemSeqNo")%>
                            </ItemTemplate>
                        </asp:TemplateColumn>   
                         <asp:TemplateColumn HeaderText="CheckAmount" ItemStyle-Wrap="false" ItemStyle-HorizontalAlign="Right" >
                            <ItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "CheckAmount")%>
                            </ItemTemplate>
                        </asp:TemplateColumn>    
                         <asp:TemplateColumn HeaderText="Reason" ItemStyle-Wrap="false" ItemStyle-CssClass="NormalSmall"  ItemStyle-HorizontalAlign="Left" >
                            <ItemTemplate>
                               <%#DataBinder.Eval(Container.DataItem, "Reason")%>
                            </ItemTemplate>
                        </asp:TemplateColumn>    
                        <asp:TemplateColumn HeaderText="FileName" ItemStyle-Wrap="false"  ItemStyle-HorizontalAlign="Left" >
                            <ItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "FileName")%>
                            </ItemTemplate>
                        </asp:TemplateColumn>   
                       </Columns>
                  </asp:DataGrid>    
                   <!------------------------------>
                </td>
            </tr>
        </table> 
    </form>
</body>
</html>
