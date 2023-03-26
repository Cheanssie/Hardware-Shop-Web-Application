<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/ClientMaster.Master" AutoEventWireup="true" CodeBehind="Product-Details.aspx.cs" Inherits="AssignmentB5.ClientPage.Product_Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        @media (max-width: 700px){
            .container-suggestion {
                display:none;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container container-sm container-md container-xl m-3">
        <div class="row">
            <div class="col-md-6 d-flex align-items-center">
                <img src="../img/login-bg.jpg" class="img-fluid"/>
            </div>
            <div class="col-md-6">
                <div class="w-100 p-5">
                    <p class="fs-2"><b>Product Name</b></p>
                    <hr />
                    <p class="text-wrap"><b>Product Details bbala bakha bkahsjfdasfbajkfjaf  bbala bakha bkahsjfdasfbajkfjaf  bbala bakha bkahsjfdasfbajkfjaf  bbala bakha bkahsjfdasfbajkfjaf  bbala bakha bkahsjfdasfbajkfjaf  bbala bakha bkahsjfdasfbajkfjaf  bbala bakha bkahsjfdasfbajkfjaf </b></p>
                    <p class="">Price: RM100.00</p>
                    <label for="quantity">Quantity: </label>
                    <input type="number" min="1" max="100" value="1" id="quantity" name="quantity"/>
                    <br />
                    <br />
                    <br />
                    <button class="btn btn-primary btn-lg w-100">Add to Cart</button>
                </div>
            </div>
        </div>
    </div>

    <div class="container container-sm container-md container-xl container-suggestion mb-5">
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
</asp:Content>
