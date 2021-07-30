<%@ Control Language="C#" AutoEventWireup="true" EnableViewState="false" CodeBehind="ICEBranchStatus.ascx.cs" Inherits="FloraSoft.modules.ICEBranchStatus" %>
    <table border="0" cellpadding="0" cellspacing="0" bgcolor="#dee9fc">
     <tr>
        <td>
            <!------------------------------------------------->
             <table width="500px" border="0" class="GrayBackWhiteFont" cellpadding="3" cellspacing="1">
                <tr>
                    <td width="100px" class="NormalBoldSmall" align="center">Branch</td>
                    <td width="42px" class="NormalBoldSmall" align="right">CBS</td>
                    <td width="48px" class="NormalBoldSmall" align="right">MK-PP</td>
                    <td width="35px" class="NormalBoldSmall" align="right">PP</td>
                    <td width="45px" class="NormalBoldSmall" align="right">Maker</td>
                    <td width="35px" class="NormalBoldSmall" align="right">Chckr</td>
                    <td width="35px" class="NormalBoldSmall" align="right">Apprvd</td>
                    <td width="35px" class="NormalBoldSmall" align="right">Admin</td>
                    <td width="35px" class="NormalBoldSmall" align="right">ORE</td>
                    <td width="35px" class="NormalBoldSmall" align="right">Total</td>
                    <td width="22px"></td>
               </tr>
            </table>
            <!------------------------------------------------->
        </td>
    </tr>
    <tr>
        <td>
            <div id="ICEBranchViewDiv" runat="server" style="position:relative;OVERFLOW: auto;WIDTH: 500px; height:100px; TEXT-ALIGN: left">
            <asp:GridView ID="BranchGrid" runat="server" Height="0px" 
                Width="480px" BorderWidth="0px" GridLines="None" BackColor="#dddddd"
                AutoGenerateColumns="False"  CellPadding="5" ShowFooter="false" ShowHeader="false" 
                CellSpacing="1" AlternatingRowStyle-BackColor="#ffffff"
                RowStyle-BackColor="#dee9fc" RowStyle-CssClass="NormalSmall" 
                FooterStyle-CssClass="GrayBackWhiteFont"
                HeaderStyle-CssClass="GrayBackWhiteFont" FooterStyle-HorizontalAlign="Right">
               <Columns>
                   <asp:TemplateField HeaderText="Branch" ItemStyle-Wrap="false" ItemStyle-Width="78px">
                        <ItemTemplate>
                            <a href='BranchInwardList.aspx?CheckRoutingNo=<%#DataBinder.Eval(Container.DataItem, "CheckRoutingNo")%>&ECEType=<%= sECEType%>'><%#DataBinder.Eval(Container.DataItem, "BranchName")%></a>
                        </ItemTemplate>
                   </asp:TemplateField>                   
                   <asp:BoundField  DataField = "C0"    ItemStyle-Width = "40px"   ItemStyle-Wrap ="false" ItemStyle-HorizontalAlign="Right" />
                   <asp:BoundField  DataField = "C1"    ItemStyle-Width = "45px"   ItemStyle-Wrap ="false" ItemStyle-HorizontalAlign="Right" />
                   <asp:BoundField  DataField = "C2"    ItemStyle-Width = "29px"   ItemStyle-Wrap ="false" ItemStyle-HorizontalAlign="Right" />
                   <asp:BoundField  DataField = "C3"    ItemStyle-Width = "37px"   ItemStyle-Wrap ="false" ItemStyle-HorizontalAlign="Right" />
                   <asp:BoundField  DataField = "C4"    ItemStyle-Width = "35px"   ItemStyle-Wrap ="false" ItemStyle-HorizontalAlign="Right" />
                   <asp:BoundField  DataField = "C5"    ItemStyle-Width = "37px"   ItemStyle-Wrap ="false" ItemStyle-HorizontalAlign="Right" />
                   <asp:BoundField  DataField = "C6"    ItemStyle-Width = "40px"   ItemStyle-Wrap ="false" ItemStyle-HorizontalAlign="Right" />
                   <asp:BoundField  DataField = "C7"    ItemStyle-Width = "32px"   ItemStyle-Wrap ="false" ItemStyle-HorizontalAlign="Right" />
                   <asp:BoundField  DataField = "T"     ItemStyle-Width = "40px"   ItemStyle-Wrap ="false" ItemStyle-HorizontalAlign="Right"  />
                </Columns>	
           </asp:GridView>
           </div>
        </td>
    </tr>
    <tr>
        <td>
            <!------------------------------------------------->
             <table width="500px" class="GrayBackWhiteFont" border="0" cellpadding="3" cellspacing="1">
                <tr>
                    <td width="80px" class="NormalBoldSmall"><asp:Label ID="LblTotal" runat="server" /></td>
                    <td width="46px" class="NormalBoldSmall" align="Right"><asp:Label ID="CBS"    runat="server" /></td>
                    <td width="49px" class="NormalBoldSmall" align="Right"><asp:Label ID="MKPP"    runat="server" /></td>
                    <td width="30px" class="NormalBoldSmall" align="Right"><asp:Label ID="PP"    runat="server" /></td>
                    <td width="38px" class="NormalBoldSmall" align="Right"><asp:Label ID="Maker"    runat="server" /></td>
                    <td width="37px" class="NormalBoldSmall" align="Right"><asp:Label ID="Checker"  runat="server" /></td>
                    <td width="38px" class="NormalBoldSmall" align="Right"><asp:Label ID="Approved" runat="server" /></td>
                    <td width="45px" class="NormalBoldSmall" align="Right"><a id="Admin" class="HighlightButton" runat="server"></a></td>
                    <td width="29px" class="NormalBoldSmall" align="Right"><asp:Label ID="ORE"      runat="server" /></td>
                    <td width="42px" class="NormalBoldSmall" align="Right"><asp:Label ID="Total"    runat="server" /></td>
                    <td width="16px"></td>
               </tr>
            </table>
            <!------------------------------------------------->
        </td>
    </tr>
</table>
