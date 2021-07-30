<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OnlineCheckList.aspx.cs" Inherits="FloraSoft.OnlineCheckList" %>

<%@ Register Src="modules/CommonHeader.ascx" TagName="CommonHeader" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Online Cheques</title>
    <link href="includes/sitec.css" rel="stylesheet" type="text/css" />
</head>
<body topmargin="0" leftmargin="0">
    <form id="form1" runat="server">
     <uc1:CommonHeader ID="CommonHeader1" runat="server" /><br />
        <a href="Default.aspx"></a>
        <div class="Head" align="center">
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </div>
        <div style="padding-left: 40px; padding-top: 30px;">
            <table border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td colspan="2">
                        <asp:DropDownList ID="SessionType" runat="server">
                            <asp:ListItem Text="HV" Value="HV"></asp:ListItem>
                            <asp:ListItem Text="RV" Value="RV"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td colspan="2">
                        <asp:DropDownList ID="BranchList"  Width="125px" runat="server" DataTextField="BranchName" DataValueField="RoutingNo" />
                    </td>
                    <td>
                        <asp:Button ID="btnShow" runat="server" OnClick="btnShow_Click" Text="Show" />
                    </td>
                </tr>
            </table>
        </div>
        <div style="padding-left:30px;">
        <asp:GridView ID="OnlineSettlementGrid" runat="server"  
                    AlternatingRowStyle-BackColor="lightyellow"
                    AutoGenerateColumns="false" BorderWidth="0px" 
                    CellPadding="5" CellSpacing="2"
                    FooterStyle-CssClass="GrayBackWhiteFont" GridLines="None" 
                    FooterStyle-HorizontalAlign="right"
                    HeaderStyle-CssClass="GrayBackWhiteFont" Height="0px" 
                    RowStyle-BackColor="White"
                    RowStyle-CssClass="NormalSmall"  
                    ShowFooter="true" AllowPaging="false" PageSize="10000" PagerStyle-VerticalAlign="top">
                   <Columns>
                      <ASP:TemplateField HeaderText="Front" FooterStyle-CssClass="red">
                            <ItemTemplate>
                                <a href="javascript:ViewCheck0('<%#DataBinder.Eval(Container.DataItem, "CheckID")%>')">View</a>
                            </ItemTemplate>
                      </ASP:TemplateField>
                      <ASP:TemplateField HeaderText="Back" FooterStyle-CssClass="red">
                            <ItemTemplate>
                                <a href="javascript:ViewCheck1('<%#DataBinder.Eval(Container.DataItem, "CheckID")%>')">View</a>
                            </ItemTemplate>
                      </ASP:TemplateField>                 
                      <asp:BoundField DataField = "Run"                HeaderText="Run"                ItemStyle-Wrap ="false"  ItemStyle-HorizontalAlign="Left"   HeaderStyle-Wrap="False" />       
                      <asp:BoundField DataField = "Bankname"           HeaderText="Bank"               ItemStyle-Wrap ="false"  ItemStyle-HorizontalAlign="Left"   HeaderStyle-Wrap="False" />       
                      <asp:BoundField DataField = "BranchName"         HeaderText="Branch"             ItemStyle-Wrap ="false"  ItemStyle-HorizontalAlign="Left"   HeaderStyle-Wrap="False" />       
                      <asp:BoundField DataField = "PresRoutingNo"      HeaderText="Pres Routing No"    ItemStyle-Wrap ="false"  ItemStyle-HorizontalAlign="Right"  HeaderStyle-Wrap="False" />       
                      <asp:BoundField DataField = "CheckRoutingNo"     HeaderText="Check RoutingNo"    ItemStyle-Wrap ="false"  ItemStyle-HorizontalAlign="Right"  HeaderStyle-Wrap="False" />       
                      <asp:BoundField DataField = "CheckActNo"         HeaderText="Check ActNo"        ItemStyle-Wrap ="false"  ItemStyle-HorizontalAlign="Right"  HeaderStyle-Wrap="False" />       
                      <asp:BoundField DataField = "CheckSLNo"          HeaderText="Check SLNo"         ItemStyle-Wrap ="false"  ItemStyle-HorizontalAlign="Right"  HeaderStyle-Wrap="False" />       
                      <asp:BoundField DataField = "CheckTransCode"     HeaderText="Check TC"           ItemStyle-Wrap ="false"  ItemStyle-HorizontalAlign="Right"  HeaderStyle-Wrap="False" />       
                      <asp:BoundField DataField = "CheckAmount"        HeaderText="CheckAmount"        ItemStyle-Wrap ="false"  ItemStyle-HorizontalAlign="Right"  HeaderStyle-Wrap="False" DataFormatString="{0:F2}" />       
                      <asp:BoundField DataField = "BenefActNo"         HeaderText="Beneficiary"        ItemStyle-Wrap ="false"  ItemStyle-HorizontalAlign="Left"   HeaderStyle-Wrap="False" />           
                      <asp:BoundField DataField = "ReturnReason"       HeaderText="Return Reason"      ItemStyle-Wrap ="false"  ItemStyle-HorizontalAlign="Left"   HeaderStyle-Wrap="False" />           
                      <asp:BoundField DataField = "Charge"             HeaderText="Bank"               ItemStyle-Wrap ="false"  ItemStyle-HorizontalAlign="Left"   HeaderStyle-Wrap="False" />           
                      <asp:BoundField DataField = "BBCharge"           HeaderText="B.B"                ItemStyle-Wrap ="false"  ItemStyle-HorizontalAlign="Left"   HeaderStyle-Wrap="False" />           
                      <asp:BoundField DataField = "VAT"                HeaderText="Vat"                ItemStyle-Wrap ="false"  ItemStyle-HorizontalAlign="Left"   HeaderStyle-Wrap="False" />           
                      <asp:BoundField DataField = "Debit"              HeaderText="Debit"              ItemStyle-Wrap ="false"  ItemStyle-HorizontalAlign="Left"   HeaderStyle-Wrap="False" />           
                      <asp:BoundField DataField = "CBSResponse"        HeaderText="CBSResponse"     ItemStyle-Wrap ="false"  ItemStyle-HorizontalAlign="Left"   HeaderStyle-Wrap="False" />           
                      <asp:BoundField DataField = "CBSReferenceNo"     HeaderText="CBSReferenceNo"     ItemStyle-Wrap ="false"  ItemStyle-HorizontalAlign="Left"   HeaderStyle-Wrap="False" />           
                      <asp:BoundField DataField = "ErrorCode"          HeaderText="ErrorCode"          ItemStyle-Wrap ="false"  ItemStyle-HorizontalAlign="Left"   HeaderStyle-Wrap="False" />                            
                   </Columns>
                 <PagerSettings PageButtonCount="80" Mode="Numeric" />
                 <PagerStyle  CssClass="PagerStyle"></PagerStyle>
             </asp:GridView>

        </div>

    </form>
</body>
</html>

