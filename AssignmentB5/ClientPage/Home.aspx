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

        @media (max-width: 700px) {
            .container-mb {
                display: block;
            }

            .container-pc {
                display: none;
            }
        }
        </style>
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
                        <div class="row d-flex justify-content-between">
                            <div class="col d-flex justify-content-center align-content-center">
                                <div class="card h-100" style="max-width: 18rem;">
                                    <img src="../img/login-bg.jpg" class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title8</h5>
                                        <p class="card-text">This is a short card.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col d-flex justify-content-center align-content-center">
                                <div class="card h-100" style="max-width: 18rem;">
                                    <img src="../img/login-bg.jpg" class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title8</h5>
                                        <p class="card-text">This is a short card.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col d-flex justify-content-center align-content-center">
                                <div class="card h-100" style="max-width: 18rem;">
                                    <img src="../img/login-bg.jpg" class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title8</h5>
                                        <p class="card-text">This is a short card.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col d-flex justify-content-center align-content-center">
                                <div class="card h-100 " style="max-width: 18rem;">
                                    <img src="../img/login-bg.jpg" class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title8</h5>
                                        <p class="card-text">This is a short card.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col d-flex justify-content-center align-content-center">
                                <div class="card h-100 " style="max-width: 18rem;">
                                    <img src="../img/login-bg.jpg" class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title8</h5>
                                        <p class="card-text">This is a short card.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="row justify-content-center"> 
                            <div class="col d-flex justify-content-center align-content-center">
                                <div class="card h-100" style="max-width: 18rem;">
                                    <img src="../img/login-bg.jpg" class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title8</h5>
                                        <p class="card-text">This is a short card.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col d-flex justify-content-center align-content-center">
                                <div class="card h-100" style="max-width: 18rem;">
                                    <img src="../img/login-bg.jpg" class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title8</h5>
                                        <p class="card-text">This is a short card.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col d-flex justify-content-center align-content-center">
                                <div class="card h-100 " style="max-width: 18rem;">
                                    <img src="../img/login-bg.jpg" class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title8</h5>
                                        <p class="card-text">This is a short card.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col d-flex justify-content-center align-content-center">
                                <div class="card h-100 " style="max-width: 18rem;">
                                    <img src="../img/login-bg.jpg" class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title8</h5>
                                        <p class="card-text">This is a short card.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col d-flex justify-content-center align-content-center">
                                <div class="card h-100 " style="max-width: 18rem;">
                                    <img src="../img/login-bg.jpg" class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title8</h5>
                                        <p class="card-text">This is a short card.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#productCarousel" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#productCarousel" data-bs-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </button>
            </div>
        </div>
    </div>

    <div class="container-fluid container-mb">
        <div class="container-xl mt-3">
            <p class="text-left fs-2">Latest Products</p>
        </div>
        <div class="container-xl container-mb">
            <div id="productCarousel-mb" class="carousel slide">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="row d-flex justify-content-between">
                            <div class="col d-flex justify-content-center align-content-center">
                                <div class="card h-100 " style="max-width: 18rem;">
                                    <img src="../img/login-bg.jpg" class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title8</h5>
                                        <p class="card-text">This is a short card.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="row d-flex justify-content-between">
                            <div class="col d-flex justify-content-center align-content-center">
                                <div class="card h-100 " style="max-width: 18rem;">
                                    <img src="../img/login-bg.jpg" class="card-img-top" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title8</h5>
                                        <p class="card-text">This is a short card.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#productCarousel-mb" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#productCarousel-mb" data-bs-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </button>
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
                <a  href="Products.aspx" class="row bg-success text-center d-flex flex-column justify-content-center d-block category-hover" style="height: 27.5%; background-image: url('../img/desktop.jpg'); background-position: center; background-size: cover;">
                    <p>Desktop</p>
                </a>

            </div>
            <div class="col-auto"></div>
            <a  href="Products.aspx" class="col-md-3 text-center d-flex flex-column justify-content-center d-block category-hover" style="background-image: url('../img/computer-part.jpg'); background-position: center; background-size: cover;">
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

</asp:Content>
