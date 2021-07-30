<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Page Language="C#" AutoEventWireup="true" EnableViewState="false" CodeBehind="Default.aspx.cs" Inherits="FloraSoft._Default" %>
<%@ Register Src="modules/ICEBranchStatus.ascx"      TagName="ICEBranchStatus"   TagPrefix="uc17" %>
<%@ Register Src="Modules/ICECCYStatus.ascx"         TagName="ICECCYStatus"      TagPrefix="uc16" %>
<%@ Register Src="Modules/OCECCYStatus.ascx"         TagName="OCECCYStatus"      TagPrefix="uc15" %>
<%@ Register Src="Modules/AdminPP.ascx"              TagName="AdminPP"           TagPrefix="uc14" %>
<%@ Register Src="Modules/AdminCBS.ascx"             TagName="AdminCBS"          TagPrefix="uc13" %>
<%@ Register Src="Modules/ICERejectedStatus.ascx"    TagName="ICERejectedStatus" TagPrefix="uc12" %>
<%@ Register Src="Modules/AdminLinks.ascx"           TagName="AdminLinks"        TagPrefix="uc11" %>
<%@ Register Src="Modules/OutwardAckCount.ascx"      TagName="OutwardAckCount"   TagPrefix="uc10" %>
<%@ Register Src="Modules/PBMMismatch.ascx"          TagName="PBMMismatch"       TagPrefix="uc9" %>
<%@ Register Src="Modules/ErrorFolder.ascx"          TagName="ErrorFolder"       TagPrefix="uc8" %>
<%@ Register Src="Modules/AdminButtons.ascx"         TagName="AdminButtons"      TagPrefix="uc7" %>
<%@ Register Src="Modules/BranchSettlement.ascx"     TagName="BranchSettlement"  TagPrefix="uc6" %>
<%@ Register Src="Modules/BankSettlement.ascx"       TagName="BankSettlement"    TagPrefix="uc5" %>
<%@ Register Src="Modules/RunCount.ascx"             TagName="RunCount"          TagPrefix="uc4" %>
<%@ Register Src="modules/ICEBranchStatusSmall.ascx" TagName="ICEBranchStatusSmall"   TagPrefix="uc3" %>
<%@ Register Src="modules/OCEBranchStatus.ascx"      TagName="OCEBranchStatus"        TagPrefix="uc2" %>
<%@ Register Src="modules/AdminOpManagerHeader.ascx" TagName="AdminOpManagerHeader"   TagPrefix="uc1" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <!--<meta http-equiv="refresh" content="15" />-->
    <title>PBM Monitor</title>
    <link href="includes/sitec.css" rel="stylesheet" type="text/css" /> 
    <meta http-equiv="refresh" content="15;default.aspx" />
</head>
<body topmargin="0" leftmargin="0">
    <form id="form1" runat="server" >
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="true" LoadScriptsBeforeUI="true"  EnablePageMethods="true"> 
            <Scripts> 
                   <asp:ScriptReference Path="JScript.js" />       
            </Scripts> 
        </asp:ScriptManager>
        <table border="0" cellpadding="0" cellspacing="0" width="1240" height="600">
            <tr><td colspan="4"><uc1:AdminOpManagerHeader ID="AdminOpManagerHeader1" runat="server" /></td></tr>
            <tr>
                <td valign="top">
                    <!----------------------LEFT PANE----------------------------->
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate> 
                            <uc2:OCEBranchStatus id="OCEBranchStatus1" Height="78px" ClearingType="9"  runat="server" />
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                        </Triggers> 
                    </asp:UpdatePanel>
                   <table height="3"><tr><td></td></tr></table>
                   <asp:UpdatePanel ID="UpdatePanel3" runat="server"> 
                        <ContentTemplate> 
                            <uc2:OCEBranchStatus id="OCEBranchStatus2" Height="78px" ClearingType="1"  runat="server" />
                        </ContentTemplate> 
                         <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                        </Triggers> 
                   </asp:UpdatePanel> 
                    <table height="3"><tr><td></td></tr></table>
                     <asp:UpdatePanel ID="UpdatePanel5" runat="server"> 
                        <ContentTemplate> 
                            <uc15:OCECCYStatus ID="OCECCYStatus1" ClearingType="9" Height="65px" runat="server" />
                        </ContentTemplate> 
                         <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                        </Triggers> 
                   </asp:UpdatePanel> 
                   <table height="3"><tr><td></td></tr></table>
                   <asp:UpdatePanel ID="UpdatePanel7" runat="server"> 
                        <ContentTemplate> 
                            <uc15:OCECCYStatus ID="OCECCYStatus2"  ClearingType="1"   Height="65px" runat="server" />
                        </ContentTemplate>  
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                        </Triggers> 
                    </asp:UpdatePanel> 
                    <!------------------END LEFT PANE----------------------------->
                </td>
                <td valign="top">
                    <!----------------------CENTER PANE----------------------------->
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server"> 
                        <ContentTemplate> 
                            <uc17:ICEBranchStatus ID="ICEBranchSatus1" Height="78px" ECEType="19" runat="server" />
                        </ContentTemplate>  
                            <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                        </Triggers> 
                    </asp:UpdatePanel>
                   <table height="3"><tr><td></td></tr></table>
                    <asp:UpdatePanel ID="UpdatePanel4" runat="server"> 
                        <ContentTemplate> 
                            <uc17:ICEBranchStatus ID="ICEBranchStatus2" Height="78px" ECEType="11" runat="server" />
                       </ContentTemplate> 
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                        </Triggers> 
                    </asp:UpdatePanel>
                   <table height="3"><tr><td></td></tr></table>
                    <asp:UpdatePanel ID="UpdatePanel6" runat="server"> 
                        <ContentTemplate> 
                            <uc16:ICECCYStatus ID="ICECCYStatus1" Height="65px" ECEType="19"   runat="server" />
                        </ContentTemplate> 
                            <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                        </Triggers> 
                    </asp:UpdatePanel>
                   <table height="3"><tr><td></td></tr></table>
                    <asp:UpdatePanel ID="UpdatePanel8" runat="server"> 
                        <ContentTemplate> 
                            <uc16:ICECCYStatus ID="ICECCYStatus2" Height="65px" ECEType="11" runat="server" />
                        </ContentTemplate>  
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                        </Triggers> 
                    </asp:UpdatePanel>
                    <!------------------END CENTER PANE----------------------------->
                </td>
                <td valign="top">
                    <!----------------------MENU PANE----------------------------->
                    <uc7:AdminButtons id="AdminButtons1" runat="server" />
                    <!------------------END MENU PANE----------------------------->
                </td>
                <td valign="top">
                    <!----------------------RIGHT PANE----------------------------->
                    <asp:UpdatePanel ID="UpdatePanel9" runat="server"> 
                        <ContentTemplate> 
                            <uc4:RunCount id="RunCount1" runat="server" />
                        </ContentTemplate> 
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                    </Triggers> 
                    </asp:UpdatePanel>
                    <asp:UpdatePanel ID="UpdatePanel11" runat="server"> 
                    <ContentTemplate> 
                        <uc10:OutwardAckCount ID="OutwardAckCount1" runat="server" />
                    </ContentTemplate> 
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                    </Triggers> 
                    </asp:UpdatePanel> 
                    <table height="3"><tr><td></td></tr></table>
                    <uc11:AdminLinks ID="AdminLinks1" runat="server" />
                    <!------------------END RIGHT PANE----------------------------->
                </td>
            </tr>
        </table>
        <asp:Timer ID="Timer1" Interval="10000" runat="server" OnTick="Timer1_Tick" />
    </form>
</body>
</html>

