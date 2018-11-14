<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Video.aspx.cs" Inherits="Video" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Pid" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                Pid:
                <asp:Label ID="PidLabel" runat="server" Text='<%# Eval("Pid") %>' />
                <br />
                Rid:
                <asp:Label ID="RidLabel" runat="server" Text='<%# Eval("Rid") %>' />
                <br />
                Sid:
                <asp:Label ID="SidLabel" runat="server" Text='<%# Eval("Sid") %>' />
                <br />
                Title:
                <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                <br />
                Price:
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                <br />
                Quantity:
                <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' />
                <br />
                NeedProduct:
                <asp:Label ID="NeedProductLabel" runat="server" Text='<%# Eval("NeedProduct") %>' />
                <br />
                Aid:
                <asp:Label ID="AidLabel" runat="server" Text='<%# Eval("Aid") %>' />
                <br />
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                <br />
                Img1:
                <asp:Label ID="Img1Label" runat="server" Text='<%# Eval("Img1") %>' />
                <br />
                Img2:
                <asp:Label ID="Img2Label" runat="server" Text='<%# Eval("Img2") %>' />
                <br />
                Img3:
                <asp:Label ID="Img3Label" runat="server" Text='<%# Eval("Img3") %>' />
                <br />
                Date:
                <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                <br />
                NpDescription:
                <asp:Label ID="NpDescriptionLabel" runat="server" Text='<%# Eval("NpDescription") %>' />
                <br />
                NpSid:
                <asp:Label ID="NpSidLabel" runat="server" Text='<%# Eval("NpSid") %>' />
                <br />
                Video:
                <video width="320" height="240" controls>
  <source src='<%# Eval("Video") %>' type="video/mp4">
  
Your browser does not support the video tag.
</video>
                <asp:Label ID="VideoLabel" runat="server" Text='<%# Eval("Video") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SwapshopConnectionString %>" SelectCommand="SELECT * FROM [Product ]"></asp:SqlDataSource>
            </form>
</body>
</html>
