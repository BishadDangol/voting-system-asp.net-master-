<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="_20048872_BishadDangol.Employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;EMPLOYEE&quot; WHERE &quot;EMPLOYEEID&quot; = :EMPLOYEEID" InsertCommand="INSERT INTO &quot;EMPLOYEE&quot; (&quot;EMPLOYEEID&quot;, &quot;EMPLOYEENAME&quot;, &quot;DATEOFBIRTH&quot;, &quot;SALARY&quot;, &quot;CONTACTNUMBER&quot;) VALUES (:EMPLOYEEID, :EMPLOYEENAME, :DATEOFBIRTH, :SALARY, :CONTACTNUMBER)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;EMPLOYEE&quot;" UpdateCommand="UPDATE &quot;EMPLOYEE&quot; SET &quot;EMPLOYEENAME&quot; = :EMPLOYEENAME, &quot;DATEOFBIRTH&quot; = :DATEOFBIRTH, &quot;SALARY&quot; = :SALARY, &quot;CONTACTNUMBER&quot; = :CONTACTNUMBER WHERE &quot;EMPLOYEEID&quot; = :EMPLOYEEID">
        <DeleteParameters>
            <asp:Parameter Name="EMPLOYEEID" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="EMPLOYEEID" Type="Decimal" />
            <asp:Parameter Name="EMPLOYEENAME" Type="String" />
            <asp:Parameter Name="DATEOFBIRTH" Type="DateTime" />
            <asp:Parameter Name="SALARY" Type="Decimal" />
            <asp:Parameter Name="CONTACTNUMBER" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="EMPLOYEENAME" Type="String" />
            <asp:Parameter Name="DATEOFBIRTH" Type="DateTime" />
            <asp:Parameter Name="SALARY" Type="Decimal" />
            <asp:Parameter Name="CONTACTNUMBER" Type="Decimal" />
            <asp:Parameter Name="EMPLOYEEID" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <div>
        <h2 style="text-align: center">EMPLOYEE</h2>
    </div>
    <asp:GridView ID="GridView1" Style="margin-top: 20px;" CssClass="table " runat="server" AutoGenerateColumns="False" DataKeyNames="EMPLOYEEID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="EMPLOYEEID" HeaderText="EMPLOYEEID" ReadOnly="True" SortExpression="EMPLOYEEID" />
            <asp:BoundField DataField="EMPLOYEENAME" HeaderText="EMPLOYEENAME" SortExpression="EMPLOYEENAME" />
            <asp:BoundField DataField="DATEOFBIRTH" HeaderText="DATEOFBIRTH" SortExpression="DATEOFBIRTH" />
            <asp:BoundField DataField="SALARY" HeaderText="SALARY" SortExpression="SALARY" />
            <asp:BoundField DataField="CONTACTNUMBER" HeaderText="CONTACTNUMBER" SortExpression="CONTACTNUMBER" />
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
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="EMPLOYEEID" DataSourceID="SqlDataSource1">
        <%-- <EditItemTemplate>
        EMPLOYEEID:
        <asp:Label ID="EMPLOYEEIDLabel1" runat="server" Text='<%# Eval("EMPLOYEEID") %>' />
        <br />
        EMPLOYEENAME:
        <asp:TextBox ID="EMPLOYEENAMETextBox" runat="server" Text='<%# Bind("EMPLOYEENAME") %>' />
        <br />
        DATEOFBIRTH:
        <asp:TextBox ID="DATEOFBIRTHTextBox" runat="server" Text='<%# Bind("DATEOFBIRTH") %>' />
        <br />
        SALARY:
        <asp:TextBox ID="SALARYTextBox" runat="server" Text='<%# Bind("SALARY") %>' />
        <br />
        CONTACTNUMBER:
        <asp:TextBox ID="CONTACTNUMBERTextBox" runat="server" Text='<%# Bind("CONTACTNUMBER") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>--%>
        <%--<InsertItemTemplate>
        EMPLOYEEID:
        <asp:TextBox ID="EMPLOYEEIDTextBox" runat="server" Text='<%# Bind("EMPLOYEEID") %>' />
        <br />
        EMPLOYEENAME:
        <asp:TextBox ID="EMPLOYEENAMETextBox" runat="server" Text='<%# Bind("EMPLOYEENAME") %>' />
        <br />
        DATEOFBIRTH:
        <asp:TextBox ID="DATEOFBIRTHTextBox" runat="server" Text='<%# Bind("DATEOFBIRTH") %>' />
        <br />
        SALARY:
        <asp:TextBox ID="SALARYTextBox" runat="server" Text='<%# Bind("SALARY") %>' />
        <br />
        CONTACTNUMBER:
        <asp:TextBox ID="CONTACTNUMBERTextBox" runat="server" Text='<%# Bind("CONTACTNUMBER") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>--%>

        <InsertItemTemplate>
            <div class="form-group">
                <label for="EMPLOYEEIDTextBox">Employee ID:</label>
                <asp:TextBox ID="EMPLOYEEIDTextBox" runat="server" CssClass="form-control" Text='<%# Bind("EMPLOYEEID") %>' />
                <asp:RequiredFieldValidator CssClass="text-danger" ID="rfvName" runat="server" ControlToValidate="EMPLOYEEIDTextBox" ErrorMessage="Please enter the ID"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label for="EMPLOYEENAMETextBox">EMPLOYEE NAME:</label>
                <asp:TextBox ID="EMPLOYEENAMETextBox" runat="server" CssClass="form-control" Text='<%# Bind("EMPLOYEENAME") %>' />
                <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ControlToValidate="EMPLOYEENAMETextBox" ErrorMessage="Please enter the name"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label for="DATEOFBIRTHTextBoxx">DATE OF BIRTH:</label>
                <asp:TextBox ID="DATEOFBIRTHTextBox" runat="server" CssClass="form-control" Text='<%# Bind("DATEOFBIRTH") %>' />
                <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator2" runat="server" ControlToValidate="DATEOFBIRTHTextBox" ErrorMessage="Please enter the date of birth"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label for="SALARYTextBox">SALARY:</label>
                <asp:TextBox ID="SALARYTextBox" runat="server" CssClass="form-control" Text='<%# Bind("SALARY") %>' />
                
                 <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator3" runat="server" ControlToValidate="SALARYTextBox" ErrorMessage="Please enter the salary"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label for="CONTACTNUMBERTextBox">CONTACT NUMBER:</label>
                <asp:TextBox ID="CONTACTNUMBERTextBox" runat="server" CssClass="form-control" Text='<%# Bind("CONTACTNUMBER") %>' />
                  <asp:RegularExpressionValidator ID="revAge" runat="server" ControlToValidate="CONTACTNUMBERTextBox" ErrorMessage="Please enter a valid contact" ForeColor="Red" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
                 <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator4" runat="server" ControlToValidate="CONTACTNUMBERTextBox" ErrorMessage="Please enter the contact number"></asp:RequiredFieldValidator>
            </div>
            <div class="btn-group">
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" CssClass="btn btn-primary" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn btn-warning" Text="Cancel" />

            </div>
        </InsertItemTemplate>
        <ItemTemplate>
            <asp:LinkButton CssClass="btn btn-primary" ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="ADD EMPLOYEE" />
        </ItemTemplate>

        <%--<ItemTemplate>
        EMPLOYEEID:
        <asp:Label ID="EMPLOYEEIDLabel" runat="server" Text='<%# Eval("EMPLOYEEID") %>' />
        <br />
        EMPLOYEENAME:
        <asp:Label ID="EMPLOYEENAMELabel" runat="server" Text='<%# Bind("EMPLOYEENAME") %>' />
        <br />
        DATEOFBIRTH:
        <asp:Label ID="DATEOFBIRTHLabel" runat="server" Text='<%# Bind("DATEOFBIRTH") %>' />
        <br />
        SALARY:
        <asp:Label ID="SALARYLabel" runat="server" Text='<%# Bind("SALARY") %>' />
        <br />
        CONTACTNUMBER:
        <asp:Label ID="CONTACTNUMBERLabel" runat="server" Text='<%# Bind("CONTACTNUMBER") %>' />
        <br />
        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
    </ItemTemplate>--%>
    </asp:FormView>

</asp:Content>
