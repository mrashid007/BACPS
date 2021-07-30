<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OCEAckItems.aspx.cs" Inherits="FloraSoft.OCEAckItems" %>
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
                            OCE Acknowledgement (Rejected Items)<br /><br />
                            FileName : <asp:Label ID="lblFileName" runat="server"></asp:Label>
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
                              <asp:BoundColumn DataField = "CheckRoutingNo" HeaderText="CheckRoutingNo" ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
                              <asp:BoundColumn DataField = "CheckActNo"     HeaderText="CheckActNo"     ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
                              <asp:BoundColumn DataField = "CheckSLNo"      HeaderText="CheckSLNo"      ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
                              <asp:BoundColumn DataField = "ItemSeqNo"      HeaderText="Item SeqNo."    ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
                              <asp:BoundColumn DataField = "CheckAmount"    HeaderText="Check Amount"   ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
                              <asp:BoundColumn DataField = "Reason"         HeaderText="Reason"         ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
                              <asp:TemplateColumn HeaderText="Remove"       ItemStyle-Wrap="false">
                                    <ItemTemplate>
                                        <a href="RemoveAckItem.aspx?AckID=<%#DataBinder.Eval(Container.DataItem, "AckID")%>"><%#DataBinder.Eval(Container.DataItem, "Removed")%></a>
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
