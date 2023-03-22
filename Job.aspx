<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Job.aspx.cs" Inherits="_20048872_BishadDangol.Job" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;JOB&quot; WHERE &quot;JOBID&quot; = :JOBID" InsertCommand="INSERT INTO &quot;JOB&quot; (&quot;JOBID&quot;, &quot;JOBNAME&quot;, &quot;JOBDESCRIPTION&quot;, &quot;MINSALARY&quot;, &quot;MAXSALARY&quot;) VALUES (:JOBID, :JOBNAME, :JOBDESCRIPTION, :MINSALARY, :MAXSALARY)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;JOB&quot;" UpdateCommand="UPDATE &quot;JOB&quot; SET &quot;JOBNAME&quot; = :JOBNAME, &quot;JOBDESCRIPTION&quot; = :JOBDESCRIPTION, &quot;MINSALARY&quot; = :MINSALARY, &quot;MAXSALARY&quot; = :MAXSALARY WHERE &quot;JOBID&quot; = :JOBID">
        <DeleteParameters>
            <asp:Parameter Name="JOBID" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="JOBID" Type="Decimal" />
            <asp:Parameter Name="JOBNAME" Type="String" />
            <asp:Parameter Name="JOBDESCRIPTION" Type="String" />
            <asp:Parameter Name="MINSALARY" Type="Decimal" />
            <asp:Parameter Name="MAXSALARY" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="JOBNAME" Type="String" />
            <asp:Parameter Name="JOBDESCRIPTION" Type="String" />
            <asp:Parameter Name="MINSALARY" Type="Decimal" />
            <asp:Parameter Name="MAXSALARY" Type="Decimal" />
            <asp:Parameter Name="JOBID" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <div>
                <h2 Style="text-align:center">JOB</h2>
    </div>
    <asp:GridView ID="GridView1" Style="margin-top: 20px;" CssClass="table " runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="JOBID" HeaderText="JOBID" SortExpression="JOBID" />
            <asp:BoundField DataField="JOBNAME" HeaderText="JOBNAME" SortExpression="JOBNAME" />
            <asp:BoundField DataField="JOBDESCRIPTION" HeaderText="JOBDESCRIPTION" SortExpression="JOBDESCRIPTION" />
            <asp:BoundField DataField="MINSALARY" HeaderText="MINSALARY" SortExpression="MINSALARY" />
            <asp:BoundField DataField="MAXSALARY" HeaderText="MAXSALARY" SortExpression="MAXSALARY" />
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
    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" OnPageIndexChanging="FormView1_PageIndexChanging">
        <InsertItemTemplate>
            <div class="form-group">
                <label for="JOBIDTextBox">JOBID:</label>
                <asp:TextBox ID="JOBIDTextBox" runat="server" CssClass="form-control" Text='<%# Bind("JOBID") %>' />
            </div>
            <div class="form-group">
                <label for="JOBNAMETextBox">JOBNAME:</label>
                <asp:TextBox ID="JOBNAMETextBox" runat="server" CssClass="form-control" Text='<%# Bind("JOBNAME") %>' />
            </div>
            <div class="form-group">
                <label for="JOBDESCRIPTIONTextBox">JOBDESCRIPTION:</label>
                <asp:TextBox ID="JOBDESCRIPTIONTextBox" runat="server" CssClass="form-control" Text='<%# Bind("JOBDESCRIPTION") %>' />
            </div>
            <div class="form-group">
                <label for="MINSALARYTextBox">MINSALARY:</label>
                <asp:TextBox ID="MINSALARYTextBox" runat="server" CssClass="form-control" Text='<%# Bind("MINSALARY") %>' />
            </div>
            <div class="form-group">
                <label for="MAXSALARYTextBox">MAXSALARY:</label>
                <asp:TextBox ID="MAXSALARYTextBox" runat="server" CssClass="form-control" Text='<%# Bind("MAXSALARY") %>' />
            </div>
            <div class="btn-group">
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" CssClass="btn btn-primary" Text="Insert" />
                <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn btn-secondary" Text="Cancel" />
            </div>
        </InsertItemTemplate>
        <ItemTemplate>
            &nbsp;<asp:LinkButton  CssClass="btn btn-primary" ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="ADD JOB" />
        </ItemTemplate>
    </asp:FormView>
</asp:Content>
