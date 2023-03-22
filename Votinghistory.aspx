<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Votinghistory.aspx.cs" Inherits="_20048872_BishadDangol.Votinghistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="EMPLOYEENAME" DataValueField="EMPLOYEEID">
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
                <h2 Style="text-align:center">VOTING HISTORY</h2>
    </div>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM VOTINGDETAIL WHERE VOTERID=:employee">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="employee" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView style="margin-top: 20px;"  CssClass="table " ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="VOTINGDETAILID" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="VOTINGDETAILID" HeaderText="VOTINGDETAILID" ReadOnly="True" SortExpression="VOTINGDETAILID" />
            <asp:BoundField DataField="VOTERID" HeaderText="VOTERID" SortExpression="VOTERID" />
            <asp:BoundField DataField="CANDIDATEID" HeaderText="CANDIDATEID" SortExpression="CANDIDATEID" />
            <asp:BoundField DataField="VOTINGYEAR" HeaderText="VOTINGYEAR" SortExpression="VOTINGYEAR" />
            <asp:BoundField DataField="VOTINGMONTH" HeaderText="VOTINGMONTH" SortExpression="VOTINGMONTH" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" OnSelecting="SqlDataSource1_Selecting" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;EMPLOYEEID&quot;, &quot;EMPLOYEENAME&quot; FROM &quot;EMPLOYEE&quot;"></asp:SqlDataSource>
</asp:Content>
