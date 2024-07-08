<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="working_hour.aspx.cs" Inherits="project_sem_6_.user.working_hour" %>

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
                                <li class="breadcrumb-item active" aria-current="page">Working Hour</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>

            <asp:Button ID="btnClockIn" runat="server" Text="Clock In" CssClass="btn btn-primary" OnClick="btnClockIn_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnClockOut" runat="server" Text="Clock Out" CssClass="btn btn-info" OnClick="btnClockOut_Click" />
            
            <br />
            <br />
            
            <div class="pd-20 card-box mb-30">
                <asp:GridView ID="GridView1" runat="server" class="table table-bordered text-center" AutoGenerateColumns="False">
                    <Columns>
                        <asp:TemplateField HeaderText="Emloyee Id">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("W_EmpId") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Clock In Time">
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("ClockInTime") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Clock Out Time">
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("ClockOutTime") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Total Hour">
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("CountHour") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />  

        </div>
</asp:Content>

