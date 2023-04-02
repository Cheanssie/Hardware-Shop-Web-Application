<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/ClientMaster.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="AssignmentB5.WebForm.Products" %>

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

        .card-parent:hover>.card {
            box-shadow: 0 4px 10px  rgba(13, 110, 253, 0.16), 0 4px 10px rgba(13, 110, 253, 0.23);
            opacity:0.5;
        }

        .view-details {
            z-index: 2; 
            position: absolute; 
            top: 50%; 
            left: 50%; 
            transform: translate(-50%, -50%);
            visibility:hidden;
        }

        .card-parent:hover>.view-details{
            visibility:visible;
            opacity:1!important;
        }
        
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container container-sm container-md container-lg container-xl my-3">
        <div class="row justify-content-md-end justify-content-sm-center justify-content-center align-items-center">
            <div class="col-auto">
                <label class="form-label my-auto">Filter by:</label>
            </div>
            <div class="col-auto">
                <asp:DropDownList ID="ddlCategory" class="form-select" runat="server">
                    <asp:ListItem Value="" Selected="True">All Products</asp:ListItem>
                    <asp:ListItem Value="">Desktops</asp:ListItem>
                    <asp:ListItem Value="">Laptops</asp:ListItem>
                    <asp:ListItem Value="">Computer Parts</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-auto">
                <asp:DropDownList ID="ddlPrice" class="form-select" runat="server">
                    <asp:ListItem Value="" Selected="True">All Products</asp:ListItem>
                    <asp:ListItem Value="">Price Range 1</asp:ListItem>
                    <asp:ListItem Value="">Price Range 2</asp:ListItem>
                    <asp:ListItem Value="">Price Range 3</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
    </div>

    <div class="container container-sm container-md container-lg container-xl my-3">
        <div class="row row-cols-1 row-cols-sm-1 row-cols-md-5 g-4 mb-md-3  mb-sm-4  mb-4">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
          
            <asp:ListView ID="ListView1" runat="server" AllowPaging="true" PagerTemplate="{% myDataPager %}" DataSourceID="SqlDataSource1" OnItemCommand="ListView1_ItemCommand">
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
            </asp:ListView>
        </div>
    </div>
    <div class="d-flex justify-content-center text-center mb-3">
        <asp:DataPager ID="myDataPager" runat="server" PageSize="20" PagedControlID="ListView1">
            <Fields>
                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="true" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                <asp:NumericPagerField />
                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
            </Fields>
        </asp:DataPager>
    </div>
</asp:Content>
