﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/FrontendWithoutSidebar.Master" AutoEventWireup="true" CodeBehind="ReportMatchingData.aspx.cs" Inherits="Compliance_App.ContentPages.ReportMatchingData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
.BaseName {
    padding:5px;
    margin-left:10px;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
    <br />
        <asp:Label ID="Label1" runat="server" Text="Report Matching Data" BackColor="DarkRed" ForeColor="White" CssClass="BaseName"></asp:Label>
    <br />
    <br />
    <table style="margin-left:10px;">
        <tr>
            <td><asp:Button ID="Button1" runat="server" Text="CLEAR DATA" OnClick="Button1_Click" /></td><td><asp:Button ID="Button2" runat="server" Text="REMATCH DATA" OnClick="Button2_Click" /></td>
        </tr>
    </table>
    
    <br />
    <%--<asp:View ID="View1" runat="server">--%>
    <asp:Panel ID="Panel1" runat="server" ScrollBars="Both" Height="500">
    <asp:GridView ID="GridView1" style="margin-left:10px;" runat="server" HeaderStyle-BackColor="Black" HeaderStyle-ForeColor="White" AlternatingRowStyle-BackColor="LightGray"></asp:GridView>
        </asp:Panel>
<%--        </asp:View>--%>
        </ContentTemplate></asp:UpdatePanel>
</asp:Content>