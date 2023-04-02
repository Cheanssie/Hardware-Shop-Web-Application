<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/ClientMaster.Master" AutoEventWireup="true" CodeBehind="Product-Details.aspx.cs" Inherits="AssignmentB5.ClientPage.Product_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
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
            .container-suggestion {
                display: none;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Product] WHERE ([productId] = @productId)">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="productId" Name="productId" Type="String"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <div class="container container-sm container-md container-xl m-3">
        <div class="row">
            <div class="col-md-6 d-flex align-items-center">

                <img src="../img/login-bg.jpg" class="img-fluid" />
            </div>
            <div class="col-md-6">
                <div class="w-100 p-5">
                    <p class="fs-2"><b id="prodname" runat="server"></b></p>
                    <hr />
                    <p class="text-wrap">
                        <span id="prodDesc" runat="server"></span>
                    </p>
                    <p class="card-text p-category" id="prodCategory" runat="server"></p>
                    <p class=""><b>Price: </b><span id="prodPrice" runat="server"></span></p>
                    <label for="quantity"><b>Quantity: </b></label>
                    <asp:TextBox ID="quantity" runat="server" Type="Number" min="1" value="1"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                    <button class="btn btn-primary btn-lg w-100">Add to Cart</button>
                </div>
            </div>
        </div>
    </div>


    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>'></asp:SqlDataSource>
    <div class="container container-sm container-md container-xl container-suggestion mb-5">
        <hr />
        <div id="productCarousel" class="carousel slide" data-bs-pause="true">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <div class="row d-flex justify-content-between">
                        <asp:Repeater ID="rptSuggestion" runat="server" OnItemCommand="rptSuggestion_ItemCommand">
                            <ItemTemplate>
                                <div class="card-parent col mx-auto mx-sm-auto" style="position: relative">
                                    <div class="card h-100 mx-auto mx-sm-auto" style="max-width: 18rem;">
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
        <button class="carousel-control-prev" type="button" data-bs-target="#productCarousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#productCarousel" data-bs-slide="next">
            <span class="carousel-control-next-icon"></span>
        </button>
    </div>
</asp:Content>
