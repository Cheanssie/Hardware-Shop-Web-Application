<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/ClientMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="AssignmentB5.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .container-fluid-banner {
            padding: 0;
        }

        .carousel-banner .carousel-item {
            height: 400px;
        }

        carousel-banner .carousel-item img {
            position: absolute;
            object-fit: cover;
            top: 0;
            left: 0;
            height: 400px;
            width: 100%;
        }

        .container-mb {
            display: none;
        }

        .category-hover {
            transition: transform 0.2s ease-in-out;
        }

            .category-hover:hover {
                transform: scale(1.05);
            }

        .card-price {
            color: grey;
        }

        .p-category {
            max-width: max-content;
            padding: 2px 5px;
            border: 1px solid #0d6efd;
            color: #0d6efd;
            border-radius: 5px;
            font-size: 12px;
            margin-bottom: 5px;
        }

        .card-parent:hover > .card {
            box-shadow: 0 4px 10px rgba(13, 110, 253, 0.16), 0 4px 10px rgba(13, 110, 253, 0.23);
            opacity: 0.5;
        }

        .view-details {
            z-index: 2;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            visibility: hidden;
        }

        .card-parent:hover > .view-details {
            visibility: visible;
            opacity: 1 !important;
        }

        @media (max-width: 700px) {
            .container-mb {
                display: block;
            }

            .container-pc {
                display: none;
            }
        }

        .card-price {
            color: grey;
        }

        .p-category {
            max-width: max-content;
            padding: 2px 5px;
            border: 1px solid #0d6efd;
            color: #0d6efd;
            border-radius: 5px;
            font-size: 12px;
            margin-bottom: 5px;
        }
    </style>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Carousel banner -->

    <div class="container-fluid container-fluid-banner">
        <div id="bannerCarousel" class="carousel carousel-banner carousel-dark slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#bannerCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#bannerCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#bannerCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active" data-bs-interval="5000">
                    <img src="../img/hardware.jpg" class="d-block w-100" alt="...">
                    <!--div class="carousel-caption d-none d-md-block">
                        <h5>First slide label</h5>
                        <p>Some representative placeholder content for the first slide.</p>
                    </!div-->
                </div>
                <div class="carousel-item" data-bs-interval="5000">
                    <img src="../img/login-bg.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item" data-bs-interval="5000">
                    <img src="../img/login-bg.jpg" class="d-block w-100" alt="...">
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid container-pc">
        <div class="container-xl mt-3">
            <p class="text-left fs-2">Latest Products</p>
        </div>
        <div class="container-xl">
            <div id="productCarousel" class="carousel slide" data-bs-pause="true">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="row justify-content-center owl-carousel owl-theme">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" Visible="True" OnItemCommand="Repeater1_ItemCommand">
                                <ItemTemplate>
                                    <div class="card-parent col mx-auto mx-sm-auto" style="position: relative">
                                        <div class="card h-100 mx-auto mx-sm-auto" style="max-width: 18rem; max-height: 300px; min-height: 300px">
                                            <img src="../img/login-bg.jpg" class="card-img-top" alt="...">
                                            <div class="card-body">
                                                <h5 class="card-title"><%# Eval("prodName") %></h5>
                                                <p class="card-text p-category"><%# Eval("prodCategory") %></p>
                                                <p class="card-text card-price position-relative">
                                                    <%# Eval("prodPrice") %><span class="card-text float-end position-absolute bottom-0 end-0" style="font-size: 12px;"><%# Eval("prodQuantity") %>qty</span>
                                                </p>
                                            </div>
                                        </div>
                                        <div class="view-details buttons d-flex">
                                            <asp:LinkButton ID="lbViewDetails" CssClass="btn btn-primary btn-sm d-flex justify-content-center align-content-center" runat="server" CommandName="detail" CommandArgument='<%# Eval("prodId") %>'>View Details</asp:LinkButton>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <br />
    <div class="container mt-3">
        <p class="text-left fs-2">Categories</p>
    </div>
    <div class="container align-content-center">

        <div class="row text-white d-flex justify-content-between">
            <div class="col-md-3 d-flex flex-column" style="min-height: 400px; gap: 5%;">
                <a href="Products.aspx" class="row bg-light text-center d-flex flex-column justify-content-center d-block category-hover" style="height: 67.5%; background-image: url('../img/pc.jpg'); background-position: center; background-size: cover;">
                    <p>Laptops</p>
                </a>
                <a href="Products.aspx" class="row bg-success text-center d-flex flex-column justify-content-center d-block category-hover" style="height: 27.5%; background-image: url('../img/desktop.jpg'); background-position: center; background-size: cover;">
                    <p>Desktop</p>
                </a>

            </div>
            <div class="col-auto"></div>
            <a href="Products.aspx" class="col-md-3 text-center d-flex flex-column justify-content-center d-block category-hover" style="background-image: url('../img/computer-part.jpg'); background-position: center; background-size: cover;">
                <p>Computer Parts</p>
            </a>
            <div class="col-auto"></div>
            <a href="Products.aspx" class="col-md-5 bg-success text-center d-flex flex-column justify-content-center d-block category-hover" style="background-image: url('../img/all-product.jpg'); background-position: center; background-size: cover;">
                <p>All Products</p>
            </a>
        </div>
    </div>
    <br />
    <br />
    <script>
        $(document).ready(function () {
            $('.owl-carousel').owlCarousel({
                loop: true,
                margin: 10,
                nav: false,
                responsive: {
                    0: {
                        items: 1
                    },
                    600: {
                        items: 3
                    },
                    1000: {
                        items: 5
                    }
                }
            });
        });
    </script>

</asp:Content>
