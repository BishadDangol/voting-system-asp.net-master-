<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_20048872_BishadDangol._Default" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <section class="row text-center placeholders">
            <div class="col-6 col-sm-4">
                <div class="panel panel-info">
                    <div class="panel-body" style="background-color: aqua">
                        <h4 style="margin-left:14rem; font-size:24px; font-weight:bolder">

                            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource3">
                                <ItemTemplate>

                                    <asp:Label ID="TOTALEMPLOYEESLabel" runat="server" Text='<%# Eval("TotalEmployees") %>' />

                                </ItemTemplate>
                            </asp:DataList>
                        </h4>


                        <p>
                            Employees<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT COUNT(*) as TotalEmployees FROM EMPLOYEE"></asp:SqlDataSource>
                        </p>
                    </div>
                    <a href="Employee.aspx">
                        <div class="panel-heading">View More</div>
                    </a>

                </div>
            </div>

            <div class="col-6 col-sm-4">
                <div class="panel panel-success">

                    <div class="panel-body" style="background-color: green">
                        <h4 style="margin-left:14rem; font-size:24px; font-weight:bolder">
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT COUNT(*) as TotalDepartments FROM DEPARTMENT"></asp:SqlDataSource>
                            <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource4">
                                <ItemTemplate>

                                    <asp:Label ID="TOTALDEPARTMENTSLabel" runat="server" Text='<%# Eval("TotalDepartments") %>' />

                                </ItemTemplate>
                            </asp:DataList>
                        </h4>
                        <p>Departments</p>
                    </div>
                    <a href="Department.aspx">
                        <div class="panel-heading">View More</div>
                    </a>

                </div>
            </div>

            <div class="col-6 col-sm-4">
                <div class="panel panel-success">
                    <div class="panel-body" style="background-color: orangered">
                        <h4 style="margin-left:14rem; font-size:24px; font-weight:bolder">

                            <asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSource5">
                                <ItemTemplate>

                                    <asp:Label ID="TOTALROLESLabel" runat="server" Text='<%# Eval("TOTALROLES") %>' />

                                </ItemTemplate>
                            </asp:DataList>

                        </h4>
                        <p>
                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT COUNT(*) as TotalRoles FROM ROLE"></asp:SqlDataSource>
                            Roles
                        </p>
                    </div>
                    <a href="Role.aspx">
                        <div class="panel-heading">View More</div>
                    </a>

                </div>
            </div>

            <div class="col-6 col-sm-4">
                <div class="panel panel-success">
                    <div class="panel-body" style="background-color: yellow">
                        <h4 style="margin-left:14rem; font-size:24px; font-weight:bolder">

                            <asp:DataList ID="DataList4" runat="server" DataSourceID="SqlDataSource6">
                                <ItemTemplate>
                                    
                                    <asp:Label ID="TOTALJOBSLabel"  runat="server" Text='<%# Eval("TOTALJOBS") %>' />
                                    
                                </ItemTemplate>
                            </asp:DataList>

                        </h4>
                        <p>
                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT COUNT(*) as TotalJobs FROM JOB"></asp:SqlDataSource>
                            Jobs
                        </p>
                    </div>
                    <a href="Job.aspx">
                        <div class="panel-heading">View More</div>
                    </a>

                </div>
            </div>

            <div class="col-6 col-sm-4">
                <div class="panel panel-success">
                    <div class="panel-body" style="background-color: gray">
                        <h4 style="margin-left:14rem; font-size:24px; font-weight:bolder">

                            <asp:DataList ID="DataList5" runat="server" DataSourceID="SqlDataSource7">
                                <ItemTemplate>

                                    <asp:Label ID="TOTALADDRESSLabel" runat="server" Text='<%# Eval("TOTALADDRESS") %>' />

                                </ItemTemplate>
                            </asp:DataList>

                        </h4>
                        <p>
                            <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT COUNT(*) as TotalAddress FROM Address"></asp:SqlDataSource>
                            Address
                        </p>
                    </div>
                    <a href="Address.aspx">
                        <div class="panel-heading">View More</div>

                    </a>

                </div>
            </div>


        </section>


        <div style="margin-top: 4rem;">
            <p>Highest Earners </p>
            <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Height="256px" Width="1005px">
                <Series>
                    <asp:Series Name="Series1" XValueMember="EMPLOYEENAME" YValueMembers="SALARY" ChartArea="ChartArea1">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
            <a style="margin-top: 4rem;" href="Employee.aspx" class="btn btn-primary btn-lg">Learn more &raquo;</a>
        </div>
        <div style="margin-top: 4rem;">
            <p>All Deparments </p>
            <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource2" Height="340px" Width="957px">
                <Series>
                    <asp:Series ChartType="Pie" Name="Series1" XValueMember="JOBNAME" YValueMembers="MINSALARY">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
            <a style="margin-top: 4rem;" href="Department.aspx" class="btn btn-primary btn-lg">Learn more &raquo;</a>
        </div>



    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;EMPLOYEENAME&quot;, &quot;SALARY&quot; FROM &quot;EMPLOYEE&quot;"></asp:SqlDataSource>
            </h2>

        </div>

    </div>
    <div class="row">
        <div class="col-md-4">
            <h2>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;JOBNAME&quot;, &quot;MINSALARY&quot; FROM &quot;JOB&quot;"></asp:SqlDataSource>
            </h2>

        </div>
    </div>

</asp:Content>
