<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateOCE.aspx.cs" Inherits="FloraSoft.CreateOCE" %>

<%@ Register Src="modules/AdminHeader.ascx" TagName="AdminHeader" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Flora Cheque Processing: Outward to PBM</title>
    <link href="includes/sitec.css" rel="stylesheet" type="text/css" /> 
    <script>
   	    function ShowStatus(cartid)
		{
			var str = 'ShowStatus.aspx?CartID='+cartid;
			window.open(str,'StatusBar','scrollbars=no,width=400,height=360,left=20,top=100');
		}

    </script>
</head>
<body topmargin="0" leftmargin="0">
    <form id="form1" runat="server">
         <uc1:AdminHeader ID="AdminHeader1" runat="server" />
  <div>
    <table>
        <tr>
            <td width="80"></td>
            <td valign="top" class="NormalBold">
                <div class="Head">Flora Cheque Processing: Create OCE</div>
                <!---------------------------------->
                    <div id="AvailDiv" runat="server" style="position:relative;OVERFLOW: auto;WIDTH: 818px; HEIGHT: 385px; TEXT-ALIGN: left">
                    <asp:GridView ID="BatchList" runat="server" Height="0px" 
                        Width="800px" BorderWidth="0px" GridLines="None"
                        AutoGenerateColumns="False"  CellPadding="5" 
                        CellSpacing="1" AlternatingRowStyle-BackColor="#ffffff"
                        RowStyle-BackColor="#dee9fc" RowStyle-CssClass="Normal" 
                        FooterStyle-CssClass="GrayBackWhiteFont"
                        HeaderStyle-CssClass="GrayBackWhiteFontFixedHeader" DataKeyNames="BatchID">
                       <Columns>
                            <asp:TemplateField HeaderText="Select">
                                <ItemTemplate>
                                    <asp:CheckBox ID="Check" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Batch Name" ItemStyle-Wrap="False">
                                <ItemTemplate>
                                    <a href='BatchChecks.aspx?RoutingNo=<%#DataBinder.Eval(Container.DataItem, "PresRoutingNo")%>&ClearingType=<%#DataBinder.Eval(Container.DataItem, "ClearingType")%>&BatchID=<%#DataBinder.Eval(Container.DataItem, "BatchID")%>&BatchName=<%#DataBinder.Eval(Container.DataItem, "BatchName")%>&StatusName=<%#DataBinder.Eval(Container.DataItem, "BatchStatus")%>&BName=<%#DataBinder.Eval(Container.DataItem, "BranchName")%>'><%#DataBinder.Eval(Container.DataItem, "BatchName")%></a>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField = "BankName"          HeaderText="Bank"           ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />
                            <asp:BoundField DataField = "BranchName"        HeaderText="Branch"         ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />
                            <asp:BoundField DataField = "TotalChecks"       HeaderText="Cheques"        ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" ItemStyle-HorizontalAlign="Right" />
                            <asp:BoundField DataField = "RepInd"            HeaderText="Rep. Ind."      ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" ItemStyle-HorizontalAlign="Center" />
                            <asp:BoundField DataField = "ClearingTypeName"  HeaderText="Clearing Type"  ItemStyle-Wrap ="False"  HeaderStyle-Wrap="False" />
                        </Columns>	
                   </asp:GridView>
                    </div>
                    <a id="StatusLink" class="CommandButton" runat="server"></a>
                   <br />
                   <asp:Label ID="Msg" CssClass="NormalRed" runat="Server"></asp:Label><br />
                   <br />
                   <table>
                    <tr>
                        <td><asp:CheckBox id="CheckAll" runat="server" Text="Select All" CssClass="NormalBold" AutoPostBack="true" OnCheckedChanged="CheckAll_CheckedChanged" /></td>
                        <td><asp:Button ID="SendToPBM"  Text="Generate Outward Envelop" runat="server" OnClick="SendToPBM_Click" CssClass="inputlt"  /></td>
                        <td width="50"></td>
                        <td><asp:Button ID="GoToList" Text="Go Straight to OCE Files" CssClass="inputlt" runat="server" OnClick="GoToList_Click"  /></td>
                        <td width="100"></td>
                        <td><asp:LinkButton ID="BtnEmptyCart" CssClass="CommandButton" runat="server" Text="Empty Cart" OnClick="BtnEmptyCart_Click"></asp:LinkButton></td>
                    </tr>
                   </table>                <!---------------------------------->
            </td>
         </tr>
      </table>
    </div>
    </form>
</body>
</html>
