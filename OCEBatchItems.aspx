<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OCEBatchItems.aspx.cs" Inherits="FloraSoft.OCEBatchItems" %>
<%@ Register Src="Modules/OCEBatchTree.ascx" TagName="OCEBatchTree" TagPrefix="uc2" %>
<%@ Register Src="modules/AdminHeader.ascx" TagName="AdminHeader" TagPrefix="uc1" %>
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
        <uc1:AdminHeader ID="AdminHeader1" runat="server" />
        <table border="0">
           <tr>
               <td valign="top" style="width: 100px"></td>
                <td valign="top">
                       <div class="Head" align="left">
                           <asp:Label ID="LblBatchName" runat="server" />
                       </div>
                       
                       <asp:DataGrid ID="BatchFileGrid" runat="server"  
                            AlternatingItemStyle-BackColor="#ffffff"
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
                              </ASP:TemplateColumn>                               <asp:BoundColumn DataField = "BranchName"     HeaderText="Branch" ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
                              <asp:BoundColumn DataField = "BankName"       HeaderText="Bank" ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
                              <asp:BoundColumn DataField = "CheckActNo"     HeaderText="Account No"     ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
                              <asp:BoundColumn DataField = "CheckSLNo"      HeaderText="Serial No"      ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
                              <asp:BoundColumn DataField = "CheckRoutingNo" HeaderText="Routing No" ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
                              <asp:BoundColumn DataField = "RepInd"         HeaderText="RepInd"         ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
                              <asp:BoundColumn DataField = "CheckAmount"    HeaderText="Amount"   ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" DataFormatString="{0:F2}" />       
                              <asp:BoundColumn DataField = "StatusName"     HeaderText="Status"         ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />                     
                           </Columns>
                       </asp:DataGrid>    
                       <!------------------------------>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
