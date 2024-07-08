<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="manage_task.aspx.cs" Inherits="project_sem_6_.admin.manage_task" %>
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
                                <h4>Manage Tasks</h4>
                            </div>
                        </div>
                    </div>
                </div>
                <asp:Button ID="btn_addt" runat="server" OnClick="btn_addt_Click" CssClass="btn btn-info" Text="Add Task"/>
                <br />
                <br />
                <div class="pd-20 card-box mb-30">
                    <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand" class="table table-bordered text-center" AutoGenerateColumns="False">
                        <Columns>
                            <asp:TemplateField HeaderText="Sr no">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Employee Email">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("T_Emp_Email") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Task Description">
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("T_Description") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Task End By">
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("T_End_By") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Edit">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_edit" class="btn btn-success">Edit</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Remove">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_remove" class="btn btn-danger">Remove</asp:LinkButton>
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
                        <div class="col-md-12 col-sm-12">
                            <div class="title">
                                <h5><asp:Label ID="lbl_heading" runat="server" Text="Add"></asp:Label></h5>
                                <hr />
                            </div>
                        </div>
                        <br />
                        <form>
                            <div class="form-group row">
                                <asp:Label ID="Label1" runat="server" Text="Employee Email" class="col-sm-12 col-md-2 col-form-label"></asp:Label>
                                <div class="col-sm-12 col-md-10">
                                    <asp:DropDownList ID="T_Emp_Email" runat="server" class="custom-select form-control" DataSourceID="employee_name" DataTextField="Emp_Full_Name" DataValueField="Emp_Company_Email"></asp:DropDownList>
                                    <asp:SqlDataSource runat="server" ID="employee_name" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Employee_Management_db.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Emp_Full_Name], [Emp_Company_Email] FROM [Employee_tbl]"></asp:SqlDataSource>
                                </div>
                            </div>
                            <div class="form-group row">
                                <asp:Label ID="Label4" runat="server" Text="Task Description" class="col-sm-12 col-md-2 col-form-label"></asp:Label>
                                <div class="col-sm-12 col-md-10">
                                    <asp:TextBox ID="T_Description" runat="server" class="form-control" placeholder="Enter Task Description"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row">
                                <asp:Label ID="Label7" runat="server" Text="Task End By :" class="col-sm-12 col-md-2 col-form-label"></asp:Label>
                                <div class="col-sm-12 col-md-10">
                                    <asp:TextBox ID="T_End_By" runat="server" TextMode="Date" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="btn-set">
                                <asp:Button ID="Add_Task" runat="server" OnClick="Add_Task_Click" Text="Add" class="btn btn-primary" />
                            </div>
                        </form>
                    </div>
                </ContentTemplate>
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

