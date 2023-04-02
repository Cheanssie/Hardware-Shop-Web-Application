<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Manage-product.aspx.cs" Inherits="AssignmentB5.AdminPage.Manage_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .form-control {
            background: white;
        }

            .form-control:focus {
                background: white;
                color: black;
            }

        #popup-container {
            position: fixed;
            top: 40%;
            left: 50%;
            transform: translate(-50%, -50%);
            z-index: 9999;
            display: none;
        }

        .gridview th a {
        text-decoration: none;
        color: inherit;
    }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid p-5">
        <div class="row d-flex align-content-center">
            <div class="col-md-10">
                <p class="fs-2">All Products</p>
            </div>
            <div class="col-md-2 text-end">
                <button id="btn-addProd" class="btn btn-primary" type="button">Add Product</button>
            </div>
            <hr />
        </div>

        <div class="table-responsive">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Product]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Product] WHERE [prodId] = @original_prodId AND [prodName] = @original_prodName AND [prodDesc] = @original_prodDesc AND [prodPrice] = @original_prodPrice AND [prodCategory] = @original_prodCategory AND [prodQuantity] = @original_prodQuantity AND (([prodImg] = @original_prodImg) OR ([prodImg] IS NULL AND @original_prodImg IS NULL))" InsertCommand="INSERT INTO [Product] ([prodId], [prodName], [prodDesc], [prodPrice], [prodCategory], [prodQuantity], [prodImg]) VALUES (@prodId, @prodName, @prodDesc, @prodPrice, @prodCategory, @prodQuantity, @prodImg)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Product] SET [prodName] = @prodName, [prodDesc] = @prodDesc, [prodPrice] = @prodPrice, [prodCategory] = @prodCategory, [prodQuantity] = @prodQuantity, [prodImg] = @prodImg WHERE [prodId] = @original_prodId AND [prodName] = @original_prodName AND [prodDesc] = @original_prodDesc AND [prodPrice] = @original_prodPrice AND [prodCategory] = @original_prodCategory AND [prodQuantity] = @original_prodQuantity AND (([prodImg] = @original_prodImg) OR ([prodImg] IS NULL AND @original_prodImg IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_prodId" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_prodName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_prodDesc" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_prodPrice" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="original_prodCategory" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_prodQuantity" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="original_prodImg" Type="String"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="prodId" Type="String"></asp:Parameter>
                    <asp:Parameter Name="prodName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="prodDesc" Type="String"></asp:Parameter>
                    <asp:Parameter Name="prodPrice" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="prodCategory" Type="String"></asp:Parameter>
                    <asp:Parameter Name="prodQuantity" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="prodImg" Type="String"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="prodName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="prodDesc" Type="String"></asp:Parameter>
                    <asp:Parameter Name="prodPrice" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="prodCategory" Type="String"></asp:Parameter>
                    <asp:Parameter Name="prodQuantity" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="prodImg" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_prodId" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_prodName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_prodDesc" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_prodPrice" Type="Decimal"></asp:Parameter>
                    <asp:Parameter Name="original_prodCategory" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_prodQuantity" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="original_prodImg" Type="String"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" CssClass="table table-hover gridview" HeaderStyle-CssClass="text-center" runat="server" AutoGenerateColumns="False" DataKeyNames="prodId" DataSourceID="SqlDataSource1" AllowPaging="True" PageSize="5" AllowSorting="True">
                <Columns>
                    <asp:BoundField DataField="prodId" HeaderText="ID" ItemStyle-Width="10%" ReadOnly="True" SortExpression="prodId"></asp:BoundField>
                    <asp:BoundField DataField="prodName" HeaderText="Name" ItemStyle-Width="10%" SortExpression="prodName" ItemStyle-HorizontalAlign="Justify"></asp:BoundField>
                    <asp:BoundField DataField="prodDesc" HeaderText="Description" ItemStyle-Width="45%" SortExpression="prodDesc" ItemStyle-HorizontalAlign="Justify"></asp:BoundField>
                    <asp:BoundField DataField="prodCategory" HeaderText="Category" ItemStyle-Width="10%" SortExpression="prodCategory"></asp:BoundField>
                    <asp:BoundField DataField="prodPrice" HeaderText="Price(RM)" SortExpression="prodPrice" ItemStyle-HorizontalAlign="Center"></asp:BoundField>
                    <asp:BoundField DataField="prodQuantity" HeaderText="Quantity" ItemStyle-Width="5%" SortExpression="prodQuantity" ItemStyle-HorizontalAlign="Center"></asp:BoundField>
                    <asp:BoundField DataField="prodImg" HeaderText="Image" ItemStyle-Width="15%" SortExpression="prodImg" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle"></asp:BoundField>

                    <asp:CommandField HeaderText="Action" ControlStyle-CssClass="btn btn-sm btn-success" ShowEditButton="True" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle"></asp:CommandField>
                    <asp:CommandField ControlStyle-CssClass="btn btn-sm btn-danger" ShowDeleteButton="True" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle"></asp:CommandField>

                </Columns>
            </asp:GridView>
        </div>
    </div>

    <div id="popup-container" class="bg-white p-5 border-1 shadow w-50">
        <div class="container">
            <div class="row mb-2">
                <div class="col-10">
                    <p class="fs-3"><b>Add Product</b></p>
                </div>
                <div class="col-2 text-end">
                    <button id="btn-closeProd" type="button" class="border-0 bg-transparent btn-close"></button>
                </div>
            </div>
            <div class="row mb-3">
                <div class="form-group col-8">
                    <label class="form-label">Product Name</label>
                    <asp:TextBox ID="txtProdName" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-4">
                    <label class="form-label">Category</label>
                    <asp:DropDownList ID="ddlProdCategory" CssClass="form-select" runat="server">
                        <asp:ListItem>Desktop</asp:ListItem>
                        <asp:ListItem>Laptop</asp:ListItem>
                        <asp:ListItem>Computer Part</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <label class="form-label">Product Description</label><br />
            <asp:TextBox ID="txtProdDesc" CssClass="form-control" runat="server"></asp:TextBox>
            <div class="row mt-3">
                <div class="col-6">
                    <label class="form-label">Price</label>
                    <asp:TextBox ID="txtProdPrice" CssClass="form-control" Width="50%" runat="server"></asp:TextBox>
                </div>
                <div class="col-6">
                    <label class="form-label">Quantity</label>
                    <asp:TextBox ID="txtQuantity" CssClass="form-control" Width="50%" TextMode="Number" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row mt-3 mb-5">
                <label class="form-label">Upload Image</label><br />
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </div>
            <div class="d-flex justify-content-center">
                <asp:Button ID="btnAddProd" CssClass="btn btn-primary" Width="100%" runat="server" Text="Add" />
            </div>
        </div>
    </div>
    <script type="text/javascript">
        var showPopupBtn = document.getElementById('btn-addProd');
        var closePopupBtn = document.getElementById('btn-closeProd');

        var popupContainer = document.getElementById('popup-container');

        showPopupBtn.addEventListener('click', function () {
            popupContainer.style.display = 'block';
        });

        closePopupBtn.addEventListener('click', function () {
            popupContainer.style.display = 'none';
        });

        window.addEventListener('scroll', function () {
            // reposition the pop-up in the center of the screen when scrolling
            popupContainer.style.top = window.innerHeight / 2 + 'px';
        });
    </script>
</asp:Content>
