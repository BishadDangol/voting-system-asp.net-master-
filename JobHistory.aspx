<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="JobHistory.aspx.cs" Inherits="_20048872_BishadDangol.JobHistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM JOBHISTORY WHERE EMPLOYEEID=:EMPLOYEE AND ENDDATE IS NOT NULL">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="EMPLOYEE" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DropDownList ID="DropDownList1" style="margin-top: 20px;" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="EMPLOYEENAME" DataValueField="EMPLOYEEID">
    </asp:DropDownList>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="EMPLOYEEID" DataSourceID="SqlDataSource3">
        <ItemTemplate>
            EMPLOYEEID:
            <asp:Label ID="EMPLOYEEIDLabel" runat="server" Text='<%# Eval("EMPLOYEEID") %>' />
            <br />
            EMPLOYEENAME:
            <asp:Label ID="EMPLOYEENAMELabel" runat="server" Text='<%# Eval("EMPLOYEENAME") %>' />
            <br />
            DATEOFBIRTH:
            <asp:Label ID="DATEOFBIRTHLabel" runat="server" Text='<%# Eval("DATEOFBIRTH") %>' />
            <br />
            SALARY:
            <asp:Label ID="SALARYLabel" runat="server" Text='<%# Eval("SALARY") %>' />
            <br />
            CONTACTNUMBER:
            <asp:Label ID="CONTACTNUMBERLabel" runat="server" Text='<%# Eval("CONTACTNUMBER") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM EMPLOYEE WHERE EMPLOYEEID=:employee">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="employee" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <div>
                <h2 Style="text-align:center">JOB HISTORY</h2>
    </div>
    <asp:GridView ID="GridView1" style="margin-top: 20px;"  CssClass="table " runat="server" AutoGenerateColumns="False" DataKeyNames="JOBHISTORYID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="JOBHISTORYID" HeaderText="JOBHISTORYID" ReadOnly="True" SortExpression="JOBHISTORYID" />
            <asp:BoundField DataField="EMPLOYEEID" HeaderText="EMPLOYEEID" SortExpression="EMPLOYEEID" />
            <asp:BoundField DataField="DEPARTMENTID" HeaderText="DEPARTMENTID" SortExpression="DEPARTMENTID" />
            <asp:BoundField DataField="ROLEID" HeaderText="ROLEID" SortExpression="ROLEID" />
            <asp:BoundField DataField="STARTDATE" HeaderText="STARTDATE" SortExpression="STARTDATE" />
            <asp:BoundField DataField="ENDDATE" HeaderText="ENDDATE" SortExpression="ENDDATE" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;EMPLOYEEID&quot;, &quot;EMPLOYEENAME&quot; FROM &quot;EMPLOYEE&quot;"></asp:SqlDataSource>
</asp:Content>
