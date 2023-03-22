<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RoleAdd.aspx.cs" Inherits="_20048872_BishadDangol.RoleAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ROLEID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <EditItemTemplate>
            ROLEID:
            <asp:Label ID="ROLEIDLabel1" runat="server" Text='<%# Eval("ROLEID") %>' />
            <br />
            JOBID:
            <asp:TextBox ID="JOBIDTextBox" runat="server" Text='<%# Bind("JOBID") %>' />
            <br />
            ROLENAME:
            <asp:TextBox ID="ROLENAMETextBox" runat="server" Text='<%# Bind("ROLENAME") %>' />
            <br />
            ROLEDESCRIPTION:
            <asp:TextBox ID="ROLEDESCRIPTIONTextBox" runat="server" Text='<%# Bind("ROLEDESCRIPTION") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            ROLEID:
            <asp:TextBox ID="ROLEIDTextBox" runat="server" Text='<%# Bind("ROLEID") %>' />
            <br />
            JOBID:
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="JOBNAME" DataValueField="JOBID" SelectedValue='<%# Bind("JOBID") %>'>
            </asp:DropDownList>
            <br />
            ROLENAME:
            <asp:TextBox ID="ROLENAMETextBox" runat="server" Text='<%# Bind("ROLENAME") %>' />
            <br />
            ROLEDESCRIPTION:
            <asp:TextBox ID="ROLEDESCRIPTIONTextBox" runat="server" Text='<%# Bind("ROLEDESCRIPTION") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
&nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
          <a class="btn btn-info" href="Role.aspx">View Role</a>
        </InsertItemTemplate>
        <ItemTemplate>
            ROLEID:
            <asp:Label ID="ROLEIDLabel" runat="server" Text='<%# Eval("ROLEID") %>' />
            <br />
            JOBID:
            <asp:Label ID="JOBIDLabel" runat="server" Text='<%# Bind("JOBID") %>' />
            <br />
            ROLENAME:
            <asp:Label ID="ROLENAMELabel" runat="server" Text='<%# Bind("ROLENAME") %>' />
            <br />
            ROLEDESCRIPTION:
            <asp:Label ID="ROLEDESCRIPTIONLabel" runat="server" Text='<%# Bind("ROLEDESCRIPTION") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;JOBID&quot;, &quot;JOBNAME&quot; FROM &quot;JOB&quot;"></asp:SqlDataSource>
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
</asp:Content>
