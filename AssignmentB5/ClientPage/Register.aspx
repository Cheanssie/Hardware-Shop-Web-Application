<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/ClientMaster.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="AssignmentB5.WebForm.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .h-custom {
            height: calc(100% - 73px);
        }

        @media (max-width: 700px) {
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
        <div class="row d-flex justify-content-center align-items-center h-100 flex-md-row flex-sm-column-reverse flex-column-reverse">
            <div class="col-custom col-md-6 col-lg-6 col-xl-4 offset-xl-1">
                <div class="divider d-flex align-items-center my-4">
                    <p class="lead fw-bold mb-0 fs-2 mx-auto">Register</p>
                </div>

                <!-- Username & Contact input -->
                <div class="mb-4">
                    <div class="row d-flex">
                        <div class="col form-outline">
                            <label class="form-label" for="txtUsername">Username<span class="text-danger">*</span></label>
                            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control form-control-lg"
                                placeholder="Enter username" ></asp:TextBox>
                        </div>
                        <div class="col form-outline">
                            <label class="form-label" for="txtContact">Contact Number<span class="text-danger">*</span></label>
                            <asp:TextBox ID="txtContact" runat="server" CssClass="form-control form-control-lg"
                                placeholder="Enter contact number" TextMode="Phone"></asp:TextBox>
                        </div>
                    </div>

                </div>

                <!-- Email input -->
                <div class="form-outline mb-4">
                    <label class="form-label" for="txtEmail">Email address<span class="text-danger">*</span></label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control form-control-lg"
                        placeholder="Enter a valid email address" TextMode="Email"></asp:TextBox>
                </div>

                <!-- Password input -->
                <div class="form-outline mb-3">
                    <label class="form-label" for="txtPassword">Password<span class="text-danger">*</span></label>
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control form-control-lg"
                        placeholder="Enter password" TextMode="Password"></asp:TextBox>
                </div>

                <!-- Confirm Password input -->
                <div class="form-outline mb-3">
                    <label class="form-label" for="txtConfirmPassword">Confirm Password<span class="text-danger">*</span></label>
                    <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control form-control-lg"
                        placeholder="Re-enter password" TextMode="Password"></asp:TextBox>
                </div>

                <div class="text-center text-lg-start mt-4 pt-2">
                    <asp:Button ID="btnRegister" runat="server" CssClass="btn btn-primary btn-lg w-100" style="padding-left: 2.5rem; padding-right: 2.5rem;" Text="Register" />
                    <p class="small fw-bold mt-2 pt-1 mb-0">
                        Already have an account? <a href="Login.aspx"
                            class="link-danger">Login</a>
                    </p>
                </div>
            </div>
            <div class="col-custom col-md-6 col-lg-6 col-xl-5">
                <img src="../img/login-bg.jpg" class="img-fluid" alt="Login Page" />
            </div>
        </div>
    </div>
</asp:Content>
