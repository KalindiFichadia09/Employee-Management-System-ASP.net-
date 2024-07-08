<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="manage_employee.aspx.cs" Inherits="project_sem_6_.admin.manage_employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
    <div class="main-container">
        <div class="pd-ltr-20 xs-pd-20-10">
            <div class="min-height-200px">
                <div class="page-header">
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="title">
                                <h4>Manage Employees</h4>
                            </div>
                        </div>
                    </div>
                </div>
                <asp:Button ID="btn_adde" runat="server" OnClick="btn_adde_Click" CssClass="btn btn-info" Text="Add Employee" />
                <br />
                <br />
                <div class="pd-20 card-box mb-30">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="table table-bordered text-center" OnRowCommand="GridView1_RowCommand">
                        <Columns>
                            <asp:TemplateField HeaderText="Sr no">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Employee Id">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Emp_Employee_Id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Employee Full Name">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Emp_Full_Name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Employee Company Email">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Emp_Company_Email") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Employee Mobile">
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Emp_Mobile") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="View">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' class="btn btn-secondary" CommandName="btn_view">View</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Edit">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Id") %>' class="btn btn-info" CommandName="btn_edit">Edit</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Remove">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%# Eval("Id") %>' class="btn btn-danger" CommandName="btn_remove">Remove</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>

            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" Visible="False">
                <ContentTemplate>
                    <div class="pd-20 card-box mb-30">
                        <div class="title">
                            <h5>
                                <asp:Label ID="lbl_heading" runat="server" Text="Add"></asp:Label></h5>
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
                                            <asp:TextBox ID="Emp_Full_Name" runat="server" class="form-control" placeholder="Enter Full Name"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            Father Name : 
                                            <asp:TextBox ID="Emp_Father_Name" runat="server" class="form-control" placeholder="Enter Full Name"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            Mother Name :
                                            <asp:TextBox ID="Emp_Mother_Name" runat="server" class="form-control" placeholder="Enter Full Name"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            Gender :
                                            <asp:RadioButtonList ID="Emp_Gender" runat="server" class="form-control" RepeatDirection="Horizontal">
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
                                            <asp:TextBox ID="Emp_Date_of_Birth" runat="server" TextMode="Date" class="form-control" placeholder="Enter Full Name"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            Adhar number : 
                                            <asp:TextBox ID="Emp_Adhar_Number" MaxLength="12" runat="server" TextMode="Number" class="form-control" placeholder="Enter Full Name"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            Blood Group :
                                            <asp:DropDownList ID="Emp_Blood_Group" runat="server" class="custom-select form-control">
                                                <asp:listitem>--Select Blood Group--</asp:listitem>
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
                                            <asp:TextBox ID="Emp_Age" runat="server" MaxLength="2" TextMode="Number" class="form-control" placeholder="Enter Full Name"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            Mobile :
                                            <asp:TextBox ID="Emp_Mobile" runat="server" TextMode="Phone" class="form-control" placeholder="Enter Full Name"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            Email :
                                            <asp:TextBox ID="Emp_Email" TextMode="Email" runat="server" class="form-control" placeholder="Enter Full Name"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:Label ID="Label18" runat="server" Text="Image"></asp:Label>
                                            <asp:FileUpload ID="Emp_Image" runat="server" class="form-control"  />
                                            <%--<asp:FileUpload ID="Emp_Image" runat="server" class="form-control" />--%>
                                        </div>
                                    </div>
                                </div>
                                <div class="btn-set">
                                    <asp:Button ID="Button7" runat="server" Text="Next" OnClick="Button7_Click" class="btn btn-primary" CommandName="NextView" />
                                </div>
                            </asp:View>

                            <asp:View ID="View2" runat="server">
                                <h5>Company Information</h5>
                                <br />
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:Label ID="Label20" runat="server" Text="Employee Id"></asp:Label>
                                            <asp:TextBox ID="Emp_Employee_Id" runat="server" class="form-control" placeholder="Enter Employee Id"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:Label ID="Label1" runat="server" Text="Employee Department"></asp:Label>
                                            <asp:DropDownList ID="Emp_Department" runat="server" class="custom-select form-control" DataSourceID="departmentName" DataTextField="Dept_Name" DataValueField="Dept_Name">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource runat="server" ID="departmentName" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Employee_Management_db.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Dept_Name] FROM [Department_tbl]"></asp:SqlDataSource>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:Label ID="Label4" runat="server" Text="Year of Joining"></asp:Label>
                                            <asp:TextBox ID="Emp_Year_of_Joining" TextMode="Date" runat="server" class="form-control" placeholder="Enter Full Name"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:Label ID="Label5" runat="server" Text="Company Email"></asp:Label>
                                            <asp:TextBox ID="Emp_Company_Email" runat="server" class="form-control" placeholder="Enter Full Name"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:Label ID="Label6" runat="server" Text="Job Type"></asp:Label>
                                            <asp:DropDownList ID="Emp_Job_Type" runat="server" class="custom-select form-control">
                                                <asp:listitem>--Select Job Type--</asp:listitem>
                                                <asp:ListItem>Parmenent</asp:ListItem>
                                                <asp:ListItem>Temporary</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:Label ID="Label17" runat="server" Text="Password"></asp:Label>
                                            <asp:TextBox ID="Emp_Password" runat="server" class="form-control" placeholder="Enter Password"></asp:TextBox>
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
                                            <asp:TextBox ID="Emp_Address" runat="server" class="form-control" placeholder="Enter Full Name"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:Label ID="Label8" runat="server" Text="city"></asp:Label>
                                            <asp:DropDownList ID="Emp_City" runat="server" class="custom-select form-control">
                                                <asp:listitem>--Select City--</asp:listitem>
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
                                            <asp:DropDownList ID="Emp_State" runat="server" class="custom-select form-control">
                                                <asp:listitem>--Select State--</asp:listitem>
                                                <asp:ListItem>Gujrat</asp:ListItem>
                                                <asp:ListItem>Maharashta</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:Label ID="Label10" runat="server" Text="Country"></asp:Label>
                                            <asp:DropDownList ID="Emp_Country" runat="server" class="custom-select form-control">
                                                <asp:listitem>--Select Country--</asp:listitem>
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
                                            <asp:TextBox ID="Emp_Pincode" runat="server" class="form-control" placeholder="Enter Full Name"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:Label ID="Label12" runat="server" Text="Emergency number"></asp:Label>
                                            <asp:TextBox ID="Emp_Emergency_no" TextMode="Phone" runat="server" class="form-control" placeholder="Enter Full Name"></asp:TextBox>
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
                                            <asp:TextBox ID="Emp_Account_Holder_Name" runat="server" class="form-control" placeholder="Enter Full Name"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:Label ID="Label14" runat="server" Text="Bank Name"></asp:Label>
                                            <asp:TextBox ID="Emp_Bank_Name" runat="server" class="form-control" placeholder="Enter Full Name"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:Label ID="Label19" runat="server" Text="Account Number"></asp:Label>
                                            <asp:TextBox ID="Emp_Account_no" MaxLength="12" TextMode="Number" runat="server" class="form-control" placeholder="Enter Full Name"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:Label ID="Label15" runat="server" Text="Bank IFSC code"></asp:Label>
                                            <asp:TextBox ID="Emp_Bank_IFSC_Code" runat="server" class="form-control" placeholder="Enter Full Name"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:Label ID="Label16" runat="server" Text="Bank code"></asp:Label>
                                            <asp:TextBox ID="Emp_Bank_Code" runat="server" class="form-control" placeholder="Enter Full Name"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:Label ID="Label21" runat="server" Text="Branch Name"></asp:Label>
                                            <asp:TextBox ID="Emp_Branch_Name" runat="server" class="form-control" placeholder="Enter Full Name"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="btn-set">
                                    <asp:Button ID="Button1" runat="server" Text="Previous" class="btn btn-primary" CommandName="PrevView" />
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btn_crud" runat="server" Text="Add" OnClick="btn_crud_Click" class="btn btn-primary" />
                                </div>
                            </asp:View>
                        </asp:MultiView>
                    </div>
                </ContentTemplate>
                <Triggers>
                    <asp:PostBackTrigger ControlID="Button7" />
                </Triggers>
            </asp:UpdatePanel>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
        </div>
</asp:Content>

