<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Department.aspx.cs" Inherits="_20048872_BishadDangol.Department" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
                <h2 Style="text-align:center">DEPARTMENT</h2>
    </div>
    <asp:GridView ID="GridView1" Style="margin-top: 20px;" CssClass="table " runat="server" AutoGenerateColumns="False" DataKeyNames="DEPARTMENTID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="DEPARTMENTID" HeaderText="DEPARTMENTID" ReadOnly="True" SortExpression="DEPARTMENTID" />
            <asp:BoundField DataField="DEPARTMENTNAME" HeaderText="DEPARTMENTNAME" SortExpression="DEPARTMENTNAME" />
            <asp:BoundField DataField="LOCATION" HeaderText="LOCATION" SortExpression="LOCATION" />
            <asp:BoundField DataField="DEPARTMENTDESCRIPTION" HeaderText="DEPARTMENTDESCRIPTION" SortExpression="DEPARTMENTDESCRIPTION" />
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
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="DEPARTMENTID" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            DEPARTMENTID:
        <asp:Label ID="DEPARTMENTIDLabel1" runat="server" Text='<%# Eval("DEPARTMENTID") %>' />
            <br />
            DEPARTMENTNAME:
        <asp:TextBox ID="DEPARTMENTNAMETextBox" runat="server" Text='<%# Bind("DEPARTMENTNAME") %>' />
            <br />
            LOCATION:
        <asp:TextBox ID="LOCATIONTextBox" runat="server" Text='<%# Bind("LOCATION") %>' />
            <br />
            DEPARTMENTDESCRIPTION:
        <asp:TextBox ID="DEPARTMENTDESCRIPTIONTextBox" runat="server" Text='<%# Bind("DEPARTMENTDESCRIPTION") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <%-- <InsertItemTemplate>
        DEPARTMENTID:
        <asp:TextBox ID="DEPARTMENTIDTextBox" runat="server" Text='<%# Bind("DEPARTMENTID") %>' />
        <br />
        DEPARTMENTNAME:
        <asp:TextBox ID="DEPARTMENTNAMETextBox" runat="server" Text='<%# Bind("DEPARTMENTNAME") %>' />
        <br />
        LOCATION:
        <asp:TextBox ID="LOCATIONTextBox" runat="server" Text='<%# Bind("LOCATION") %>' />
        <br />
        DEPARTMENTDESCRIPTION:
        <asp:TextBox ID="DEPARTMENTDESCRIPTIONTextBox" runat="server" Text='<%# Bind("DEPARTMENTDESCRIPTION") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>--%>
        <InsertItemTemplate>
            <div class="form-group">
                <label for="DEPARTMENTIDTextBox">DEPARTMENTID:</label>
                <asp:TextBox ID="DEPARTMENTIDTextBox" runat="server" CssClass="form-control" Text='<%# Bind("DEPARTMENTID") %>' />
            </div>
            <div class="form-group">
                <label for="DEPARTMENTNAMETextBox">DEPARTMENT NAME:</label>
                <asp:TextBox ID="DEPARTMENTNAMETextBox" runat="server" CssClass="form-control" Text='<%# Bind("DEPARTMENTNAME") %>' />
            </div>
            <div class="form-group">
                <label for="LOCATIONTextBox">LOCATION:</label>
                <asp:TextBox ID="LOCATIONTextBox" runat="server" CssClass="form-control" Text='<%# Bind("LOCATION") %>' />
            </div>
            <div class="form-group">
                <label for="DEPARTMENTDESCRIPTIONTextBox">DEPARTMENT DESCRIPTION:</label>
                <asp:TextBox ID="DEPARTMENTDESCRIPTIONTextBox" runat="server" CssClass="form-control" Text='<%# Bind("DEPARTMENTDESCRIPTION") %>' />
            </div>
            <div class="btn-group">
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" CssClass="btn btn-primary" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn btn-warning" Text="Cancel" />

            </div>
        </InsertItemTemplate>
        <ItemTemplate>
            <asp:LinkButton  CssClass="btn btn-primary" ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="ADD DEPARTMENT" />
        </ItemTemplate>
        <%-- <ItemTemplate>
            DEPARTMENTID:
        <asp:Label ID="DEPARTMENTIDLabel" runat="server" Text='<%# Eval("DEPARTMENTID") %>' />
            <br />
            DEPARTMENTNAME:
        <asp:Label ID="DEPARTMENTNAMELabel" runat="server" Text='<%# Bind("DEPARTMENTNAME") %>' />
            <br />
            LOCATION:
        <asp:Label ID="LOCATIONLabel" runat="server" Text='<%# Bind("LOCATION") %>' />
            <br />
            DEPARTMENTDESCRIPTION:
        <asp:Label ID="DEPARTMENTDESCRIPTIONLabel" runat="server" Text='<%# Bind("DEPARTMENTDESCRIPTION") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>--%>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;DEPARTMENT&quot; WHERE &quot;DEPARTMENTID&quot; = :DEPARTMENTID" InsertCommand="INSERT INTO &quot;DEPARTMENT&quot; (&quot;DEPARTMENTID&quot;, &quot;DEPARTMENTNAME&quot;, &quot;LOCATION&quot;, &quot;DEPARTMENTDESCRIPTION&quot;) VALUES (:DEPARTMENTID, :DEPARTMENTNAME, :LOCATION, :DEPARTMENTDESCRIPTION)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;DEPARTMENT&quot;" UpdateCommand="UPDATE &quot;DEPARTMENT&quot; SET &quot;DEPARTMENTNAME&quot; = :DEPARTMENTNAME, &quot;LOCATION&quot; = :LOCATION, &quot;DEPARTMENTDESCRIPTION&quot; = :DEPARTMENTDESCRIPTION WHERE &quot;DEPARTMENTID&quot; = :DEPARTMENTID">
        <DeleteParameters>
            <asp:Parameter Name="DEPARTMENTID" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="DEPARTMENTID" Type="Decimal" />
            <asp:Parameter Name="DEPARTMENTNAME" Type="String" />
            <asp:Parameter Name="LOCATION" Type="String" />
            <asp:Parameter Name="DEPARTMENTDESCRIPTION" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="DEPARTMENTNAME" Type="String" />
            <asp:Parameter Name="LOCATION" Type="String" />
            <asp:Parameter Name="DEPARTMENTDESCRIPTION" Type="String" />
            <asp:Parameter Name="DEPARTMENTID" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
