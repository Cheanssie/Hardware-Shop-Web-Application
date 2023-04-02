<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/ClientMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AssignmentB5.WebForm.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .h-custom {
            height: calc(100% - 73px);
        }

        @media (max-width: 995px) {
            .h-custom {
                height: 100%;
            }
        }

        .form-control {
            background: white;
        }

            .form-control:focus {
                background: white;
                color: black;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-xl d-flex justify-content-center align-items-center mb-4 h-custom p-5">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-md-9 col-lg-6 col-xl-5">
                <img src="../img/login-bg.jpg" class="img-fluid" alt="Login Page" />
            </div>
            <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
                <div class="divider d-flex align-items-center my-4">
                    <p class="lead fw-bold mb-0 fs-2 mx-auto">Login</p>
                </div>

                <!-- Username input -->
                <div class="form-outline mb-4">
                    <label class="form-label" for="form3Example3">Username<span class="text-danger">*</span></label>
                    <asp:TextBox ID="txtUsername" CssClass="form-control form-control-lg" placeholder="Enter username" runat="server"></asp:TextBox>
                </div>

                <!-- Password input -->
                <div class="form-outline mb-3">
                    <label class="form-label" for="form3Example4">Password<span class="text-danger">*</span></label>
                    <asp:TextBox ID="txtPassword" CssClass="form-control form-control-lg" placeholder="Enter password" TextMode="Password" runat="server"></asp:TextBox>
                </div>

                <div class="d-flex justify-content-between align-items-center">
                    <!-- Checkbox -->
                    <div class="form-check mb-0 ps-0">
                        <asp:CheckBox ID="cbRememberMe"  runat="server" />
                        <label class="form-check-label"">Remember me</label>
                    </div>
                    <button id="btnForget" class="btn" type="button">Forgot password?</button>
                </div>

                <div class="text-center text-lg-start mt-4 pt-2">
                    <asp:Button ID="btnLogin" CssClass="btn btn-primary btn-lg w-100" runat="server" Text="Login" style="padding-left: 2.5rem; padding-right: 2.5rem;"/>
                    <p class="small fw-bold mt-2 pt-1 mb-0">
                        Don't have an account? <a href="Register.aspx" class="link-danger">Register</a>
                    </p>
                </div>

            </div>
        </div>
    </div>

    <div id="forgetPanel" class="position-absolute shadow" Style="display:none; top: 50%; left: 50%; transform: translate(-50%,-50%); width: 400px; background-color: #fff; border: 1px solid #ccc; padding: 20px;">
        <button class="border-0 bg-white float-end" id="btnClose" type="button">       
            <span class="bi bi-x"></span>
        </button>
        <p class="fs-2"><b>Forget Password</b></p>
        <p>Enter your email to reset password.</p>
        <!-- Email input -->
        <div class="form-outline mb-4 float-none">
            <label class="form-label" for="form3Example3">Email address<span class="text-danger">*</span></label>
            <asp:TextBox ID="txtEmail" CssClass="form-control form-control-lg"
                placeholder="Enter a valid email address" TextMode="Email" runat="server"></asp:TextBox>
        </div>
        <asp:Button ID="btnConfirmReset" CssClass="btn btn-primary btn-lg w-100" runat="server" Text="Confirm" style="padding-left: 2.5rem; padding-right: 2.5rem;"/>
    </div>
    <script type="text/javascript">
        var btnForget = document.getElementById('btnForget');
        var btnClose = document.getElementById('btnClose');
        var forgetPanel = document.getElementById('forgetPanel');

        btnForget.addEventListener('click', function () {
            forgetPanel.style.display = "block";
        });

        btnClose.addEventListener('click', function () {
            forgetPanel.style.display = "none";
        });

    </script>
</asp:Content>
