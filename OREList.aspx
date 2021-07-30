<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OREList.aspx.cs" Inherits="FloraSoft.OREList" %>
<%@ Register Src="Modules/OCEBatchTree.ascx" TagName="OCEBatchTree" TagPrefix="uc2" %>
<%@ Register Src="modules/AdminOpManagerHeader.ascx" TagName="AdminOpManagerHeader" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>View ORE Ack</title>
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
        <uc1:AdminOpManagerHeader ID="AdminOpManagerHeader1" runat="server" />
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
           <tr>
               <td width="50"></td>
               <td valign="top">
                <!--------------------------------------->
                <div class="Head">ORE List</div>
                <!--------------------------------------->
                <table>
                    <tr>
                        <td><asp:DropDownList ID="BranchList" runat="server" DataTextField="BranchName" Width="200px" DataValueField="RoutingNo" AutoPostBack="true"></asp:DropDownList></td>
                        <td>                                
                            <asp:DropDownList ID="ClearingTypeList" runat="server" AutoPostBack="true">
                                <asp:ListItem Text="Reg" Value="11"></asp:ListItem>
                                <asp:ListItem Text="HV"  Value="19"></asp:ListItem>                               
                            </asp:DropDownList>
                        </td>
                        <td>
                           <asp:DropDownList ID="StatusList" runat="server" AutoPostBack="true">
                                <asp:ListItem Text="Waiting"  Value="0"></asp:ListItem>                               
                                <asp:ListItem Text="Rejected" Value="2"></asp:ListItem>
                                <asp:ListItem Text="Approved" Value="3"></asp:ListItem>
                                <asp:ListItem Text="All" Value="1"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                   </tr>
                </table>
                <!--------------------------------------->
                <asp:DataGrid ID="OREGrid" runat="server"  
                    AlternatingItemStyle-BackColor="#ffffff" Width="750px"
                    AutoGenerateColumns="false" BorderWidth="0px" 
                    CellPadding="7" CellSpacing="1"
                    FooterStyle-CssClass="GrayBackWhiteFont" GridLines="None"
                    HeaderStyle-CssClass="GrayBackWhiteFont" Height="0px" 
                    ItemStyle-BackColor="#dee9fc"
                    ItemStyle-CssClass="Normal"  DataKeyField="FileID"  
                    ShowFooter="true" FooterStyle-HorizontalAlign="Center" AllowPaging="True" PageSize="700" 
                    OnPageIndexChanged="OREGrid_PageIndexChanged" OnItemCommand="OREGrid_ItemCommand">
                   <Columns>
                     <asp:EditCommandColumn CausesValidation="False" EditText="Edit" UpdateText="Update" CancelText="Cancel"></asp:EditCommandColumn>
                     <ASP:TemplateColumn HeaderText="Front" FooterStyle-CssClass="red">
                            <ItemTemplate>
                                <a href="javascript:ViewCheck('<%#DataBinder.Eval(Container.DataItem, "CheckID")%>','0')">View</a>
                            </ItemTemplate>
                      </ASP:TemplateColumn>
                      <asp:TemplateColumn HeaderText="FileName" ItemStyle-Wrap="false"  ItemStyle-HorizontalAlign="Left" >
                            <ItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "FileName")%>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "FileName") %>
                            </EditItemTemplate>
                       </asp:TemplateColumn> 
                      <asp:TemplateColumn HeaderText="Serial" ItemStyle-Wrap="false"  ItemStyle-HorizontalAlign="Left" >
                            <ItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "CheckSLNo")%>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "CheckSLNo") %>
                            </EditItemTemplate>
                       </asp:TemplateColumn> 
                      <asp:TemplateColumn HeaderText="Amount" ItemStyle-Wrap="false"  ItemStyle-HorizontalAlign="Left" >
                            <ItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "CheckAmount")%>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "CheckAmount") %>
                            </EditItemTemplate>
                       </asp:TemplateColumn> 
                      <asp:TemplateColumn HeaderText="ReturnCD" ItemStyle-Wrap="false"  ItemStyle-HorizontalAlign="Left" >
                            <ItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "ReturnCD")%>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "ReturnCD") %>
                            </EditItemTemplate>
                       </asp:TemplateColumn> 
                      <asp:TemplateColumn HeaderText="Return Reason" ItemStyle-Wrap="false"  ItemStyle-HorizontalAlign="Left" >
                            <ItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "ReturnReason")%>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "ReturnReason") %>
                            </EditItemTemplate>
                       </asp:TemplateColumn> 
                      <asp:TemplateColumn HeaderText="Branch" ItemStyle-Wrap="false"  ItemStyle-HorizontalAlign="Left" >
                            <ItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "BranchName")%>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "BranchName") %>
                            </EditItemTemplate>
                       </asp:TemplateColumn> 
                      <asp:TemplateColumn HeaderText="Bank" ItemStyle-Wrap="false"  ItemStyle-HorizontalAlign="Left" >
                            <ItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "BankName")%>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "BankName") %>
                            </EditItemTemplate>
                       </asp:TemplateColumn> 
                      <asp:TemplateColumn HeaderText="Type" ItemStyle-Wrap="false"  ItemStyle-HorizontalAlign="Left" >
                            <ItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "Type")%>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "Type") %>
                            </EditItemTemplate>
                       </asp:TemplateColumn> 
                       
                      <asp:TemplateColumn HeaderText="Status" ItemStyle-Wrap="false"  ItemStyle-HorizontalAlign="Left" >
                            <ItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "Status")%>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "Status") %>
                            </EditItemTemplate>
                       </asp:TemplateColumn> 

                      <asp:TemplateColumn HeaderText="Description" ItemStyle-Wrap="false"  ItemStyle-HorizontalAlign="Left" >
                            <ItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "Description")%>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "Description") %>
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
                                <%#DataBinder.Eval(Container.DataItem, "SettlementDate")%>
                            </EditItemTemplate>
                        </asp:TemplateColumn>
                      <asp:TemplateColumn HeaderText="Presented" ItemStyle-Wrap="false"  ItemStyle-HorizontalAlign="Left" >
                            <ItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "Presented")%>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <%#DataBinder.Eval(Container.DataItem, "Presented") %>
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
                   <PagerStyle PageButtonCount="50" Position="Top" CssClass="PagerStyle" Mode="NumericPages"></PagerStyle>
               </asp:DataGrid>    
                <!--------------------------------------->
               </td>
            </tr>
        </table>
    </form>
</body>
</html>
