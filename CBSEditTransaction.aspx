<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CBSEditTransaction.aspx.cs" Inherits="FloraSoft.CBSEditTransaction" %>

<%@ Register Src="modules/AdminOpManagerHeader.ascx" TagName="AdminOpManagerHeader" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>CBS Transaction</title>
    <link href="includes/sitec.css" rel="stylesheet" type="text/css" />
</head>
<body topmargin="0" leftmargin="0">
    <form id="form1" runat="server">
        <uc1:AdminOpManagerHeader ID="AdminOpManagerHeader1" runat="server" />
        <a href="Default.aspx"></a>
        <div class="Head" align="center">
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </div>
        <div style="padding-left: 40px; padding-top: 30px;">
            <table border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td class="Head" align="Center" colspan="2">Transaction Type</td>
                    <td colspan="2">
                        <asp:DropDownList ID="GLTransactionType" runat="server">
                            <asp:ListItem Text="ICE " Value="ICE"></asp:ListItem>
                            <asp:ListItem Text="OCE " Value="OCE"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td colspan="2">
                        <asp:DropDownList ID="SessionType" runat="server">
                            <asp:ListItem Text="HV" Value="HV"></asp:ListItem>
                            <asp:ListItem Text="RV" Value="RV"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td colspan="2">
                        <asp:DropDownList ID="ddlTransactionResult" runat="server">
                            <asp:ListItem Text="Pending" Value="Pending"></asp:ListItem>
                            <asp:ListItem Text="Success" Value="Success"></asp:ListItem>
                            <asp:ListItem Text="Failed" Value="Failed"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:Button ID="btnShow" runat="server" OnClick="btnShow_Click" Text="Show" />
                    </td>
                </tr>
            </table>
        </div>
        <div style="padding-left:30px;">
            <asp:DataGrid ID="CBSTransactioniEditGrid" runat="server"
                AlternatingItemStyle-BackColor="#ffffff" Width="750px"
                AutoGenerateColumns="false" BorderWidth="0px"
                CellPadding="5" CellSpacing="1"
                FooterStyle-CssClass="GrayBackWhiteFont" GridLines="None"
                HeaderStyle-CssClass="GrayBackWhiteFont" Height="0px"
                ItemStyle-BackColor="#dee9fc" PagerStyle-Position="top" AllowPaging="True" PageSize="50"
                ItemStyle-CssClass="Normal" DataKeyField="SlNo"
                ShowFooter="true" OnItemCommand="CBSTransactioniEditGrid_ItemCommand" OnPageIndexChanged="CBSTransactioniEditGrid_PageIndexChanged">
                <Columns>
                    <asp:EditCommandColumn CausesValidation="False" EditText="Edit" UpdateText="Retry" CancelText="Cancel"></asp:EditCommandColumn>
                    <asp:TemplateColumn HeaderText="SLNo" ItemStyle-Wrap="false" ItemStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <%#DataBinder.Eval(Container.DataItem, "SLNo")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="lblSlNo" Width="60" MaxLength="15" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "SlNo") %>'></asp:Label>
                        </EditItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="BranchCD" ItemStyle-Wrap="false" ItemStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <%#DataBinder.Eval(Container.DataItem, "BranchCD")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <%#DataBinder.Eval(Container.DataItem, "BranchCD") %>
                        </EditItemTemplate>
                    </asp:TemplateColumn>

                    <asp:TemplateColumn HeaderText="HV" ItemStyle-Wrap="false" ItemStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <%#DataBinder.Eval(Container.DataItem, "HV")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <%#DataBinder.Eval(Container.DataItem, "HV")%>
                        </EditItemTemplate>
                    </asp:TemplateColumn>

                    <asp:TemplateColumn HeaderText="ValDate" ItemStyle-Wrap="false" ItemStyle-CssClass="NormalSmall" ItemStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <%#DataBinder.Eval(Container.DataItem, "ValDate")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <%#DataBinder.Eval(Container.DataItem, "ValDate")%>
                        </EditItemTemplate>
                    </asp:TemplateColumn>

                    <asp:TemplateColumn HeaderText="BenefAcountNo" ItemStyle-Wrap="false" ItemStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <%#DataBinder.Eval(Container.DataItem, "BenefAcountNo") %>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="BenefAcountNo" Width="120" MaxLength="15" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "BenefAcountNo") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="AmountLCY" ItemStyle-Wrap="false" ItemStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <%#DataBinder.Eval(Container.DataItem, "AmountLCY") %>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <%#DataBinder.Eval(Container.DataItem, "AmountLCY") %>
                        </EditItemTemplate>
                    </asp:TemplateColumn>

                    <asp:TemplateColumn HeaderText="Narration" ItemStyle-Wrap="false" ItemStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <%#DataBinder.Eval(Container.DataItem, "Narration") %>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <%#DataBinder.Eval(Container.DataItem, "Narration") %>
                        </EditItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="CheckNo" ItemStyle-Wrap="false" ItemStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <%#DataBinder.Eval(Container.DataItem, "CheckNo")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <%#DataBinder.Eval(Container.DataItem, "CheckNo")%>
                        </EditItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="CBSResponse" ItemStyle-Wrap="false" ItemStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <%#DataBinder.Eval(Container.DataItem, "CBSResponse")%>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <%#DataBinder.Eval(Container.DataItem, "CBSResponse")%>
                        </EditItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="Retry" ItemStyle-Wrap="false">
                        <ItemTemplate>
                            <asp:LinkButton CausesValidation="false" ID="btnRetry" CommandName="Retry" Text="Retry" runat="server"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                </Columns>
                <PagerStyle PageButtonCount="65" CssClass="PagerStyle" Mode="NumericPages"></PagerStyle>
            </asp:DataGrid>

            <asp:DataGrid ID="CBSTransactioniInwardGrid" runat="server"
                AlternatingItemStyle-BackColor="#ffffff" Width="750px"
                AutoGenerateColumns="false" BorderWidth="0px"
                CellPadding="5" CellSpacing="1"
                FooterStyle-CssClass="GrayBackWhiteFont" GridLines="None"
                HeaderStyle-CssClass="GrayBackWhiteFont" Height="0px"
                ItemStyle-BackColor="#dee9fc" PagerStyle-Position="top" AllowPaging="True" PageSize="50"
                ItemStyle-CssClass="Normal" DataKeyField="SlNo"
                ShowFooter="true" OnPageIndexChanged="CBSTransactioniInwardGrid_PageIndexChanged" OnItemCommand="CBSTransactioniInwardGrid_ItemCommand">
                <Columns>
                    <asp:TemplateColumn HeaderText="Retry" ItemStyle-Wrap="false">
                        <ItemTemplate>
                            <asp:LinkButton CausesValidation="false" ID="btnInwardRetry" CommandName="Retry" Text="Retry" runat="server"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="BranchCD" ItemStyle-Wrap="false" ItemStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <%#DataBinder.Eval(Container.DataItem, "BranchCD")%>
                        </ItemTemplate>
                    </asp:TemplateColumn>

                    <asp:TemplateColumn HeaderText="Status" ItemStyle-Wrap="false" ItemStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <%#DataBinder.Eval(Container.DataItem, "HV")%>
                        </ItemTemplate>
                    </asp:TemplateColumn>

                    <asp:TemplateColumn HeaderText="ValDate" ItemStyle-Wrap="false" ItemStyle-CssClass="NormalSmall" ItemStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <%#DataBinder.Eval(Container.DataItem, "ValDate")%>
                        </ItemTemplate>
                    </asp:TemplateColumn>

                    <asp:TemplateColumn HeaderText="BenefAcountNo" ItemStyle-Wrap="false" ItemStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <%#DataBinder.Eval(Container.DataItem, "BenefAcountNo") %>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="AmountLCY" ItemStyle-Wrap="false" ItemStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <%#DataBinder.Eval(Container.DataItem, "AmountLCY") %>
                        </ItemTemplate>
                    </asp:TemplateColumn>

                    <asp:TemplateColumn HeaderText="Narration" ItemStyle-Wrap="false" ItemStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <%#DataBinder.Eval(Container.DataItem, "Narration") %>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="CheckNo" ItemStyle-Wrap="false" ItemStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <%#DataBinder.Eval(Container.DataItem, "CheckNo")%>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="CBSResponse" ItemStyle-Wrap="false" ItemStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <%#DataBinder.Eval(Container.DataItem, "CBSResponse")%>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                  
                </Columns>
                <PagerStyle PageButtonCount="65" CssClass="PagerStyle" Mode="NumericPages"></PagerStyle>
            </asp:DataGrid>

            <asp:DataGrid ID="CBSPendingGrid" runat="server"
                AlternatingItemStyle-BackColor="#ffffff" Width="750px"
                AutoGenerateColumns="false" BorderWidth="0px"
                CellPadding="5" CellSpacing="1"
                FooterStyle-CssClass="GrayBackWhiteFont" GridLines="None"
                HeaderStyle-CssClass="GrayBackWhiteFont" Height="0px"
                ItemStyle-BackColor="#dee9fc" PagerStyle-Position="top" AllowPaging="True" PageSize="50"
                ItemStyle-CssClass="Normal" DataKeyField="SlNo"
                ShowFooter="true" OnPageIndexChanged="CBSTransactioniInwardGrid_PageIndexChanged" OnItemCommand="CBSTransactioniInwardGrid_ItemCommand">
                <Columns>
                    <asp:TemplateColumn HeaderText="BranchCD" ItemStyle-Wrap="false" ItemStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <%#DataBinder.Eval(Container.DataItem, "BranchCD")%>
                        </ItemTemplate>
                    </asp:TemplateColumn>

                    <asp:TemplateColumn HeaderText="Status" ItemStyle-Wrap="false" ItemStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <%#DataBinder.Eval(Container.DataItem, "HV")%>
                        </ItemTemplate>
                    </asp:TemplateColumn>

                    <asp:TemplateColumn HeaderText="ValDate" ItemStyle-Wrap="false" ItemStyle-CssClass="NormalSmall" ItemStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <%#DataBinder.Eval(Container.DataItem, "ValDate")%>
                        </ItemTemplate>
                    </asp:TemplateColumn>

                    <asp:TemplateColumn HeaderText="BenefAcountNo" ItemStyle-Wrap="false" ItemStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <%#DataBinder.Eval(Container.DataItem, "BenefAcountNo") %>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="AmountLCY" ItemStyle-Wrap="false" ItemStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <%#DataBinder.Eval(Container.DataItem, "AmountLCY") %>
                        </ItemTemplate>
                    </asp:TemplateColumn>

                    <asp:TemplateColumn HeaderText="Narration" ItemStyle-Wrap="false" ItemStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <%#DataBinder.Eval(Container.DataItem, "Narration") %>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="CheckNo" ItemStyle-Wrap="false" ItemStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <%#DataBinder.Eval(Container.DataItem, "CheckNo")%>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="CBSResponse" ItemStyle-Wrap="false" ItemStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <%#DataBinder.Eval(Container.DataItem, "CBSResponse")%>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                  
                </Columns>
                <PagerStyle PageButtonCount="65" CssClass="PagerStyle" Mode="NumericPages"></PagerStyle>
            </asp:DataGrid>

        </div>

    </form>
</body>
</html>

