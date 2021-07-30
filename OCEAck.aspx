<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OCEAck.aspx.cs" Inherits="FloraSoft.OCEAck" %>
<%@ Register Src="Modules/OCEBatchTree.ascx" TagName="OCEBatchTree" TagPrefix="uc2" %>
<%@ Register Src="modules/AdminOpManagerHeader.ascx" TagName="AdminOpManagerHeader" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>View OCE Ack</title>
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
        
        <table border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td width="50"></td>
                <td>
                    <div class="Head" align="left">OCE Acknowledgement</div>
                    <table>
                        <tr>
                            <td><asp:DropDownList ID="AckStatusList" DataTextField="AckStatus" runat="server"  AutoPostBack="true" /></td>
                            <td width="50"></td>
                            <td><a href="IQAList.aspx" class="CommandButton">IQA List</a></td>
                        </tr>
                    </table>
                    
                    <!------------------------------>
                    <asp:DataGrid ID="BatchFileGrid" runat="server"  
                        AlternatingItemStyle-BackColor="#ffffff" Width="750px"
                        AutoGenerateColumns="false" BorderWidth="0px" 
                        CellPadding="5" CellSpacing="1"
                        FooterStyle-CssClass="GrayBackWhiteFont" GridLines="None"
                        HeaderStyle-CssClass="GrayBackWhiteFont" Height="0px" 
                        ItemStyle-BackColor="#dee9fc" PagerStyle-Position="top" AllowPaging="True" PageSize="50"
                        ItemStyle-CssClass="Normal" DataKeyField="FileID"  
                        ShowFooter="true" OnItemCommand="BatchFileGrid_ItemCommand" OnPageIndexChanged="BatchFileGrid_PageIndexChanged">
                       <Columns>
                       <asp:EditCommandColumn CausesValidation="False" EditText="Edit" UpdateText="Update" CancelText="Cancel"></asp:EditCommandColumn>
                       
                         <asp:TemplateColumn HeaderText="Type" ItemStyle-Wrap="false"  ItemStyle-HorizontalAlign="Left" >
                            <ItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "Type")%>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "Type") %>
                            </EditItemTemplate>
                        </asp:TemplateColumn> 

                        <asp:TemplateColumn HeaderText="OriginalFile" ItemStyle-Wrap="false"  ItemStyle-HorizontalAlign="Left" >
                            <ItemTemplate>
                                <a href='OCEAckItems.aspx?FileName=<%#DataBinder.Eval(Container.DataItem, "FileName") %>'><%#DataBinder.Eval(Container.DataItem, "FileName") %></a>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "FileName") %>
                            </EditItemTemplate>
                        </asp:TemplateColumn>

                        <asp:TemplateColumn HeaderText="Status" ItemStyle-Wrap="false" ItemStyle-HorizontalAlign="Left" >
                            <ItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "Status")%>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "Status")%>
                            </EditItemTemplate>
                        </asp:TemplateColumn>    

                         <asp:TemplateColumn HeaderText="Description" ItemStyle-Wrap="false" ItemStyle-CssClass="NormalSmall"  ItemStyle-HorizontalAlign="Left" >
                            <ItemTemplate>
                               <%#DataBinder.Eval(Container.DataItem, "Description")%>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "Description")%>
                            </EditItemTemplate>
                        </asp:TemplateColumn>    
                        

                         <asp:TemplateColumn HeaderText="Session" ItemStyle-Wrap="false"  ItemStyle-HorizontalAlign="Left" >
                            <ItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "Session") %>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="Session" Width="35" MaxLength="1"  runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Session") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateColumn>  

                        <asp:TemplateColumn HeaderText="Window" ItemStyle-Wrap="false"  ItemStyle-HorizontalAlign="Left" >
                            <ItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "Window") %>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "Window") %>
                            </EditItemTemplate>
                        </asp:TemplateColumn>  
                                     
                        <asp:TemplateColumn HeaderText="SessionDate" ItemStyle-Wrap="false"  ItemStyle-HorizontalAlign="Left" >
                            <ItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "SettlementDate")%>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="SettlementDate" Width="70"  runat="server" MaxLength="8" Text='<%#DataBinder.Eval(Container.DataItem, "SettlementDate") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateColumn>
                         
                       <asp:TemplateColumn HeaderText="BatchName" ItemStyle-Wrap="false" ItemStyle-HorizontalAlign="Left" >
                            <ItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "BatchName")%>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "BatchName")%>
                            </EditItemTemplate>
                        </asp:TemplateColumn>   

                          <asp:TemplateColumn HeaderText="Presented" ItemStyle-Wrap="false"  ItemStyle-HorizontalAlign="Left" >
                            <ItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "Presented")%>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "Presented")%>
                            </EditItemTemplate>                           
                        </asp:TemplateColumn>    
                        
                        <asp:TemplateColumn HeaderText="Accepted" ItemStyle-Wrap="false"  ItemStyle-HorizontalAlign="Left" >
                            <ItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "Accepted")%>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "Accepted") %>
                            </EditItemTemplate>
                        </asp:TemplateColumn>  
                           
                        <asp:TemplateColumn HeaderText="Rejected" ItemStyle-Wrap="false"  ItemStyle-HorizontalAlign="Left" >
                            <ItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "Rejected")%>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "Rejected") %>
                            </EditItemTemplate>
                        </asp:TemplateColumn>                              
                       </Columns>
                    <PagerStyle PageButtonCount="65" CssClass="PagerStyle" Mode="NumericPages"></PagerStyle>
                  </asp:DataGrid>    
                   <!------------------------------>
                </td>
            </tr>
        </table> 
    </form>
</body>
</html>