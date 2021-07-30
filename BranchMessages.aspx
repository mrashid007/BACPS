<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BranchMessages.aspx.cs" Inherits="FloraSoft.BranchMessages" %>
<%@ Register Src="modules/BranchHeader.ascx" TagName="BranchHeader" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Messages: Flora Cheque Processing and Archiving</title>
    <link href="includes/sitec.css" rel="stylesheet" type="text/css" /> 
</head>
<body topmargin="0" leftmargin="0">
    <form id="form1" runat="server">
     <uc1:BranchHeader ID="BranchHeader1" runat="server" /><br />
    <a href="Default.aspx"></a>
        <div class="Head" align="center">My Messages</div>
        <div><br />
            <table>
                <tr>
                    <td width="80"></td>
                    <td><asp:Label ID="Msg" runat="server" CssClass="NormalRed"></asp:Label></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <!----------------------->
                        <asp:DataList ID="MyDataList" runat="server" CellSpacing="0"  CellPadding="0"  ShowFooter="true" Height="0"
	                            HeaderStyle-CssClass="GrayBackWhiteFont"  
	                            FooterStyle-CssClass="GrayBackWhiteFont"
	                            ItemStyle-BackColor="LightYellow" 
	                            AlternatingItemStyle-BackColor="#FFFFFF">
	                            <ItemTemplate>
	                                <table cellpadding="0" cellspacing="0" border="0"  Class="LightBorderTable" style="width:920px">
	                                    <tr>
	                                        <td class="NormalBold">&nbsp;&nbsp;<%#DataBinder.Eval(Container.DataItem, "MessageFrom")%></td>
	                                        <td class="NormalBold"><%#DataBinder.Eval(Container.DataItem, "MessageDate")%></td>
	                                    </tr>
	                                    <tr><td colspan="2" height="10"></td></tr>
	                                    <tr>
	                                        <td  colspan="2" class="NormalLarge"><%#DataBinder.Eval(Container.DataItem, "MessageText")%></td>
	                                    </tr>
	                               </table>
	                               <table height="20" width="100%"><tr><td bgcolor="#EFEFEF">&nbsp;</td></tr></table>
	                            </ItemTemplate>
	                    </asp:DataList>
                        <!----------------------->
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><a href="Default.aspx" id="btnContinue" runat="server" class="CommandButton">Continue</a></td>
                </tr>
            </table>
            
        </div>
    </form>
</body>
</html>

