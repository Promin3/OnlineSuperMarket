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
                  <input type="text" placeholder="" autocomplete="off" class ="form-control" />
            </div>
            <div class="mb-3">
                  <label for="" class="form-label text-success">详细信息</label>
                 <input type="email" placeholder="" autocomplete="off" class ="form-control" />
            </div>

            <div class="row">
                <div class="col-md-4">  <asp:Button Text="编辑" runat="server" Class="btn-warning btn-block btn" Width="100px"/></div>
                <div class="col-md-4">  <asp:Button Text="保存" runat="server" Class="btn-success btn-block btn" Width="100px"/></div>
                <div class="col-md-4">  <asp:Button Text="删除" runat="server" Class="btn-danger btn-block btn" Width="100px"/></div>
            </div>
        </div>
        <div class="col-md-8">
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </div>
    </div>
</asp:Content>
