<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ErrorFolders.aspx.cs" Inherits="FloraSoft.ErrorFolders" %>

<%@ Register Src="Modules/ErrorFolder.ascx" TagName="ErrorFolder" TagPrefix="uc2" %>

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
         <div class="Head" align="center">Flora Cheque Processing: PBM Error Folders</div>
  <div>
    <table>
        <tr>
            <td width="80"></td>
            <td valign="top" class="NormalBold"><uc2:ErrorFolder ID="ErrorFolder1" runat="server" />
            </td>
         </tr>
      </table>
    </div>
    </form>
</body>
</html>
