<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="manage_leave.aspx.cs" Inherits="project_sem_6_.admin.manage_leave" %>
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
                                <h4>Manage Leaves</h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="pd-20 card-box mb-30">
                    <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand" class="table table-bordered text-center" AutoGenerateColumns="False">
                        <Columns>
                            <asp:TemplateField HeaderText="Sr no">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Employee Id">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("L_Emp_Id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Action">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("L_Action") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Action">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_action" class="btn btn-info">See</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
            <br>
            <br>
            <br>
			<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
			<asp:UpdatePanel ID="UpdatePanel1" runat="server" Visible="False">
				<ContentTemplate>				
					<div class="pd-20 card-box mb-30">
                        <div class="title">
                            <h5>
                                <h5>Leave Information</h5>
                            <hr />
                        </div>
                                
                                <br />
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            Employee Id :
                                            <asp:Label ID="Emp_Id" runat="server" class="h5 text-black-50" Text="Label"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            Leave Type : 
                                            <asp:Label ID="Leave_Type" runat="server" class="h5 text-black-50" Text="Label"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            Leave Category :
                                            <asp:Label ID="Leave_Category" runat="server" class="h5 text-black-50" Text="Label"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            Leave Start Date :
                                            <asp:Label ID="Leave_Start_Date" runat="server" class="h5 text-black-50" Text="Label"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            Leave End Date :
                                            <asp:Label ID="Leave_End_Date" runat="server" class="h5 text-black-50" Text="Label"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            Leave Remark : 
                                            <asp:Label ID="Leave_Remark" runat="server" class="h5 text-black-50" Text="Label"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            Action :
                                            <asp:Label ID="Leave_Action" runat="server" class="h5 text-black-50" Text="Label"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                                <div class="btn-set">
                                    <asp:Button ID="btn_approve" runat="server" Text="Approve" OnClick="btn_approve_Click" class="btn btn-success" />
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btn_decline" runat="server" Text="Decline" OnClick="btn_decline_Click" class="btn btn-danger" />
                                </div>
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
            <br />
    <%--</div>--%>
    </div>
</asp:Content>

