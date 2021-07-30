<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InwardCBSList.aspx.cs" Inherits="FloraSoft.InwardCBSList" %>
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
               <td></td>
               <td><asp:Label ID="LblHeader" CssClass="Head" runat="server" Text="CBS History" /></td>
           </tr>
           <tr>
               <td valign="top" style="width: 100px"></td>
                <td valign="top">                    
                       <asp:DataGrid ID="CBSList" runat="server"  
                            AlternatingItemStyle-BackColor="#ffffff"
                            AutoGenerateColumns="false" BorderWidth="0px" 
                            CellPadding="5" CellSpacing="1"
                            FooterStyle-CssClass="GrayBackWhiteFont" GridLines="None"
                            HeaderStyle-CssClass="GrayBackWhiteFont" Height="0px" 
                            ItemStyle-BackColor="#dee9fc"
                            ItemStyle-CssClass="NormalSmall" 
                            ShowFooter="true">
                           <Columns>                              
                              <asp:BoundColumn DataField = "HistoryID"      HeaderText="HistoryID"          ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
                              <asp:BoundColumn DataField = "HistoryTime"    HeaderText="History Time"       ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
                              <asp:BoundColumn DataField = "Envelop"        HeaderText="Envelop"            ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
                              <asp:BoundColumn DataField = "DebitAct"       HeaderText="Debit Account No"   ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
                              <asp:BoundColumn DataField = "CreditAct"      HeaderText="Credit Account No"  ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
                              <asp:BoundColumn DataField = "Amount"         HeaderText="Amount"             ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" DataFormatString="{0:F2}" ItemStyle-HorizontalAlign="Right" />       
                              <asp:BoundColumn DataField = "CBSResponseDB"  HeaderText="CBS Response(DB)"   ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />                     
                              <asp:BoundColumn DataField = "CBSResponseCR"  HeaderText="CBS Response(CR)"   ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />                     
                           </Columns>
                       </asp:DataGrid>    
                       <!------------------------------>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
