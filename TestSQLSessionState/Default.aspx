<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="TestSQLSessionState._Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Increment Number Stored In Session" />
            <br />
            <br />
            <br />
             AbsolutePath : <%=Request.Url.AbsolutePath %>
            <br />
            <br />
             AbsoluteUri : <%=Request.Url.AbsoluteUri %>
            <br />
            <br />
            Value of number before increment : <%= Session("Before") %>
            <br />
            <br />
            Vaue of number after increment : <%= Session("AfterIncrement") %>
            <br />
            <br />
            Current Session ID : <%=Session.SessionID %>           
            <br />
            <br />
            Is new Session : <%=Session.IsNewSession %>
            <br />
            <br />
            Is Session is synchronised : <%=Session.IsSynchronized %>
            <br />
            <br />

            <asp:Button ID="Button2" runat="server" Text="Abandon Session" />
        </div>
    </form>
</body>
</html>
