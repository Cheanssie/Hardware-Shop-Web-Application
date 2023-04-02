<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/ClientMaster.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="AssignmentB5.ClientPage.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .card-registration .select-input.form-control[readonly]:not([disabled]) {
            font-size: 1rem;
            line-height: 2.15;
            padding-left: .75em;
            padding-right: .75em;
        }

        .card-registration .select-arrow {
            top: 13px;
        }

        .bg-grey {
            background-color: #eae8e8;
        }

        .form-control:focus {
            color: black;
        }



        @media (min-width: 992px) {
            .card-registration-2 .bg-grey {
                border-top-right-radius: 16px;
                border-bottom-right-radius: 16px;
            }
        }

        @media (max-width: 991px) {
            .card-registration-2 .bg-grey {
                border-bottom-left-radius: 16px;
                border-bottom-right-radius: 16px;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-xl py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-12">
                <div class="card card-registration card-registration-2" style="border-radius: 15px;">
                    <div class="card-body p-0">
                        <div class="row g-0">
                            <div class="col-lg-8">
                                <div class="p-5">
                                    <div class="d-flex justify-content-between align-items-center mb-5">
                                        <h2 class="fw-bold mb-0 text-black">Shopping Cart</h2>
                                    </div>

                                    <div class="row mb-4 d-flex justify-content-between align-items-center">
                                        <div class="col-md-2 col-lg-2 col-xl-2">
                                            <h4>Product</h4>
                                        </div>
                                        <div class="col-md-3 col-lg-3 col-xl-3">
                                        </div>
                                        <div class="col-md-3 col-lg-3 col-xl-2  d-flex">
                                            <h4>Quantity</h4>
                                        </div>
                                        <div class="col-md-3 col-lg-2 col-xl-2 offset-lg-1">
                                            <h4>Price</h4>
                                        </div>
                                        <div class="col-md-1 col-lg-1 col-xl-1">
                                        </div>
                                    </div>
                                    <hr class="my-4">
                                    <div class="scroll-container" style="max-height: 500px; overflow-y: scroll; overflow-x: hidden; scroll-behavior: smooth">

                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT p.prodImg, p.prodName, p.prodPrice, p.prodCategory, pic.quantity, p.prodQuantity FROM Product AS p INNER JOIN ProductInCart AS pic ON p.prodId = pic.prodId WHERE (pic.username = 'jess0119')"></asp:SqlDataSource>

                                        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" Style="border: none" OnRowCommand="GridView1_RowCommand" AllowPaging="false" PageSize="3" OnRowDataBound="GridView1_RowDataBound">
                                            <Columns>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <div class="row mb-4 d-flex justify-content-between align-items-center">
                                                            <div class="col-md-2 col-lg-2 col-xl-2">
                                                                <img
                                                                    src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-shopping-carts/img5.webp"
                                                                    class="img-fluid rounded-3" alt="Cotton T-shirt" />
                                                            </div>
                                                            <div class="col-md-3 col-lg-3 col-xl-3">
                                                                <h6 class="text-black" id="prodName" runat="server"><%# Eval("prodName") %></h6>
                                                            </div>
                                                            <div class="col-md-3 col-lg-3 col-xl-2 d-flex">
                                                                <asp:TextBox ID="quantity" CssClass="form-control bg-white form-control-sm" runat="server" Type="Number" min="1" max='<%# Eval("prodQuantity") %>' value='<%# Eval("quantity") %>'></asp:TextBox>
                                                            </div>
                                                            <div class="col-md-3 col-lg-2 col-xl-2 offset-lg-1">
                                                                <h6 class="mb-0"><%# Eval("prodPrice") %></h6>
                                                            </div>
                                                            <div class="col-md-1 col-lg-1 col-xl-1">
                                                                <a href="#!" class="text-muted"><i class="bi bi-x-lg"></i></a>
                                                            </div>

                                                        </div>
                                                        <hr class="my-4">
                                                    </ItemTemplate>

                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                    <div class="pt-5">
                                        <h6 class="mb-0"><a href="#!" class="text-body"><i
                                            class="bi bi-arrow-left me-2"></i>Back to shop</a></h6>
                                    </div>
                                </div>
                        </div>
                        <div class="col-lg-4 bg-grey">
                            <div class="p-5">
                                <h3 class="fw-bold mb-2 mt-5 pt-1 text-uppercase">Summary</h3>
                                <br />
                                <hr class="my-4">

                                <div class="d-flex justify-content-between mb-4">
                                    <h5 class="text-uppercase">Item:&nbsp;<span id="totalItem" runat="server"></span></h5>
                                </div>

                                <h5 class="text-uppercase mb-3">Shipping Address</h5>

                                <div class="mb-4 pb-2">
                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control bg-transparent text-black-50 form-control-lg" placeholder="Enter your code"></asp:TextBox>
                                </div>

                                <h5 class="text-uppercase mb-3">Give code</h5>

                                <div class="mb-5">
                                    <div class="form-outline">
                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control bg-transparent text-black-50 form-control-lg" placeholder="Enter your code"></asp:TextBox>
                                    </div>
                                </div>

                                <hr class="my-4">

                                <div class="d-flex justify-content-between mb-5">
                                    <h5 class="text-uppercase">Total price</h5>
                                    <h5 runat="server" id="subtotalDisplay"></h5>
                                </div>
                                <asp:Button ID="Button1" runat="server" Text="Check Out" CssClass="btn btn-primary btn-block btn-lg" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</asp:Content>
