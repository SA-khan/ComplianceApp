﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/FrontendWithoutSidebar.Master" AutoEventWireup="true" CodeBehind="ReportInvestorsData.aspx.cs" Inherits="Compliance_App.ContentPages.ReportInvestorsData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
    <br />
        <asp:Label ID="Label1" runat="server" Text="Investor Data Report" CssClass="BaseName"></asp:Label>
    <br />
    <br />
    <table style="margin-left:10px;">
        <tr>
            <td><asp:Button ID="Button1" runat="server" Text="CLEAR DATA" OnClick="Button1_Click" /></td>
        </tr>
    </table>
    
    <br />
    <asp:Panel ID="Panel1" runat="server" ScrollBars="Both" Height="500">
    <asp:GridView ID="GridView1" style="margin-left:10px;" runat="server" HeaderStyle-BackColor="Black" HeaderStyle-ForeColor="White" AlternatingRowStyle-BackColor="LightGray"></asp:GridView>
        </asp:Panel>
        </ContentTemplate></asp:UpdatePanel>
</asp:Content>