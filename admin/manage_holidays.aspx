<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="manage_holidays.aspx.cs" Inherits="project_sem_6_.admin.manage_holidays" %>
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
                                <h4>Manage Holidays</h4>
                            </div>
                        </div>
                    </div>
                </div>
                <asp:Button ID="btn_addh" runat="server" CssClass="btn btn-info" Text="Add Holiday" OnClick="btn_addh_Click"/>
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
                            <asp:TemplateField HeaderText="Holiday Name">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("H_Name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="From">
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("H_Start_Date") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="To">
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("H_End_Date") %>'></asp:Label>
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
                                <asp:Label ID="Label1" runat="server" Text="Department Name" class="col-sm-12 col-md-2 col-form-label"></asp:Label>
                                <div class="col-sm-12 col-md-10">
                                    <asp:TextBox ID="H_Name" runat="server" class="form-control" placeholder="Enter Holiday Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group row">
                            <asp:Label ID="Label5" runat="server" Text="Leave Start Date :" class="col-sm-12 col-md-2 col-form-label"></asp:Label>
                            <div class="col-sm-12 col-md-10">
                                <asp:TextBox ID="H_Start_Date" runat="server" TextMode="Date" class="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group row">
                            <asp:Label ID="Label6" runat="server" Text="Leave End Date :" class="col-sm-12 col-md-2 col-form-label"></asp:Label>
                            <div class="col-sm-12 col-md-10">
                                <asp:TextBox ID="H_End_Date" runat="server" TextMode="Date" class="form-control"></asp:TextBox>
                            </div>
                        </div>
                            <div class="btn-set">
                                <asp:Button ID="Add_Holiday" runat="server" Text="Add" OnClick="Add_Holiday_Click" class="btn btn-primary" />
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

