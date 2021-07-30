<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateORE.aspx.cs" Inherits="FloraSoft.CreateORE" %>

<%@ Register Src="modules/AdminHeader.ascx" TagName="AdminHeader" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Flora Cheque Processing: Outward Return to PBM</title>
    <meta http-equiv="PRAGMA" content="NO-CACHE" /> 
    <link href="includes/sitec.css" rel="stylesheet" type="text/css" /> 
    <script type="text/javascript">
    	function ViewCheck(checkid, n)
		{
			var str = 'ViewICECheck.aspx?ViewSide='+n+'&CheckID='+checkid;
			window.open(str,'CheckImage','scrollbars=no,width=960,height=430,left=20,top=150');
		}
    </script></head>
<body topmargin="0" leftmargin="0">
    <form id="form1" runat="server">
         <uc1:AdminHeader ID="AdminHeader1" runat="server" />
  <div>
    <table>
        <tr>
            <td width="80"></td>
            <td valign="top" class="NormalBold">
                <div class="Head">Flora Cheque Processing: Create ORE</div>
                <!---------------------------------->
                 <div id="AvailDiv" runat="server" style="WIDTH:100%;TEXT-ALIGN: left; overflow-y:auto">
                     <asp:GridView ID="CheckGrid" runat="server"
                        AlternatingRowStyle-BackColor="#FFFFFF"
                        AutoGenerateColumns="false" BorderWidth="0px" 
                        CellPadding="5" CellSpacing="1"
                        FooterStyle-CssClass="GrayBackWhiteFont" GridLines="None"
                        HeaderStyle-CssClass="GrayBackWhiteFont" Height="0px" 
                        RowStyle-BackColor="#dee9fc" Width="800px"
                        ROwStyle-CssClass="NormalSmall" DataKeyNames="CheckID"  
                        ShowFooter="true">
                        <Columns>
                             <asp:TemplateField HeaderText="Select">
                                <ItemTemplate>
                                    <asp:CheckBox ID="Check" runat="server" />
                                </ItemTemplate>
                             </asp:TemplateField>                     
                              <ASP:TemplateField HeaderText="Front" FooterStyle-CssClass="red">
                                    <ItemTemplate>
                                        <a href="javascript:ViewCheck('<%#DataBinder.Eval(Container.DataItem, "CheckID")%>','0')">View</a>
                                    </ItemTemplate>
                              </ASP:TemplateField>
                              <ASP:TemplateField HeaderText="Back" FooterStyle-CssClass="red">
                                    <ItemTemplate>
                                        <a href="javascript:ViewCheck('<%#DataBinder.Eval(Container.DataItem, "CheckID")%>','1')">View</a>
                                    </ItemTemplate>
                              </ASP:TemplateField>                              
                              <asp:BoundField DataField = "Run"              HeaderText="Run"              ItemStyle-Wrap ="false"  HeaderStyle-Wrap="False" />       
                              <asp:BoundField DataField = "BranchName"       HeaderText="Branch"           ItemStyle-Wrap ="false"  HeaderStyle-Wrap="False" />       
                              <asp:BoundField DataField = "ClearingType"     HeaderText="Type"             ItemStyle-Wrap ="false"  HeaderStyle-Wrap="False" />       
                              <asp:BoundField DataField = "CheckActNo"       HeaderText="Account No."      ItemStyle-Wrap ="false"  HeaderStyle-Wrap="False" />       
                              <asp:BoundField DataField = "CheckSLNo"        HeaderText="SL No."           ItemStyle-Wrap ="false"  HeaderStyle-Wrap="False" />       
                              <asp:BoundField DataField = "CheckTransCode"   HeaderText="TC"               ItemStyle-Wrap ="false"  HeaderStyle-Wrap="False" ItemStyle-HorizontalAlign="Right" />       
                              <asp:BoundField DataField = "CheckAmount"      HeaderText="Amount"           ItemStyle-Wrap ="false"  HeaderStyle-Wrap="False" ItemStyle-HorizontalAlign="Right"  DataFormatString="{0:F2}" />       
                              <asp:BoundField DataField = "ReturnReason"     HeaderText="Return Reason"    ItemStyle-Wrap ="false"  HeaderStyle-Wrap="False" />       
                        </Columns>
                    </asp:GridView>                   
                 </div>
                 Total: <asp:Label ID="Label1" runat="server" />
                 <!---------------------------------->
                <br />
                <asp:Label ID="Msg" CssClass="NormalRed" runat="Server"></asp:Label><br />
                <br />
                <table>
                    <tr>
                        <td><asp:CheckBox id="CheckAll" runat="server" Text="Select All" CssClass="NormalBold" AutoPostBack="true" OnCheckedChanged="CheckAll_CheckedChanged" /></td>
                        <td><asp:Button ID="SendToPBM"  Text="Generate ORE " runat="server" OnClick="SendToPBM_Click" CssClass="inputlt"  /></td>
                        <td width="50"></td>
                        <td><asp:Button ID="GoToList" Text="Go Straight to ORE Files" CssClass="inputlt" runat="server" OnClick="GoToList_Click"  /></td>
                        <td width="100"></td>
                        <td><asp:LinkButton ID="BtnEmptyCart" CssClass="CommandButton" runat="server" Text="Empty Cart" OnClick="BtnEmptyCart_Click"></asp:LinkButton></td>
                    </tr>
               </table>               
            </td>
         </tr>
      </table>
    </div>
    </form>
</body>
</html>
