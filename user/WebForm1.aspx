<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="project_sem_6_.user.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" Visible="False">
                <ContentTemplate>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />
                </ContentTemplate>
                <Triggers>
                    <asp:PostBackTrigger ControlID="Button2" />
                </Triggers>
            </asp:UpdatePanel>
            <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblDate" runat="server" Text=""></asp:Label><br />
            <asp:Label ID="lblMonth" runat="server" Text=""></asp:Label> <br />
            <asp:Label ID="lblYear" runat="server" Text=""></asp:Label><br />
            <asp:Label ID="lblTime" runat="server" Text=""></asp:Label><br />
            <asp:Button ID="btnDisplayDateTime" runat="server" Text="Display Date and Time" OnClick="btnDisplayDateTime_Click"/>
        </div>
    </form>
</body>
</html>
