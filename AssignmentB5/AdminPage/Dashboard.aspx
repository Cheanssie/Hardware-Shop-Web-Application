<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="AssignmentB5.AdminPage.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-6 d-flex justify-content-center" style="max-height: 350px">
                <canvas id="salesChart" width="200" height="100"></canvas>
            </div>
            <div class="col-6 d-flex justify-content-center" style="max-height: 300px">
                <canvas id="categoryChart" width="200" height="100"></canvas>
            </div>
        </div>
        <br />
        <hr />
        <br />
        <div class="row mt-3">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Orders]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" CssClass="table table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="orderId" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="orderId" HeaderText="order Id" ReadOnly="True" SortExpression="orderId"></asp:BoundField>
                    <asp:BoundField DataField="orderDate" HeaderText="Date" SortExpression="orderDate"></asp:BoundField>
                    <asp:BoundField DataField="grandTotal" HeaderText="Total" SortExpression="grandTotal"></asp:BoundField>
                    <asp:BoundField DataField="shipmentAddress" HeaderText="Address" SortExpression="shipmentAddress"></asp:BoundField>
                    <asp:BoundField DataField="username" HeaderText="Customer" SortExpression="username"></asp:BoundField>
                </Columns>
            </asp:GridView>
        </div>
    </div>


    <script type="text/javascript">
        var salesCtx = document.getElementById('salesChart');
        var categoryCtx = document.getElementById('categoryChart');

        var lineChart = new Chart(salesCtx, {
            type: "line",
            data: {
                labels: [
                    "Sunday",
                    "Monday",
                    "Tuesday",
                    "Wednesday",
                    "Thursday",
                    "Friday",
                    "Saturday",
                ],
                datasets: [
                    {
                        data: [15339, 21345, 18483, 24003, 23489, 24092, 12034],
                        lineTension: 0,
                        backgroundColor: "transparent",
                        borderColor: "#007bff",
                        borderWidth: 4,
                        pointBackgroundColor: "#007bff",
                    },
                ],
            },
            options: {
                scales: {
                    yAxes: [
                        {
                            ticks: {
                                beginAtZero: false,
                            },
                        },
                    ],
                },
                legend: {
                    display: false,
                },
            },
        });


        var xValues = ["Italy", "France", "Spain", "USA", "Argentina"];
        var yValues = [55, 49, 44, 24, 15];
        var barColors = [
            "#b91d47",
            "#00aba9",
            "#2b5797",
            "#e8c3b9",
            "#1e7145"
        ];
        var pieChart = new Chart(categoryCtx, {
            type: "pie",
            data: {
                labels: xValues,
                datasets: [{
                    backgroundColor: barColors,
                    data: yValues
                }]
            },
            options: {
                title: {
                    display: true,
                    text: "World Wide Wine Production 2018"
                }
            }
        });
    </script>

    <!-- Bar chart script>
        var salesChart = new Chart(document.getElementById("salesChart"), {
            type: 'bar',
            data: {
                labels: ["Previous Month", "Current Month"],
                datasets: [{
                    label: "Sales",
                    backgroundColor: ["#3e95cd", "#8e5ea2"],
                    data: [1000, 1500]
                }]
            },
            options: {
                title: {
                    display: true,
                    text: 'Monthly Sales Comparison'
                },
                legend: { display: false },
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero: true
                        }
                    }]
                }
            }
        });
    </!-->
</asp:Content>
