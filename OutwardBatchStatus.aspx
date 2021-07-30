<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OutwardBatchStatus.aspx.cs" Inherits="FloraSoft.OutwardBatchStatus" %>
<%@ Register Src="modules/CommonHeader.ascx" TagName="CommonHeader" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Outward Batch Status: Flora Cheque Processing and Archiving</title>
    <link href="includes/sitec.css" rel="stylesheet" type="text/css" /> 
</head>
<body topmargin="0" leftmargin="0">
    <form id="form1" runat="server">
    <uc1:CommonHeader ID="CommonHeader1" runat="server" />
    <a href="Default.aspx"></a>
        <div class="Head" align="center">Outward Batch Status</div>
        <div>
            <table>
                <tr>
                    <td width="10"></td>
                    <td>
                        <asp:DropDownList ID="BranchList" runat="server" DataTextField="BranchName" Width="200px" DataValueField="RoutingNo" AutoPostBack="true"></asp:DropDownList>
                        <asp:DropDownList ID="ClearingTypeList" runat="server" AutoPostBack="true">
                                <asp:ListItem Text="Reg" Value="1"></asp:ListItem>
                                <asp:ListItem Text="HV"  Value="9"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="BusinessDayList" runat="server" AutoPostBack="true">
                                <asp:ListItem Text="Current Business Day" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Next Business Day"  Value="0"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td width="100"></td>
                    <td><a href="IQAList.aspx" class="CommandButton">IQA List</a></td>
               </tr>
               <tr>
                    <td width="10"></td>
                    <td colspan="3">
                        <!----------------------->
                        <asp:GridView Id="MyDataGrid" 
	                            HeaderStyle-CssClass="GrayBackWhiteFont"  
	                            FooterStyle-CssClass="GrayBackWhiteFont" FooterStyle-HorizontalAlign="Right" 
	                            RowStyle-CssClass="NormalSmall" 
	                            RowStyle-BackColor="#dee9fc"   
	                            AlternatingRowStyle-BackColor="#FFFFFF" 
	                            runat="server" CellSpacing="1"  CellPadding="5" 
	                            autogeneratecolumns="false" 
            	                gridlines="None" borderwidth="0px" 
            	                ShowFooter="true"  Height="0px" >
            	                <Columns>  
                                    <asp:TemplateField  HeaderText="Batch"   ItemStyle-Wrap ="false" HeaderStyle-Wrap="False">    
                                        <ItemTemplate>
                                                <a href='OCEBatchItems.aspx?BatchID=<%#DataBinder.Eval(Container.DataItem, "BatchID") %>&BatchName=<%#DataBinder.Eval(Container.DataItem, "BatchName") %>'><%#DataBinder.Eval(Container.DataItem, "BatchName") %></a>
                                        </ItemTemplate>
                                    </asp:TemplateField>                                
                                    <asp:BoundField DataField = "EntryDate"   HeaderText="Entry Date"   ItemStyle-Wrap ="false" HeaderStyle-Wrap="False"  />       
                                    <asp:BoundField DataField = "EntryTime"   HeaderText="Entry Time"   ItemStyle-Wrap ="false" HeaderStyle-Wrap="False"  />       
                                    <asp:BoundField DataField = "TotalChecks" HeaderText="Total Checks" ItemStyle-Width="60px"  HeaderStyle-HorizontalAlign="Right"     ItemStyle-HorizontalAlign="Right"   ItemStyle-Wrap ="false"  HeaderStyle-Wrap="False" />       
                                    <asp:BoundField DataField = "BatchTotal"  HeaderText="Batch Total"  ItemStyle-Width="100px" HeaderStyle-HorizontalAlign="Right"     ItemStyle-HorizontalAlign="Right"   ItemStyle-Wrap ="false"  HeaderStyle-Wrap="False" DataFormatString="{0:F2}" />       
                                    <asp:BoundField DataField = "StatusName"  HeaderText="Status"       ItemStyle-Width="100px" HeaderStyle-HorizontalAlign="Center"    ItemStyle-HorizontalAlign="Center"  ItemStyle-Wrap ="false"  HeaderStyle-Wrap="False" />    
                                    <asp:TemplateField ItemStyle-Width="0px" HeaderStyle-BackColor="#EFEFEF" FooterStyle-BackColor="#EFEFEF" ItemStyle-BackColor="#EFEFEF">
                                        <ItemTemplate></ItemTemplate>
                                    </asp:TemplateField>    
                                    <asp:BoundField DataField = "Status"         HeaderText="PBM Status"        ItemStyle-Width="40px"  HeaderStyle-HorizontalAlign="Center"    ItemStyle-HorizontalAlign="Center"  ItemStyle-Wrap ="true"   HeaderStyle-Wrap="False"    ItemStyle-CssClass="Normal" HeaderStyle-BackColor="#003366" FooterStyle-BackColor="#003366" />       
                                    <asp:BoundField DataField = "SettlementDate" HeaderText="SettlementDate"    ItemStyle-Width="60px"  HeaderStyle-HorizontalAlign="Center"    ItemStyle-HorizontalAlign="Center"  ItemStyle-Wrap ="true"   HeaderStyle-Wrap="False"    ItemStyle-CssClass="Normal" HeaderStyle-BackColor="#003366" FooterStyle-BackColor="#003366" />       
                                    <asp:BoundField DataField = "SettlementTime" HeaderText="Time"              ItemStyle-Width="40px"  HeaderStyle-HorizontalAlign="Center"    ItemStyle-HorizontalAlign="Center"  ItemStyle-Wrap ="true"   HeaderStyle-Wrap="False"    ItemStyle-CssClass="Normal" HeaderStyle-BackColor="#003366" FooterStyle-BackColor="#003366"  />       
                                    <asp:BoundField DataField = "Description"    HeaderText="Description"       ItemStyle-Width="150px" HeaderStyle-HorizontalAlign="Left"      ItemStyle-HorizontalAlign="Left"    ItemStyle-Wrap ="true"   HeaderStyle-Wrap="False"    ItemStyle-CssClass="Normal" HeaderStyle-BackColor="#003366" FooterStyle-BackColor="#003366" />       
                                    <asp:BoundField DataField = "Presented"      HeaderText="Presented"         ItemStyle-Width="40px"  HeaderStyle-HorizontalAlign="Left"      ItemStyle-HorizontalAlign="Left"    ItemStyle-Wrap ="true"   HeaderStyle-Wrap="False"    ItemStyle-CssClass="Normal" HeaderStyle-BackColor="#003366" FooterStyle-BackColor="#003366" />       
                                    <asp:BoundField DataField = "Accepted"       HeaderText="Accepted"          ItemStyle-Width="40px"  HeaderStyle-HorizontalAlign="Right"     ItemStyle-HorizontalAlign="Right"   ItemStyle-Wrap ="true"   HeaderStyle-Wrap="False"    ItemStyle-CssClass="Normal" HeaderStyle-BackColor="#003366" FooterStyle-BackColor="#003366" />       
                                    <asp:TemplateField  ItemStyle-Wrap="false"   HeaderText="Rejected"          ItemStyle-Width="40px"  HeaderStyle-HorizontalAlign="Right"     ItemStyle-HorizontalAlign="Right" HeaderStyle-BackColor="#003366" FooterStyle-BackColor="#003366" >    
                                    <ItemTemplate>
                                        <a href='OCEAckItems.aspx?FileName=<%#DataBinder.Eval(Container.DataItem, "FileName") %>'><%#DataBinder.Eval(Container.DataItem, "Rejected") %></a>
                                    </ItemTemplate>
                                    </asp:TemplateField>                    
           	                </Columns>
	                        </asp:GridView>
                        <!----------------------->
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

