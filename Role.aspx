<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Role.aspx.cs" Inherits="_20048872_BishadDangol.Role" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;ROLE&quot; WHERE &quot;ROLEID&quot; = :ROLEID" InsertCommand="INSERT INTO &quot;ROLE&quot; (&quot;ROLEID&quot;, &quot;JOBID&quot;, &quot;ROLENAME&quot;, &quot;ROLEDESCRIPTION&quot;) VALUES (:ROLEID, :JOBID, :ROLENAME, :ROLEDESCRIPTION)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;ROLE&quot;" UpdateCommand="UPDATE &quot;ROLE&quot; SET &quot;JOBID&quot; = :JOBID, &quot;ROLENAME&quot; = :ROLENAME, &quot;ROLEDESCRIPTION&quot; = :ROLEDESCRIPTION WHERE &quot;ROLEID&quot; = :ROLEID">
        <DeleteParameters>
            <asp:Parameter Name="ROLEID" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ROLEID" Type="Decimal" />
            <asp:Parameter Name="JOBID" Type="Decimal" />
            <asp:Parameter Name="ROLENAME" Type="String" />
            <asp:Parameter Name="ROLEDESCRIPTION" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="JOBID" Type="Decimal" />
            <asp:Parameter Name="ROLENAME" Type="String" />
            <asp:Parameter Name="ROLEDESCRIPTION" Type="String" />
            <asp:Parameter Name="ROLEID" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <div>
                <h2 Style="text-align:center">ROLE</h2>
    </div>
    <asp:GridView ID="GridView1" style="margin-top: 20px;"  CssClass="table " runat="server" AutoGenerateColumns="False" DataKeyNames="ROLEID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns >
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ROLEID" HeaderText="ROLEID" ReadOnly="True" SortExpression="ROLEID" />
            <asp:BoundField DataField="JOBID" HeaderText="JOBID" SortExpression="JOBID" />
            <asp:BoundField DataField="ROLENAME" HeaderText="ROLENAME" SortExpression="ROLENAME" />
            <asp:BoundField DataField="ROLEDESCRIPTION" HeaderText="ROLEDESCRIPTION" SortExpression="ROLEDESCRIPTION" />
        </Columns>
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
    <a class="btn btn-info" style="margin-top: 12px;" href="RoleAdd.aspx">Add Role</a>
</asp:Content>
