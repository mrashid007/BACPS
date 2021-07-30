<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BranchInwardList.aspx.cs" Inherits="FloraSoft.BranchInwardList" %>
<%@ Register Src="Modules/OCEBatchTree.ascx" TagName="OCEBatchTree" TagPrefix="uc2" %>
<%@ Register Src="modules/AdminHeader.ascx" TagName="AdminHeader" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Inward Checklist for Admin</title>
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
        <table border="0">
           <tr>
               <td valign="top" style="width: 100px"></td>
                <td valign="top">
                    <table>
                        <tr>
                            <td width="560px"><asp:Label ID="LblHeader" CssClass="Head" runat="server" /></td>
                            <td>
                                <asp:TextBox ID="SrchCheckSLNo" Width="55px" MaxLength="7" runat="server" CssClass="inputlt" />
                                <asp:RequiredFieldValidator ID="ReqSrchCheckSLNo" runat="server" ControlToValidate="SrchCheckSLNo" Display="Dynamic" Text="*" />
                                <asp:RangeValidator ID="RangeSrchCheckSLNo" runat="server" ControlToValidate="SrchCheckSLNo" Display="Dynamic" Type="Integer" MinimumValue="0" MaximumValue="9999999" Text="**" />
                            </td>
                            <td><asp:LinkButton ID="SearchBtn" runat="server" Text="Search by SL no." CssClass="CommandButton" OnClick="SearchBtn_Click"  ></asp:LinkButton></td>
                        </tr>
                    </table>
                       
                       <asp:DataGrid ID="BatchFileGrid" runat="server"  
                            AlternatingItemStyle-BackColor="#ffffff"
                            AutoGenerateColumns="false" BorderWidth="0px" 
                            CellPadding="5" CellSpacing="1"
                            FooterStyle-CssClass="GrayBackWhiteFont" GridLines="None"
                            HeaderStyle-CssClass="GrayBackWhiteFont" Height="0px" 
                            ItemStyle-BackColor="#dee9fc"
                            ItemStyle-CssClass="NormalSmall" 
                            ShowFooter="true">
                           <Columns>
                              <asp:TemplateColumn HeaderText="Front" FooterStyle-CssClass="red">
                                    <ItemTemplate>
                                        <a href="javascript:ViewCheck('<%#DataBinder.Eval(Container.DataItem, "CheckID")%>','0')">View</a>
                                    </ItemTemplate>
                              </asp:TemplateColumn>
                              <asp:TemplateColumn HeaderText="Back" FooterStyle-CssClass="red">
                                    <ItemTemplate>
                                        <a href="javascript:ViewCheck('<%#DataBinder.Eval(Container.DataItem, "CheckID")%>','1')">View</a>
                                    </ItemTemplate>
                              </asp:TemplateColumn>                               
                              <asp:BoundColumn DataField = "BranchName"     HeaderText="Branch"         ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
                              <asp:BoundColumn DataField = "BankName"         HeaderText="Bank"             ItemStyle-Wrap ="false"  HeaderStyle-Wrap="False" />                                            
                              <asp:BoundColumn DataField = "ClearingType"   HeaderText="Session"        ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
                              <asp:BoundColumn DataField = "Run"            HeaderText="Run"            ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
                              <asp:BoundColumn DataField = "CheckActNo"     HeaderText="Account No"     ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
                              <asp:BoundColumn DataField = "CheckSLNo"      HeaderText="Serial No"      ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
                              <asp:BoundColumn DataField = "CheckRoutingNo" HeaderText="Routing No"     ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
                              <asp:BoundColumn DataField = "RepInd"         HeaderText="RepInd"         ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" ItemStyle-HorizontalAlign="Center"/>       
                              <asp:BoundColumn DataField = "CheckAmount"    HeaderText="Amount"         ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" DataFormatString="{0:F2}" HeaderStyle-HorizontalAlign="Right"  ItemStyle-HorizontalAlign="Right"/>       
                              <asp:BoundColumn DataField = "QueueName"      HeaderText="Status"         ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />                     
                              <asp:TemplateColumn HeaderText="CBS" FooterStyle-CssClass="red" ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <a href='InwardCBSList.aspx?CheckID=<%#DataBinder.Eval(Container.DataItem, "CheckID")%>'>Click</a>
                                    </ItemTemplate>
                              </asp:TemplateColumn>
                              <asp:TemplateColumn HeaderText="Send Back/Delete" FooterStyle-CssClass="red" ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <a href='ChangeInwardQueue.aspx?CheckID=<%#DataBinder.Eval(Container.DataItem, "CheckID")%>&QueueName=<%#DataBinder.Eval(Container.DataItem, "QueueName")%>'>Click</a>
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
