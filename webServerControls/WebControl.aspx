<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebControl.aspx.cs" Inherits="webServerControls.WebControl" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Get a Quote for your custom project</h1>
    <p class="lead">Base price: <asp:Literal ID="ltBasePrice" runat="server"></asp:Literal></p>

    <div>
        <label>Your state</label>
        <asp:DropDownList ID="DropDownList1" CssClass="form-control" OnSelectedIndexChanged="ddlStates_SelectedIndexChanged" AutoPostBack="true" runat="server">
            <asp:ListItem Text="Select a State" Value="" />
            <asp:ListItem Text="New York" Value="NY" />
            <asp:ListItem Text="California" Value="CA" />
            <asp:ListItem Text="Texas" Value="TX" />
            <asp:ListItem Text="Florida" Value="FL" />
        </asp:DropDownList>
    </div>
    <div>
        <h3>
            Your custom Price: <asp:Literal ID="Literal1" runat="server" Text="(Select your state to get price)" />
        </h3>
    </div>
</asp:Content>

