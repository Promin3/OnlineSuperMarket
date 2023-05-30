<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="OnlineSuperMarket.Views.Admin.Categories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
     <div class="row">
        <div class="col">
            <h3 class="text-center">类目管理</h3>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <div class="mb-3">
                  <label for="" class="form-label text-success">类目名称</label>
                  <input type="text" placeholder="" autocomplete="off" class ="form-control" runat="server" id="CatNameTb"/>
            </div>
            <div class="mb-3">
                  <label for="" class="form-label text-success">详细信息</label>
                 <input type="text" placeholder="" autocomplete="off" class ="form-control" runat="server" id="DescriptionTb"/>
            </div>

            <div class="row">
                  <asp:Label runat="server" ID="ErrMsg" class="text-danger text-center"></asp:Label>
                <div class="col-md-4">  <asp:Button Text="编辑" runat="server" id = "EditBtn" Class="btn-warning btn-block btn" Width="100px" OnClick="EditBtn_Click"/></div>
                <div class="col-md-4">  <asp:Button Text="保存" runat="server" id = "SaveBtn" Class="btn-success btn-block btn" Width="100px" OnClick="SaveBtn_Click"/></div>
                <div class="col-md-4">  <asp:Button Text="删除" runat="server" id = "DeleteBtn" Class="btn-danger btn-block btn" Width="100px" OnClick="DeleteBtn_Click"/></div>
            </div>
        </div>
        <div class="col-md-8">
            <asp:GridView ID="CategoryList" runat="server" class ="table" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateSelectButton="True" OnSelectedIndexChanged="CategoryList_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="teal" Font-Bold="false" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
        </div>
    </div>
</asp:Content>
