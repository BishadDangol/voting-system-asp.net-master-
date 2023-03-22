<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Address.aspx.cs" Inherits="_20048872_BishadDangol.Address" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
                <h2 Style="text-align:center">ADDRESS</h2>
    </div>
    <asp:GridView ID="GridView1" style="margin-top: 20px;"  CssClass="table " runat="server" AutoGenerateColumns="False" DataKeyNames="ADDRESSID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="ADDRESSID" HeaderText="ADDRESSID" ReadOnly="True" SortExpression="ADDRESSID" />
        <asp:BoundField DataField="COUNTRY" HeaderText="COUNTRY" SortExpression="COUNTRY" />
        <asp:BoundField DataField="CITY" HeaderText="CITY" SortExpression="CITY" />
        <asp:BoundField DataField="POSTALCODE" HeaderText="POSTALCODE" SortExpression="POSTALCODE" />
        <asp:BoundField DataField="STATE" HeaderText="STATE" SortExpression="STATE" />
        <asp:BoundField DataField="AREA" HeaderText="AREA" SortExpression="AREA" />
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
<asp:FormView ID="FormView1" runat="server" DataKeyNames="ADDRESSID" DataSourceID="SqlDataSource1">
    <EditItemTemplate>
        ADDRESSID:
        <asp:Label ID="ADDRESSIDLabel1" runat="server" Text='<%# Eval("ADDRESSID") %>' />
        <br />
        COUNTRY:
        <asp:TextBox ID="COUNTRYTextBox" runat="server" Text='<%# Bind("COUNTRY") %>' />
        <br />
        CITY:
        <asp:TextBox ID="CITYTextBox" runat="server" Text='<%# Bind("CITY") %>' />
        <br />
        POSTALCODE:
        <asp:TextBox ID="POSTALCODETextBox" runat="server" Text='<%# Bind("POSTALCODE") %>' />
        <br />
        STATE:
        <asp:TextBox ID="STATETextBox" runat="server" Text='<%# Bind("STATE") %>' />
        <br />
        AREA:
        <asp:TextBox ID="AREATextBox" runat="server" Text='<%# Bind("AREA") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <%--<InsertItemTemplate>
        ADDRESSID:
        <asp:TextBox ID="ADDRESSIDTextBox" runat="server" Text='<%# Bind("ADDRESSID") %>' />
        <br />
        COUNTRY:
        <asp:TextBox ID="COUNTRYTextBox" runat="server" Text='<%# Bind("COUNTRY") %>' />
        <br />
        CITY:
        <asp:TextBox ID="CITYTextBox" runat="server" Text='<%# Bind("CITY") %>' />
        <br />
        POSTALCODE:
        <asp:TextBox ID="POSTALCODETextBox" runat="server" Text='<%# Bind("POSTALCODE") %>' />
        <br />
        STATE:
        <asp:TextBox ID="STATETextBox" runat="server" Text='<%# Bind("STATE") %>' />
        <br />
        AREA:
        <asp:TextBox ID="AREATextBox" runat="server" Text='<%# Bind("AREA") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>--%>

    <InsertItemTemplate>
            <div class="form-group">
                <label for="ADDRESSIDTextBox">ADDRESS ID:</label>
                <asp:TextBox ID="ADDRESSIDTextBox" runat="server" CssClass="form-control" Text='<%# Bind("ADDRESSID") %>' />
            </div>
            <div class="form-group">
                <label for="COUNTRYTextBox">COUNTRY:</label>
                <asp:TextBox ID="COUNTRYTextBox" runat="server" CssClass="form-control" Text='<%# Bind("COUNTRY") %>' />
            </div>
      
            <div class="form-group">
                <label for="CITYTextBox">CITY:</label>
                <asp:TextBox ID="CITYTextBox" runat="server" CssClass="form-control" Text='<%# Bind("CITY") %>' />
            </div>
            <div class="form-group">
                <label for="POSTALCODETextBox">POSTAL CODE:</label>
                <asp:TextBox ID="POSTALCODETextBox" runat="server" CssClass="form-control" Text='<%# Bind("POSTALCODE") %>' />
            </div>
            <div class="form-group">
                <label for="STATETextBox">STATE:</label>
                <asp:TextBox ID="STATETextBox" runat="server" CssClass="form-control" Text='<%# Bind("STATE") %>' />
            </div>
            <div class="form-group">
                <label for="AREATextBox">AREA:</label>
                <asp:TextBox ID="AREATextBox" runat="server" CssClass="form-control" Text='<%# Bind("AREA") %>' />
            </div>
            <div class="btn-group">
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" CssClass="btn btn-primary" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn btn-warning" Text="Cancel" />

            </div>
        </InsertItemTemplate>
        <ItemTemplate>
            <asp:LinkButton CssClass="btn btn-primary" ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="ADD ADDRESS" />
        </ItemTemplate>

    <%--<ItemTemplate>
        ADDRESSID:
        <asp:Label ID="ADDRESSIDLabel" runat="server" Text='<%# Eval("ADDRESSID") %>' />
        <br />
        COUNTRY:
        <asp:Label ID="COUNTRYLabel" runat="server" Text='<%# Bind("COUNTRY") %>' />
        <br />
        CITY:
        <asp:Label ID="CITYLabel" runat="server" Text='<%# Bind("CITY") %>' />
        <br />
        POSTALCODE:
        <asp:Label ID="POSTALCODELabel" runat="server" Text='<%# Bind("POSTALCODE") %>' />
        <br />
        STATE:
        <asp:Label ID="STATELabel" runat="server" Text='<%# Bind("STATE") %>' />
        <br />
        AREA:
        <asp:Label ID="AREALabel" runat="server" Text='<%# Bind("AREA") %>' />
        <br />
        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
    </ItemTemplate>--%>
</asp:FormView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;ADDRESS&quot; WHERE &quot;ADDRESSID&quot; = :ADDRESSID" InsertCommand="INSERT INTO &quot;ADDRESS&quot; (&quot;ADDRESSID&quot;, &quot;COUNTRY&quot;, &quot;CITY&quot;, &quot;POSTALCODE&quot;, &quot;STATE&quot;, &quot;AREA&quot;) VALUES (:ADDRESSID, :COUNTRY, :CITY, :POSTALCODE, :STATE, :AREA)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;ADDRESS&quot;" UpdateCommand="UPDATE &quot;ADDRESS&quot; SET &quot;COUNTRY&quot; = :COUNTRY, &quot;CITY&quot; = :CITY, &quot;POSTALCODE&quot; = :POSTALCODE, &quot;STATE&quot; = :STATE, &quot;AREA&quot; = :AREA WHERE &quot;ADDRESSID&quot; = :ADDRESSID">
    <DeleteParameters>
        <asp:Parameter Name="ADDRESSID" Type="Decimal" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="ADDRESSID" Type="Decimal" />
        <asp:Parameter Name="COUNTRY" Type="String" />
        <asp:Parameter Name="CITY" Type="String" />
        <asp:Parameter Name="POSTALCODE" Type="Decimal" />
        <asp:Parameter Name="STATE" Type="String" />
        <asp:Parameter Name="AREA" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="COUNTRY" Type="String" />
        <asp:Parameter Name="CITY" Type="String" />
        <asp:Parameter Name="POSTALCODE" Type="Decimal" />
        <asp:Parameter Name="STATE" Type="String" />
        <asp:Parameter Name="AREA" Type="String" />
        <asp:Parameter Name="ADDRESSID" Type="Decimal" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
