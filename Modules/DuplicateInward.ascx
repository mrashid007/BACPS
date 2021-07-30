<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DuplicateInward.ascx.cs" Inherits="FloraSoft.DuplicateInward" %>
    <table border="0" cellpadding="2" cellspacing="0" width="100%">
        <tr>
            <td>
                <asp:GridView ID="CheckGrid" runat="server"
                    Width="260px" BorderWidth="0px" GridLines="None"
                    AutoGenerateColumns="False"  CellPadding="5" ShowFooter="false" 
                    CellSpacing="1" AlternatingRowStyle-BackColor="#ffffff"                    
                    RowStyle-BackColor="#dee9fc" RowStyle-CssClass="Normal" 
                    HeaderStyle-CssClass="GrayBackWhiteFont">
                   <Columns>
                       <asp:BoundField  DataField = "SettlementDate"    HeaderText="Date"     ItemStyle-Wrap ="false" ItemStyle-HorizontalAlign="Center" HeaderStyle-Wrap="False" />
                       <asp:BoundField  DataField = "RepInd"            HeaderText="Rep"   ItemStyle-Wrap ="false" ItemStyle-HorizontalAlign="Right"  HeaderStyle-Wrap="False"  />
                       <asp:BoundField  DataField = "ReturnReason"      HeaderText="ReturnReason"   ItemStyle-Wrap ="false" ItemStyle-HorizontalAlign="Right"  HeaderStyle-Wrap="False" />
                       <asp:BoundField  DataField = "QueueName"         HeaderText="Queue"   ItemStyle-Wrap ="false" ItemStyle-HorizontalAlign="Right"  HeaderStyle-Wrap="False" />
                    </Columns>	
               </asp:GridView>
            </td>
        </tr>
    </table>