<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PBMMismatch.aspx.cs" Inherits="FloraSoft.PBMMismatch" %>
<%@ Register Src="Modules/OCEBatchTree.ascx" TagName="OCEBatchTree" TagPrefix="uc2" %>
<%@ Register Src="modules/AdminHeader.ascx" TagName="AdminHeader" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>PBM Mismatch</title>
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
        <table width="100%">
           <tr>
               <td width="50"></td>
               <td valign="top">
                <!--------------------------------------->
                <div class="Head">PBM Mismatch</div>
                <!--------------------------------------->
                <asp:DataGrid ID="BatchGrid" runat="server"  
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
                      </ASP:TemplateColumn>   
                      <asp:BoundColumn DataField = "ImportFile"       HeaderText="ImportFile"       ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" ItemStyle-HorizontalAlign="Left" />       
                      <asp:BoundColumn DataField = "ExportFile"       HeaderText="ExportFile"       ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" ItemStyle-HorizontalAlign="Left" />       
                      <asp:BoundColumn DataField = "Run"              HeaderText="Run"              ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" ItemStyle-HorizontalAlign="Left" />       
                      <asp:BoundColumn DataField = "CheckRoutingNo"   HeaderText="CheckRT No."      ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" ItemStyle-HorizontalAlign="Left"  />       
                      <asp:BoundColumn DataField = "CheckActNo"       HeaderText="CheckAct No."     ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" ItemStyle-HorizontalAlign="Right" />       
                      <asp:BoundColumn DataField = "CheckSLNo"        HeaderText="CheckSL No."      ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" ItemStyle-HorizontalAlign="Right"  />       
                      <asp:BoundColumn DataField = "CheckAmount"      HeaderText="CheckAmount"      ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" ItemStyle-HorizontalAlign="Right"  />       
                      <asp:BoundColumn DataField = "ReturnCD"         HeaderText="ReturnCD"         ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
                      <asp:BoundColumn DataField = "Mismatch"         HeaderText="Mismatch"         ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />       
                   </Columns>
               </asp:DataGrid>    
                <!--------------------------------------->
               </td>
            </tr>
        </table>
    </form>
</body>
</html>
