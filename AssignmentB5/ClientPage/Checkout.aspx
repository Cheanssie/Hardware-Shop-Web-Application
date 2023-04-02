<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/ClientMaster.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Assignment_yt2.Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--Page title--%>
    <div class="jumbotron jumbotron-fluid" style="margin-top: 50px;">
        <div class="container">
            <h1 class="display-4">Checkout</h1>
        </div>
    </div>

    <%--Content--%>
    <div class="container">
        <div class="card border-top-0 mb-5">
            <table class="table mb-0">
                <thead>
                    <tr>
                        <th scope="col" style="width: 10%">#</th>
                        <th scope="col" style="width: 25%">Title</th>
                        <th scope="col" style="width: 25%">Image</th>
                        <th scope="col" style="width: 10%">Quantity</th>
                        <th scope="col" style="width: 15%">Price</th>
                        <th scope="col" style="width: 15%">Subtotal</th>
                    </tr>
                </thead>

                <%--Product to pay--%>
                <tbody>
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <tr>
                                <th scope="row"><%# Eval("Index") %></th>
                                <td><%# Eval("Title") %></td>
                                <td>
                                    <img style="max-height: 150px; max-width: 150px" src='<%#"data:Image/png;base64," + Eval("Base64image")%>' />
                                </td>
                                <td><%# Eval("quantity") %></td>
                                <td><%# String.Format("RM {0:0.00}", Eval("PriceEach")) %></td>
                                <td><%# String.Format("RM {0:0.00}", Eval("Subtotal")) %></td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>

                <%--Display total--%>
                <tfoot>
                    <tr>
                        <th scope="col" colspan="4"></th>
                        <th scope="col">Total</th>
                        <th scope="col">
                            <asp:Label ID="orderTotal" runat="server" Text="RM 0.00"></asp:Label>
                        </th>
                    </tr>
                </tfoot>
            </table>
        </div>
        <div class="float-right mt-4">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem>Credit Card</asp:ListItem>
                <asp:ListItem>Cash</asp:ListItem>
            </asp:RadioButtonList>

        <a href="#" role="button" class="btn btn-primary btn-lg">Proceed to Payment</a>
            <%--<script>
                price = document.getElementsByClassName("orderTotal")[0].innerHTML
                button = document.getElementById("paypal-button-container")
                paypal.Buttons({
                    createOrder: function (data, actions) {
                        // Set up the transaction
                        return actions.order.create({
                            purchase_units: [{
                                amount: {
                                    value: price
                                }
                            }]
                        });
                    },
                    onApprove: function (data, actions) {
                        // Capture the funds from the transaction
                        return actions.order.capture().then(function (details) {
                            // Show a success message to your buyer
                            location.href = 'orderProcess.aspx'
                        });
                    }
                }).render(button);
            </script>--%>
        </div>
    </div>
</asp:Content>
