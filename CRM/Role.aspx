<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" EnableEventValidation="false" EnableViewState="true" CodeBehind="Role.aspx.cs" Inherits="CRM.Role" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:ScriptManager runat="server"></asp:ScriptManager>
        <asp:UpdatePanel runat="server">

            <ContentTemplate>
                <div class="container-fluid">
                    <asp:MultiView ID="MultiView1" ActiveViewIndex="0" runat="server">
                        <asp:View ID="view1" runat="server">
                            <div class="col-xl-12">
                                <div class="card" style="background: #F3F0EC;">
                                    <div class="card-body p-0 row">
                                        <div class="col-1">
                                            <asp:Button ID="BtnAdd" CssClass="btn btn-primary" runat="server" Text="Add New +" OnClick="BtnAdd_Click" />


                                        </div>
                                        <div class="col-md-7"></div>

                                        <div class="col-md-4">
                                            <div class="input-group">
                                                <asp:TextBox ID="txtSearch" CssClass="form-control" placeholder="Search by Role" runat="server" />
                                                <div class="input-group-append">
                                                    <asp:Button ID="BtnSearch" runat="server" Text="Search" CssClass="btn btn-primary" OnClick="BtnSearch_Click" />

                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-12">
                                <div class="card">
                                    <div class="card-body p-0">
                                        <asp:GridView runat="server" CssClass="table table-hover table-bordered table-striped" ID="gvrole" AutoGenerateColumns="false" PageSize="10" OnPageIndexChanging="gvrole_PageIndexChanging" AllowPaging="true" AllowSorting="true" EmptyDataText="No Data Found" GridLines="None" DataKeyNames="Role_Id">
                                            <Columns>

                                                <asp:BoundField DataField="SlNo" HeaderText="Sl.no" />
                                                <asp:TemplateField HeaderText="Role" Visible="false">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblid" runat="server" Text='<%#Eval("Role_Id")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Role Name">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblname" runat="server" Text='<%#Eval("Name")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Action">
                                                    <ItemTemplate>
                                                        <asp:ImageButton ID="BtnEdit" OnClick="BtnEdit_Click" runat="server" CommandArgument='<%#Eval("Role_Id")%>' ImageUrl="picturenew/update-removebg-preview.png" />
                                                        <asp:ImageButton ID="BtnDelete" OnClick="BtnDelete_Click" runat="server" CommandArgument='<%#Eval("Role_Id")%>' ImageUrl="picturenew/delete-removebg-preview.png" />

                                                    </ItemTemplate>

                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </asp:View>
                        <asp:View ID="view2" runat="server">
                            <div class="col-xl-12">
                                <div class="card">
                                    <div class="card-body p-0 col-md-12">
                                        <div class="p-3" style="margin-left: 10px;">
                                            <h2 style="color: var(--primary)!important">Role</h2>
                                        </div>
                                        <div class="form-group p-3 col-md-4" style="margin-left: 10px;">
                                            <asp:Label class="form-label" ForeColor="Black" ID="lblname" runat="server">Role<span style="color: red;"> * </span></asp:Label>
                                            <asp:TextBox ID="txtrole" CssClass="form-control" placeholder="Search by Role" runat="server" />
                                            <div class="mt-3">
                                                <asp:CheckBox runat="server" OnCheckedChanged="Manageraccess_CheckedChanged" ID="Manageraccess" AutoPostBack="true" />
                                                <asp:Label runat="server" ID="resultLabel"> Access for manager</asp:Label>
                                            </div>
                                            <div class="mt-3">
                                                <asp:CheckBox runat="server" OnCheckedChanged="Teamleaderaccess_CheckedChanged" ID="Teamleaderaccess" AutoPostBack="true" />
                                                <asp:Label runat="server" ID="lblteamlead"> Access for Teamlead</asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-12 col p-3" style="margin-left: 10px;">
                                        <asp:Button ID="BtnSubmit" CssClass="btn btn-primary" runat="server" Text="Submit" ValidationGroup="Submit" OnClick="BtnSubmit_Click" />
                                        <asp:Button ID="btdelete" CssClass="btn btn-danger" runat="server" Text="Delete" OnClick="btdelete_Click" />
                                        <asp:Button ID="BtnUpdate" CssClass="btn btn-primary" runat="server" Text="Update" OnClick="BtnUpdate_Click" />
                                        <asp:Button ID="BtnClear" CssClass="btn btn-light" runat="server" Text="Clear" OnClick="BtnClear_Click" />
                                        <asp:Button ID="btnBack" CssClass="btn btn-dark" runat="server" Text="Back" OnClick="btnBack_Click" />

                                    </div>
                                </div>

                            </div>
                            <%-- </div>--%>
                        </asp:View>
                    </asp:MultiView>
                    <%-- </asp:MultiView>--%>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</asp:Content>
