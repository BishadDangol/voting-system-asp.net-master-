<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmployeeMonth.aspx.cs" Inherits="_20048872_BishadDangol.EmployeeMonth" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;VOTINGYEAR&quot; FROM &quot;VOTINGDETAIL&quot;"></asp:SqlDataSource>
<asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="VOTINGYEAR" DataValueField="VOTINGYEAR">
</asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;VOTINGMONTH&quot; FROM &quot;VOTINGDETAIL&quot;"></asp:SqlDataSource>
<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="VOTINGMONTH" DataValueField="VOTINGMONTH">
</asp:DropDownList>
<asp:GridView ID="GridView1" Style="margin-top: 20px;" CssClass="table " runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT *
FROM (SELECT v.CANDIDATEID, e.EMPLOYEENAME, e.DATEOFBIRTH, COUNT(v.CANDIDATEID) as VOTE_COUNT
FROM VOTINGDETAIL v
JOIN EMPLOYEE e ON v.CANDIDATEID = e.EMPLOYEEID
WHERE VOTINGMONTH =:month AND VOTINGYEAR =:year
GROUP BY v.CANDIDATEID, e.EMPLOYEENAME, e.DATEOFBIRTH
ORDER BY VOTE_COUNT DESC)
WHERE ROWNUM &lt;= 3">
    <SelectParameters>
        <asp:ControlParameter ControlID="DropDownList1" Name="month" PropertyName="SelectedValue" />
        <asp:ControlParameter ControlID="DropDownList2" Name="year" PropertyName="SelectedValue" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>
