<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PickListReport.aspx.cs" Inherits="GroceryListWebsite.demopages.PickListReport" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <rsweb:ReportViewer ID="PickListReportViewer" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Height="800px" Width="100%">

        <LocalReport ReportPath="Report\PickListReport.rdlc">
            <DataSources>
                <rsweb:ReportDataSource Name="PickListReportDS" DataSourceId="PickListReportViewerODS"></rsweb:ReportDataSource>
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
    <asp:ObjectDataSource ID="PickListReportViewerODS" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="PickListReport_Get" TypeName="GroceryListSystem.BLL.OrderListsController">

    </asp:ObjectDataSource>
</asp:Content>
