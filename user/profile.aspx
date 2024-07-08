<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="project_sem_6_.user.profile" %>
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
						<div class="col-xl-3 col-lg-4 col-md-4 col-sm-12 mb-30">
							<div class="pd-20 card-box height-80-p">
								<div class="profile-photo">
									<asp:Image ID="Emp_Image" runat="server" AlternateText="Profile Photo"/>
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
								<br /><br />
								<h5 class="text-center h5 mb-0"><asp:Label ID="lbl_emp_name" runat="server" Text="name"></asp:Label></h5>
								<%--<h5 class="text-center h5 mb-0">Johnny Brown</h5>--%>
								<div class="profile-social">
									<h5 class="mb-20 h5 text-blue">Action</h5>
									<ul class="clearfix">
                                        <asp:LinkButton ID="btn_update" OnClick="btn_update_Click" CssClass="dropdown-item" runat="server" CausesValidation="false"><i class="dw dw-edit2"></i>&nbsp;&nbsp;Update Profile</asp:LinkButton>
									</ul>
								</div>
							</div>
						</div>
					
						<div class="col-xl-9 col-lg-8 col-md-8 col-sm-12 mb-30">
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
						<div class="col-xl-3 col-lg-4 col-md-4 col-sm-12 mb-30">
							<div class="pd-20  height-100-p">
							</div>
						</div>
						<div class="col-xl-9 col-lg-8 col-md-8 col-sm-12 mb-30">
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
						<div class="col-xl-3 col-lg-4 col-md-4 col-sm-12 mb-30">
							<div class="pd-20  height-100-p">
							</div>
						</div>
						<div class="col-xl-9 col-lg-8 col-md-8 col-sm-12 mb-30">
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
						<div class="col-xl-3 col-lg-4 col-md-4 col-sm-12 mb-30">
							<div class="pd-20  height-100-p">
							</div>
						</div>
						<div class="col-xl-9 col-lg-8 col-md-8 col-sm-12 mb-30">
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

                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" Visible="False">
                        <ContentTemplate>
                            <div class="pd-20 card-box mb-30">
                                <div class="title">
                                    <h5>
                                        <asp:Label ID="lbl_heading" runat="server" Text="Update"></asp:Label></h5>
                                    <hr />
                                </div>
                                <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="-1">
                                    <asp:View ID="View1" runat="server">
                                        <h5>Personal Information</h5>
                                        <br />
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    Full Name :
													<asp:TextBox ID="Emp_Full_Name_U" runat="server" class="form-control" placeholder="Enter Full Name"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    Father Name : 
													<asp:TextBox ID="Emp_Father_Name_U" runat="server" class="form-control" placeholder="Enter Full Name"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    Mother Name :
													<asp:TextBox ID="Emp_Mother_Name_U" runat="server" class="form-control" placeholder="Enter Full Name"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    Gender :
													<asp:RadioButtonList ID="Emp_Gender_U" runat="server" class="form-control" RepeatDirection="Horizontal">
														<asp:ListItem>Male</asp:ListItem>
														<asp:ListItem>Female</asp:ListItem>
													</asp:RadioButtonList>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    Date of Birth :
													<asp:TextBox ID="Emp_Date_of_Birth_U" runat="server" TextMode="Date" class="form-control" placeholder="Enter Full Name"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    Adhar number : 
													<asp:TextBox ID="Emp_Adhar_Number_U" MaxLength="12" runat="server" TextMode="Number" class="form-control" placeholder="Enter Full Name"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    Blood Group :
													<asp:DropDownList ID="Emp_Blood_Group_U" runat="server" class="custom-select form-control">
														<asp:ListItem>A+</asp:ListItem>
														<asp:ListItem>A-</asp:ListItem>
														<asp:ListItem>B+</asp:ListItem>
														<asp:ListItem>B-</asp:ListItem>
														<asp:ListItem>O+</asp:ListItem>
														<asp:ListItem>O-</asp:ListItem>
														<asp:ListItem>AB+</asp:ListItem>
														<asp:ListItem>AB-</asp:ListItem>
													</asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    Age :
													<asp:TextBox ID="Emp_Age_U" runat="server" MaxLength="2" TextMode="Number" class="form-control" placeholder="Enter Full Name"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    Mobile :
													<asp:TextBox ID="Emp_Mobile_U" runat="server" TextMode="Phone" class="form-control" placeholder="Enter Full Name"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    Email :
													<asp:TextBox ID="Emp_Email_U" TextMode="Email" runat="server" class="form-control" placeholder="Enter Full Name"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">

                                            <%--<div class="col-md-6">
                                                <div class="form-group">
                                                    <asp:Label ID="Label18" runat="server" Text="Image"></asp:Label>
                                                    <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" />
                                                </div>
                                            </div>--%>
                                        </div>
                                        <div class="btn-set">
                                            <asp:Button ID="Button7" runat="server" Text="Next" class="btn btn-primary" CommandName="NextView" />
                                        </div>
                                    </asp:View>

                                    <asp:View ID="View2" runat="server">
                                        <h5>Company Information</h5>
                                        <br />
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <asp:Label ID="Label20" runat="server" Text="Employee Id"></asp:Label>
                                                    <asp:TextBox ID="Emp_Employee_Id_U" runat="server" class="form-control" placeholder="Enter Employee Id"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <asp:Label ID="Label1" runat="server" Text="Employee Department"></asp:Label>
                                                    <asp:DropDownList ID="Emp_Department_U" runat="server" class="custom-select form-control">
                                                        <asp:ListItem>Sales</asp:ListItem>
                                                        <asp:ListItem>Production</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <asp:Label ID="Label4" runat="server" Text="Year of Joining"></asp:Label>
                                                    <asp:TextBox ID="Emp_Year_of_Joining_U" TextMode="Date" runat="server" class="form-control" placeholder="Enter Full Name"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <asp:Label ID="Label5" runat="server" Text="Company Email"></asp:Label>
                                                    <asp:TextBox ID="Emp_Company_Email_U" runat="server" class="form-control" placeholder="Enter Full Name"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <asp:Label ID="Label6" runat="server" Text="Job Type"></asp:Label>
                                                    <asp:DropDownList ID="Emp_Job_Type_U" runat="server" class="custom-select form-control">
                                                        <asp:ListItem>Parmenent</asp:ListItem>
                                                        <asp:ListItem>Temporary</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <asp:Label ID="Label17" runat="server" Text="Password"></asp:Label>
                                                    <asp:TextBox ID="Emp_Password_U" runat="server" class="form-control" placeholder="Enter Password"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="btn-set">
                                            <asp:Button ID="Button4" runat="server" Text="Previous" class="btn btn-primary" CommandName="PrevView" />
                                            &nbsp;&nbsp;&nbsp;
											<asp:Button ID="Button5" runat="server" Text="Next" class="btn btn-primary" CommandName="NextView" />
                                        </div>
                                    </asp:View>

                                    <asp:View ID="View3" runat="server">
                                        <h5>Contact Information</h5>
                                        <br />
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <asp:Label ID="Label7" runat="server" Text="Address"></asp:Label>
                                                    <asp:TextBox ID="Emp_Address_U" runat="server" class="form-control" placeholder="Enter Full Name"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <asp:Label ID="Label8" runat="server" Text="city"></asp:Label>
                                                    <asp:DropDownList ID="Emp_City_U" runat="server" class="custom-select form-control">
                                                        <asp:ListItem>Rajkot</asp:ListItem>
                                                        <asp:ListItem>Jamnager</asp:ListItem>
                                                        <asp:ListItem>Mumbai</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <asp:Label ID="Label9" runat="server" Text="State"></asp:Label>
                                                    <asp:DropDownList ID="Emp_State_U" runat="server" class="custom-select form-control">
                                                        <asp:ListItem>Gujrat</asp:ListItem>
                                                        <asp:ListItem>Maharashta</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <asp:Label ID="Label10" runat="server" Text="Country"></asp:Label>
                                                    <asp:DropDownList ID="Emp_Country_U" runat="server" class="custom-select form-control">
                                                        <asp:ListItem>India</asp:ListItem>
                                                        <asp:ListItem>UK</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <asp:Label ID="Label11" runat="server" Text="Pincode"></asp:Label>
                                                    <asp:TextBox ID="Emp_Pincode_U" runat="server" class="form-control" placeholder="Enter Full Name"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <asp:Label ID="Label12" runat="server" Text="Emergency number"></asp:Label>
                                                    <asp:TextBox ID="Emp_Emergency_no_U" TextMode="Phone" runat="server" class="form-control" placeholder="Enter Full Name"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="btn-set">
                                            <asp:Button ID="Button2" runat="server" Text="Previous" class="btn btn-primary" CommandName="PrevView" />
                                            &nbsp;&nbsp;&nbsp;
											<asp:Button ID="Button3" runat="server" Text="Next" class="btn btn-primary" CommandName="NextView" />
                                        </div>
                                    </asp:View>

                                    <asp:View ID="View4" runat="server">
                                        <h5>Bank Information</h5>
                                        <br />
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <asp:Label ID="Label13" runat="server" Text="Account Holder Name"></asp:Label>
                                                    <asp:TextBox ID="Emp_Account_Holder_Name_U" runat="server" class="form-control" placeholder="Enter Full Name"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <asp:Label ID="Label14" runat="server" Text="Bank Name"></asp:Label>
                                                    <asp:TextBox ID="Emp_Bank_Name_U" runat="server" class="form-control" placeholder="Enter Full Name"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <asp:Label ID="Label19" runat="server" Text="Account Number"></asp:Label>
                                                    <asp:TextBox ID="Emp_Account_no_U" MaxLength="12" TextMode="Number" runat="server" class="form-control" placeholder="Enter Full Name"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <asp:Label ID="Label15" runat="server" Text="Bank IFSC code"></asp:Label>
                                                    <asp:TextBox ID="Emp_Bank_IFSC_Code_U" runat="server" class="form-control" placeholder="Enter Full Name"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <asp:Label ID="Label16" runat="server" Text="Bank code"></asp:Label>
                                                    <asp:TextBox ID="Emp_Bank_Code_U" runat="server" class="form-control" placeholder="Enter Full Name"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <asp:Label ID="Label21" runat="server" Text="Branch Name"></asp:Label>
                                                    <asp:TextBox ID="Emp_Branch_Name_U" runat="server" class="form-control" placeholder="Enter Full Name"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="btn-set">
                                            <asp:Button ID="Button1" runat="server" Text="Previous" class="btn btn-primary" CommandName="PrevView" />
                                            &nbsp;&nbsp;&nbsp;
											<asp:Button ID="btn_crud" runat="server" OnClick="btn_crud_Click" Text="Update" class="btn btn-primary" />
                                        </div>
                                    </asp:View>
                                </asp:MultiView>
                            </div>
                        </ContentTemplate>
                        <%--<Triggers>
                            <asp:PostBackTrigger ControlID="Button7" />
                        </Triggers>--%>
                    </asp:UpdatePanel>
				</div>
</asp:Content>

