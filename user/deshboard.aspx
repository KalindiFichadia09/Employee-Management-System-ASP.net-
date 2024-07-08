<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="deshboard.aspx.cs" Inherits="project_sem_6_.user.deshboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder3">
    <div class="main-container">
        <div class="xs-pd-20-10 pd-ltr-20">
            <div class="page-header">
                <div class="row">
                    <div class="col-md-6 col-sm-12">
                        <div class="title">
                            <h4>Dashboard</h4>
                        </div>
                        <nav aria-label="breadcrumb" role="navigation">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="index.aspx">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Dashboard</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
            <div class="card-box pd-20 height-100-p mb-30">
                <div class="row align-items-center">
                    <div class="col-md-4">
                        <img src="../vendors/images/banner-img.png" alt="">
                    </div>
                    <div class="col-md-8">
                        <h4 class="font-20 weight-500 mb-10 text-capitalize">Welcome back
                        <div class="weight-600 font-30 text-blue">
                            <%--Johnny Brown!--%>
                            <asp:Label ID="Emp_Full_Name" runat="server" Text="Label"></asp:Label> !!
                        </div>
                        </h4>
                    </div>
                </div>
            </div>
            <div class="row clearfix progress-box">
                <div class="col-lg-3 col-md-6 col-sm-12 mb-30">
                                <!-- <div class="card-box pd-30 height-100-p"> -->
                                <!-- <div class="progress-box text-center"> -->
                                <!-- <input type="text" class="knob dial1" value="80" data-width="120" data-height="120" data-linecap="round" data-thickness="0.12" data-bgColor="#fff" data-fgColor="#1b00ff" data-angleOffset="180" readonly> -->
                                <!-- <h5 class="text-blue padding-top-10 h5">My Attendence</h5> -->
                                <!-- <span class="d-block">80% Average </span> -->
                                <!-- </div> -->
                                <!-- </div> -->
                            </div>
                <div class="col-lg-3 col-md-6 col-sm-12 mb-30">
                    <div class="card-box pd-30 height-100-p">
                        <div class="progress-box text-center">
                            <input type="text" class="knob dial1" value="80" data-width="120" data-height="120" data-linecap="round" data-thickness="0.12" data-bgcolor="#fff" data-fgcolor="#1b00ff" data-angleoffset="180" readonly>
                            <h5 class="text-blue padding-top-10 h5">My Attendence</h5>
                            <span class="d-block">80% Average </span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12 mb-30">
                    <div class="card-box pd-30 height-100-p">
                        <div class="progress-box text-center">
                            <input type="text" class="knob dial2" value="5" data-width="120" data-height="120" data-linecap="round" data-thickness="0.12" data-bgcolor="#fff" data-fgcolor="#00e091" data-angleoffset="180" readonly>
                            <h5 class="text-light-green padding-top-10 h5">My Leave</h5>
                            <span class="d-block">5/25 </span>
                        </div>
                    </div>
                </div>
            </div>
    </div>
</asp:Content>


