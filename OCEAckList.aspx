<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OCEAckList.aspx.cs" Inherits="FloraSoft.OCEAckList" %>
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
               <td valign="top" colspan="2" width="300px">
                    <uc2:OCEBatchTree ID="OCEBatchTree1" runat="server" />
                </td>
                <td valign="top">
                    <asp:Panel ID="BatchPanel" Visible="false" runat="server">
                       <div class="Head" align="left">OCE Acknowledgement</div><br />
                       <div class="Head" align="left">Batch Cheques:&nbsp;[<asp:Label ID="BatchName1" runat="server" />]</div>
                       <!------------------------------>
                       <asp:DataGrid ID="BatchFileGrid" runat="server"  
                            AlternatingItemStyle-BackColor="#ffffff" Width="750px"
                            AutoGenerateColumns="false" BorderWidth="0px" 
                            CellPadding="5" CellSpacing="1"
                            FooterStyle-CssClass="GrayBackWhiteFont" GridLines="None"
                            HeaderStyle-CssClass="GrayBackWhiteFont" Height="0px" 
                            ItemStyle-BackColor="#dee9fc"
                            ItemStyle-CssClass="Normal"  
                            ShowFooter="true">
                           <Columns>
                              <asp:BoundColumn DataField = "Run"            HeaderText="Run"            ItemStyle-Wrap ="True"  HeaderStyle-Wrap="False" />       
                              <asp:BoundColumn DataField = "SettlementDate" HeaderText="Settlement"     ItemStyle-Wrap ="True"  HeaderStyle-Wrap="False" />       
                              <asp:BoundColumn DataField = "SettlementTime" HeaderText="Time"           ItemStyle-Wrap ="True"  HeaderStyle-Wrap="False" />       
                              <asp:BoundColumn DataField = "FileName"       HeaderText="FileName"       ItemStyle-Wrap ="True"  HeaderStyle-Wrap="False" />       
                              <asp:BoundColumn DataField = "Status"         HeaderText="Status."        ItemStyle-Wrap ="True"  HeaderStyle-Wrap="False" />       
                              <asp:BoundColumn DataField = "Description"    HeaderText="Description"    ItemStyle-Wrap ="True"  HeaderStyle-Wrap="False" />       
                              <asp:BoundColumn DataField = "Presented"      HeaderText="Presented"      ItemStyle-Wrap ="True"  HeaderStyle-Wrap="False" />       
                              <asp:BoundColumn DataField = "Accepted"       HeaderText="Accepted"       ItemStyle-Wrap ="True"  HeaderStyle-Wrap="False" />       
                           </Columns>
                       </asp:DataGrid>    
                       <!------------------------------>
                   </asp:Panel>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
