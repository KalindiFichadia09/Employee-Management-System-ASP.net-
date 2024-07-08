<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="employee_profile.aspx.cs" Inherits="project_sem_6_.admin.employee_profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder3">
    <div class="main-container">
			<div class="pd-ltr-20 xs-pd-20-10">
				<div class="min-height-200px">
					<div class="page-header">
						<div class="row">
							<div class="col-md-12 col-sm-12">
								<div class="title">
									<h4>Profile</h4>
								</div>
								<nav aria-label="breadcrumb" role="navigation">
									<ol class="breadcrumb">
										<li class="breadcrumb-item"><a href="index.aspx">Home</a></li>
										<li class="breadcrumb-item active" aria-current="page">Profile</li>
									</ol>
								</nav>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 mb-30">
							<div class="pd-20 card-box height-100-p">
								<div class="profile-photo">
									<!-- <a href="modal" data-toggle="modal" data-target="#modal" class="edit-avatar"><i class="fa fa-pencil"></i></a> -->
									<asp:Image ID="Emp_Image" runat="server" Height="400" Width="300" AlternateText="Profile Photo"/>
									<%--<img src="../vendors/images/photo1.jpg" alt="" class="avatar-photo">--%>
									<div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
										<div class="modal-dialog modal-dialog-centered" role="document">
											<div class="modal-content">
												<div class="modal-body pd-5">
													<div class="img-container">
														<img id="image" src="../vendors/images/photo2.jpg" alt="Picture">
													</div>
												</div>
												<div class="modal-footer">
													<input type="submit" value="Update" class="btn btn-primary">
													<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
												</div>
											</div>
										</div>
									</div>
								</div>
								<h5 class="text-center h5 mb-0"><%--Johnny Brown--%></h5>
								<!-- <p class="text-center text-muted font-14"></p> -->
							</div>
						</div>
					
						<div class="col-xl-8 col-lg-8 col-md-8 col-sm-12 mb-30">
							<div class="card-box height-100-p overflow-hidden">
								<div class="profile-tab height-100-p">
									<div class="tab height-100-p">
										<div class="tab-content">
											<div class="profile-info">
												<h2 class="dw dw-user1 mb-20 h2 text-blue"[]>&nbsp;Personal Information</h2><hr>
												<ul>
													<div class="row">
														<li class="col-md-6">
															<span>Full Name :</span>
															<asp:Label ID="Emp_Full_Name" runat="server" class="h5 text-black-50" Text="Label"></asp:Label>
															<%--Johnny Erik Brown--%>
														</li>
														<li class="col-md-6">
															<span>Father Name :</span>
															<asp:Label ID="Emp_Father_Name" runat="server" class="h5 text-black-50" Text="Label"></asp:Label>
															<%--Erik Brown--%>
														</li>
													</div>
													<div class="row">
														<li class="col-md-6">
															<span>Mother Name :</span>
															<asp:Label ID="Emp_Mother_Name" runat="server" class="h5 text-black-50" Text="Label"></asp:Label>
															<%--Renee Brown--%>
														</li>
														<li class="col-md-6">
															<span>Gender :</span>
															<asp:Label ID="Emp_Gender" runat="server" class="h5 text-black-50" Text="Label"></asp:Label>
															<%--Male--%>
														</li>
													</div>
													<div class="row">
														<li class="col-md-6">
															<span>Date Of Birth :</span>
															<asp:Label ID="Emp_Date_of_Birth" runat="server" class="h5 text-black-50" Text="Label"></asp:Label>
															<%--23/12/2000--%>
														</li>
														<li class="col-md-6">
															<span>Adharr Number :</span>
															<asp:Label ID="Emp_Adhar_Number" runat="server" class="h5 text-black-50" Text="Label"></asp:Label>
															<%--1234 5678 9012--%>
														</li>
													</div>
													<div class="row">
														<li class="col-md-6">
															<span>Blood Group :</span>
															<asp:Label ID="Emp_Blood_Group" runat="server" class="h5 text-black-50" Text="Label"></asp:Label>
															<%--B+--%>
														</li>
														<li class="col-md-6">
															<span>Age :</span>
															<asp:Label ID="Emp_Age" runat="server" class="h5 text-black-50" Text="Label"></asp:Label>
															<%--24--%>
														</li>
													</div>
													<div class="row">
														<li class="col-md-6">
															<span>Mobile no :</span>
															<asp:Label ID="Emp_Mobile" runat="server" class="h5 text-black-50" Text="Label"></asp:Label>
															<%--+91 9929478288--%>
														</li>
														<li class="col-md-6">
															<span>Email :</span>
															<asp:Label ID="Emp_Email" runat="server" class="h5 text-black-50" Text="Label"></asp:Label>
															<%--johnny.brown23@gmail.com--%>
														</li>
													</div>
													<div class="row">
														<li class="col-md-6">
															<span>Password :</span>
															<asp:Label ID="Emp_Password" runat="server" class="h5 text-black-50" Text="Label"></asp:Label>
															<%--+91 9929478288--%>
														</li>
														
													</div>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 mb-30">
							<div class="pd-20  height-100-p">
							</div>
						</div>
						<div class="col-xl-8 col-lg-8 col-md-8 col-sm-12 mb-30">
							<div class="card-box height-100-p overflow-hidden">
								<div class="profile-tab height-100-p">
									<div class="tab height-100-p">
										<div class="tab-content">
											<div class="profile-info">
												<i class="icon-copy fa fa-building text-blue" aria-hidden="true"></i>
												<h2 class="fa building h2 text-blue"[]>&nbsp;Employee Information</h2><hr>
												<ul>
													<div class="row">
														<li class="col-md-6">
															<span>Employee Id :</span>
															<asp:Label ID="Emp_Employee_Id" runat="server" class="h5 text-black-50" Text="Label"></asp:Label>
															<%--21AFL101--%>
														</li>
														<li class="col-md-6">	
															<span>Department Name :</span>
															<asp:Label ID="Emp_Department" runat="server" class="h5 text-black-50" Text="Label"></asp:Label>
															<%--Sales--%>
														</li>
													</div>
													<div class="row">
														<li class="col-md-6">
															<span>Year of Joining :</span>
															<asp:Label ID="Emp_Year_of_Joining" runat="server" class="h5 text-black-50" Text="Label"></asp:Label>
															<%--15/01.2021--%>
														</li>
														<li class="col-md-6">
															<span>Comapny Email :</span>
															<asp:Label ID="Emp_Company_Email" runat="server" class="h5 text-black-50" Text="Label"></asp:Label>
															<%--johnny.brown@autofusion.in--%>
														</li>
													</div>
													<div class="row">
														<li class="col-md-6">
															<span>Job Type :</span>
															<asp:Label ID="Emp_Job_Type" runat="server" class="h5 text-black-50" Text="Label"></asp:Label>
															<%--Permenent--%> 
														</li>
													</div>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 mb-30">
							<div class="pd-20  height-100-p">
							</div>
						</div>
						<div class="col-xl-8 col-lg-8 col-md-8 col-sm-12 mb-30">
							<div class="card-box height-100-p overflow-hidden">
								<div class="profile-tab height-100-p">
									<div class="tab height-100-p">
										<div class="tab-content">
											<div class="profile-info">
												<i class="icon-copy ion-chatbubbles text-blue"></i>
												<h2 class="ion chatbubbles mb-20 h2 text-blue"[]>&nbsp;Contact Information</h2><hr>
												<ul>
													<div class="row">
														<li class="col-md-6">
															<span>Address :</span>
															<asp:Label ID="Emp_Address" runat="server" class="h5 text-black-50" Text="Label"></asp:Label>
															<%--1807 Holden Street San Diego, CA--%>
														</li>
														<li class="col-md-6">
															<span>City :</span>
															<asp:Label ID="Emp_City" runat="server" class="h5 text-black-50" Text="Label"></asp:Label>
															<%--Mumbai--%>
														</li>
													</div>
													<div class="row">
														<li class="col-md-6">
															<span>State :</span>
															<asp:Label ID="Emp_State" runat="server" class="h5 text-black-50" Text="Label"></asp:Label>
															<%--Maharashtra--%>
														</li>
														<li class="col-md-6">
															<span>Country :</span>
															<asp:Label ID="Emp_Country" runat="server" class="h5 text-black-50" Text="Label"></asp:Label>
															<%--India--%>
														</li>
													</div>
													<div class="row">
														<li class="col-md-6">
															<span>Pincode :</span>
															<asp:Label ID="Emp_Pincode" runat="server" class="h5 text-black-50" Text="Label"></asp:Label>
															<%--310004--%>
														</li>
														<li class="col-md-6">
															<span>Emergency no :</span>
															<asp:Label ID="Emp_Emergency_no" runat="server" class="h5 text-black-50" Text="Label"></asp:Label>
															<%--+91 9988446655--%>
														</li>
													</div>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 mb-30">
							<div class="pd-20  height-100-p">
							</div>
						</div>
						<div class="col-xl-8 col-lg-8 col-md-8 col-sm-12 mb-30">
							<div class="card-box height-100-p overflow-hidden">
								<div class="profile-tab height-100-p">
									<div class="tab height-100-p">
										<div class="tab-content">
											<div class="profile-info">
												<i class="icon-copy fa fa-bank text-blue" aria-hidden="true"></i>
												<h2 class="icon fa bank mb-20 h2 text-blue"[]>&nbsp;Bank Information</h2><hr>
												<ul>
													<div class="row">
														<li class="col-md-6">
															<span>Bank Account Holder Name :</span>
															<asp:Label ID="Emp_Account_Holder_Name" runat="server" class="h5 text-black-50" Text="Label"></asp:Label>
															<%--Bank of India--%>
														</li>
														<li class="col-md-6">
															<span>Bank Name :</span>
															<asp:Label ID="Emp_Bank_Name" runat="server" class="h5 text-black-50" Text="Label"></asp:Label>
															<%--Bank of India--%>
														</li>
													</div>
													<div class="row">
														<li class="col-md-6">
															<span>Bank Account No :</span>
															<asp:Label ID="Emp_Account_no" runat="server" class="h5 text-black-50" Text="Label"></asp:Label>
															<%--12345678911--%>
														</li>
														<li class="col-md-6">	
															<span>Bank IFSC Code :</span>
															<asp:Label ID="Emp_Bank_IFSC_Code" runat="server" class="h5 text-black-50" Text="Label"></asp:Label>
															<%--123456789101--%>
														</li>
													</div>
													<div class="row">
														<li class="col-md-6">	
															<span>Bank Code :</span>
															<asp:Label ID="Emp_Bank_Code" runat="server" class="h5 text-black-50" Text="Label"></asp:Label>
															<%--123456789101--%>
														</li>
														<li class="col-md-6">
															<span>Bank Branch Name :</span>
															<asp:Label ID="Emp_Branch_Name" runat="server" class="h5 text-black-50" Text="Label"></asp:Label>
															<%--Bhakti nager circle--%>
														</li>
													</div>
													</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
</asp:Content>

