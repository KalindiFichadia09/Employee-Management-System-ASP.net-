<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="manage_payroll.aspx.cs" Inherits="project_sem_6_.admin.manage_payroll" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
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
                                <li class="breadcrumb-item active" aria-current="page">Manage Payroll</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
    
    <div class="pd-20 card-box mb-30">
        <div class="col-md-12 col-sm-12">
            <div class="title">
                <h5>
                    <asp:Label ID="lbl_heading" runat="server" Text="Give Payroll"></asp:Label>
                </h5>
                <hr />
            </div>
        </div>
        <br />
        <form>
            <div class="form-group row">
                <asp:Label ID="Label1" runat="server" Text="Employee Id" class="col-sm-12 col-md-2 col-form-label"></asp:Label>
                <div class="col-sm-12 col-md-10">
                    <asp:DropDownList ID="P_Emp_Id" class="custom-select form-control" runat="server" DataSourceID="emp_name_with_id" DataTextField="Emp_Full_Name" DataValueField="Emp_Employee_Id"></asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="emp_name_with_id" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Employee_Management_db.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Emp_Full_Name], [Emp_Employee_Id] FROM [Employee_tbl]"></asp:SqlDataSource>
                </div>
            </div>
            <div class="form-group row">
                <asp:Label ID="Label4" runat="server" Text="Month" class="col-sm-12 col-md-2 col-form-label"></asp:Label>
                <div class="col-sm-12 col-md-10">
                    <asp:DropDownList ID="P_Month" runat="server" class="custom-select form-control">
                        <asp:ListItem Text="January" Value="1"></asp:ListItem>
                        <asp:ListItem Text="February" Value="2"></asp:ListItem>
                        <asp:ListItem Text="March" Value="3"></asp:ListItem>
                        <asp:ListItem Text="April" Value="4"></asp:ListItem>
                        <asp:ListItem Text="May" Value="5"></asp:ListItem>
                        <asp:ListItem Text="June" Value="6"></asp:ListItem>
                        <asp:ListItem Text="July" Value="7"></asp:ListItem>
                        <asp:ListItem Text="August" Value="8"></asp:ListItem>
                        <asp:ListItem Text="September" Value="9"></asp:ListItem>
                        <asp:ListItem Text="October" Value="10"></asp:ListItem>
                        <asp:ListItem Text="November" Value="11"></asp:ListItem>
                        <asp:ListItem Text="December" Value="12"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="form-group row">
                <asp:Label ID="Label7" runat="server" Text="Year :" class="col-sm-12 col-md-2 col-form-label"></asp:Label>
                <div class="col-sm-12 col-md-10">
                    <asp:TextBox ID="P_Year" runat="server" placeholder="Enter Year" class="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="btn-set">
                <asp:Button ID="give_payroll" runat="server" Text="Give Payroll" OnClick="give_payroll_Click" class="btn btn-primary" />
            </div>
        </form>
    </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
</asp:Content>

