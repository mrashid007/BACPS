<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="FloraSoft.Settings" %>
<%@ Register Src="modules/CommonHeader.ascx" TagName="CommonHeader" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Edit Messages</title>
    <link href="includes/sitec.css" rel="stylesheet" type="text/css" /> 
</head>
<body topmargin="0" leftmargin="0">
    <form id="form1" runat="server">
         <uc1:CommonHeader ID="CommonHeader1" runat="server" />
   <div>
        <div class="Head" align="center">Bank Settings</div>
        
        <table>
            <tr>
                <td width="80"></td>
                <td>
                    <!------------------>
                     <asp:datagrid Id="SettingsGrid"
                        HeaderStyle-CssClass="GrayBackWhiteFont" 
                        FooterStyle-CssClass="GrayBackWhiteFont" 
                        ItemStyle-CssClass="Normal" ItemStyle-BackColor="#dee9fc" ItemStyle-Height="25px"  
                        AlternatingItemStyle-BackColor="#FFFFFF" 
                        runat="server" CellSpacing="1"  CellPadding="5" 
                        autogeneratecolumns="false"  DataKeyField="ItemID" 
                        gridlines="None" borderwidth="0px" ShowFooter="true"  Height="0px" OnItemCommand="SettingsGrid_ItemCommand">
                        <Columns>
                        <asp:EditCommandColumn CausesValidation="False" EditText="Edit" UpdateText="Update" CancelText="Cancel"></asp:EditCommandColumn>
                            <ASP:TemplateColumn HeaderText="Name" FooterStyle-CssClass="red"  ItemStyle-HorizontalAlign="Left"
                                   ItemStyle-Width="350px" >
                                 <ItemTemplate>
                                    <%#DataBinder.Eval(Container.DataItem, "FieldName")%>
                                 </ItemTemplate>
                             </ASP:TemplateColumn>                            
                             <ASP:TemplateColumn HeaderText="Value" FooterStyle-CssClass="red"  ItemStyle-HorizontalAlign="Left"
                                   HeaderStyle-Width="60px" FooterStyle-Width="60px" ItemStyle-Width="60px" >
                                 <ItemTemplate>
                                    <%#DataBinder.Eval(Container.DataItem, "FieldValue")%>
                                 </ItemTemplate>
                                 <EditItemTemplate>
                                     <asp:TextBox ID="TxtValue" Width="60"  runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "FieldValue") %>'></asp:TextBox>
                                </EditItemTemplate>
                            </ASP:TemplateColumn>                  
                            <ASP:TemplateColumn HeaderText="Description" FooterStyle-CssClass="red"  ItemStyle-HorizontalAlign="Left"
                                   HeaderStyle-Width="450px" FooterStyle-Width="450px" ItemStyle-Width="450px" >
                                 <ItemTemplate>
                                    <%#DataBinder.Eval(Container.DataItem, "FieldDesc")%>
                                 </ItemTemplate>
                             </ASP:TemplateColumn>                            
                        </Columns>
                    </asp:datagrid>
                    <!------------------>
                    <asp:Label ID="Msg" runat="server" CssClass="NormalRed"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
