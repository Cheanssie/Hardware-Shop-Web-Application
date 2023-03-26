<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/ClientMaster.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="AssignmentB5.WebForm.Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container container-sm container-md container-lg container-xl my-3">
        <div class="row justify-content-md-end justify-content-sm-center justify-content-center align-items-center">
            <div class="col-auto">
                <label class="form-label my-auto">Filter by:</label>
            </div>
            <div class="col-auto">
                <select class="form-select" id="filter-category">
                    <option selected value="">All Categories</option>
                    <option value="category1">Category 1</option>
                    <option value="category2">Category 2</option>
                    <option value="category3">Category 3</option>
                </select>
            </div>
            <div class="col-auto">
                <select class="form-select" id="filter-price">
                    <option selected value="">All Prices</option>
                    <option value="price1">Price 1</option>
                    <option value="price2">Price 2</option>
                    <option value="price3">Price 3</option>
                </select>
            </div>
        </div>
    </div>


    <div class="container container-sm container-md container-lg container-xl my-3">
        <div class="row row-cols-1 row-cols-md-5 g-4 mb-md-3  mb-sm-4  mb-4">
            <asp:Repeater ID="CardRepeater" runat="server">
                <ItemTemplate>
                    <div class="col mx-auto mx-sm-auto">
                        <div class="card h-100 mx-auto mx-sm-auto" style="max-width: 18rem;">
                            <img src="<%# Eval("ImageUrl") %>" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title"><%# Eval("Title") %></h5>
                                <p class="card-text"><%# Eval("Description") %></p>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <div class="col">
                <div class="card h-100 mx-auto mx-sm-auto" style="max-width: 18rem;">
                    <img src="../img/login-bg.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title8</h5>
                        <p class="card-text">This is a short card.</p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100 mx-auto mx-sm-auto" style="max-width: 18rem;">
                    <img src="../img/login-bg.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title8</h5>
                        <p class="card-text">This is a short card.</p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100 mx-auto mx-sm-auto" style="max-width: 18rem;">
                    <img src="../img/login-bg.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title8</h5>
                        <p class="card-text">This is a short card.</p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100 mx-auto mx-sm-auto" style="max-width: 18rem;">
                    <img src="../img/login-bg.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title8</h5>
                        <p class="card-text">This is a short card.</p>
                    </div>
                </div>
            </div>
            <!-- Repeat the above card markup 4 more times to get a total of 5 cards in each row -->
        </div>
        <!-- Repeat the above row markup to display multiple rows of 5 cards -->
        <div class="row row-cols-1 row-cols-md-5 g-4 mb-md-3  mb-sm-4  mb-4">
            <div class="col mx-auto mx-sm-auto">
                <div class="card h-100 mx-auto mx-sm-auto" style="max-width: 18rem;">
                    <img src="../img/login-bg.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title8</h5>
                        <p class="card-text">This is a short card.</p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100 mx-auto mx-sm-auto" style="max-width: 18rem;">
                    <img src="../img/login-bg.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title8</h5>
                        <p class="card-text">This is a short card.</p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100 mx-auto mx-sm-auto" style="max-width: 18rem;">
                    <img src="../img/login-bg.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title8</h5>
                        <p class="card-text">This is a short card.</p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100 mx-auto mx-sm-auto" style="max-width: 18rem;">
                    <img src="../img/login-bg.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title8</h5>
                        <p class="card-text">This is a short card.</p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100 mx-auto mx-sm-auto" style="max-width: 18rem;">
                    <img src="../img/login-bg.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title8</h5>
                        <p class="card-text">This is a short card.</p>
                    </div>
                </div>
            </div>
            <!-- Repeat the above card markup 4 more times to get a total of 5 cards in each row -->
        </div>
    </div>

    <div class="container container-sm container-md container-lg container-xl my-3">
        <div class="row">
            <nav aria-label="Page navigation example">
                <ul class="pagination  justify-content-md-center justify-content-sm-center justify-content-center align-items-center">
                    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">Next</a></li>
                </ul>
            </nav>
        </div>
    </div>


</asp:Content>
