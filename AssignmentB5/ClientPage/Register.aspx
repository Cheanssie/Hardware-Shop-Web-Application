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
                            <label class="form-label" for="form3Example3">Username<span class="text-danger">*</span></label>
                            <input type="text" id="form3Example3" class="form-control form-control-lg"
                                placeholder="Enter username" />
                        </div>
                        <div class="col form-outline">
                            <label class="form-label" for="form3Example3">Contact Number<span class="text-danger">*</span></label>
                            <input type="tel" id="form3Example3" class="form-control form-control-lg"
                                placeholder="Enter contact number" />
                        </div>
                    </div>

                </div>

                <!-- Email input -->
                <div class="form-outline mb-4">
                    <label class="form-label" for="form3Example3">Email address<span class="text-danger">*</span></label>
                    <input type="email" id="form3Example3" class="form-control form-control-lg"
                        placeholder="Enter a valid email address" />
                </div>

                <!-- Password input -->
                <div class="form-outline mb-3">
                    <label class="form-label" for="form3Example4">Password<span class="text-danger">*</span></label>
                    <input type="password" id="form3Example4" class="form-control form-control-lg"
                        placeholder="Enter password" />
                </div>

                <!-- Confirm Password input -->
                <div class="form-outline mb-3">
                    <label class="form-label" for="form3Example4">Confirm Password<span class="text-danger">*</span></label>
                    <input type="password" id="form3Example4" class="form-control form-control-lg"
                        placeholder="Confirm password" />
                </div>

                <div class="text-center text-lg-start mt-4 pt-2">
                    <button type="button" class="btn btn-primary btn-lg w-100" style="padding-left: 2.5rem; padding-right: 2.5rem;">Register</button>
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
