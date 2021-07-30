<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OCEFiles.aspx.cs" Inherits="FloraSoft.OCEFiles" %>
<%@ Register Src="modules/AdminHeader.ascx" TagName="AdminHeader" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Outward XML Files</title>
    <link href="includes/sitec.css" rel="stylesheet" type="text/css" /> 
</head>
<body topmargin="0" leftmargin="0">
    <form id="form1" runat="server">
    <div>
        <uc1:AdminHeader ID="AdminHeader1" runat="server" />
            <div class="Head" align="center">List of Outward XML Files&nbsp;&nbsp;<asp:Label ID="FTPConnectMsg" CssClass="NormalRed" runat="server" ></asp:Label></div>
            
            <asp:DataList ID="FileList" runat="Server" 
                HorizontalAlign="Center"
                ItemStyle-CssClass="Normal" 
                DataKeyField="FileName" RepeatColumns="2" 
                RepeatDirection="Horizontal">            
                <ItemTemplate>
                   <table class="LightBorderTable">
                    <tr>
                        <td width="30"></td>
                        <td valign="top" align="Left">
                            <asp:CheckBox ID="FileCheck" runat="server" />
                        </td>
                        <td class="NormalSmall" align="Left" width="400" nowrap>
                            <a href="<%# DataBinder.Eval(Container.DataItem,"FilePath")%>/<%# DataBinder.Eval(Container.DataItem,"FileName")%>" target="_new"><%# DataBinder.Eval(Container.DataItem,"FileName")%></a>
                        </td>
                    </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            
       <div align="center"><asp:Label ID="Msg" CssClass="NormalRed" runat="server" Text=""></asp:Label></div>
       <table align="Center">
            <tr>
                <td><asp:CheckBox id="CheckAll" runat="server" Text="Select All" CssClass="NormalBold" AutoPostBack="true" OnCheckedChanged="CheckAll_CheckedChanged" /></td>
                <td width="30"></td>
                <td><asp:Button ID="SendBtn" runat="server" CssClass="inputlt" Text="Send To PBM" OnClick="SendBtn_Click" /></td>
                <td width="150"></td>
                <td></td>
                <td width="50"></td>
                <td><asp:LinkButton ID="DeleteBtn" CssClass="CommandButton" runat="Server" Text="Delete" OnClick="DeleteBtn_Click"></asp:LinkButton></td>
            </tr>
       </table>
    </div>
    </form>
</body>
</html>
