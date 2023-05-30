<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="OnlineSuperMarket.Views.Admin.customers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <div class="row">
        <div class="col">
            <h3 class="text-center">用户管理</h3>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <div class="mb-3">
                  <label for="" class="form-label text-success">用户名</label>
                  <input type="text" placeholder="" autocomplete="off" class ="form-control" runat="server" id ="CNameTb"/>
            </div>
            <div class="mb-3">
                  <label for="" class="form-label text-success">电子邮箱</label>
                 <input type="email" placeholder="" autocomplete="off" class ="form-control" runat="server" id ="EmailTb"/>
            </div>
            <div class="mb-3">
                  <label for="" class="form-label text-success">电话号码</label>
                   <input type="text" placeholder="" autocomplete="off" class ="form-control" runat="server" id ="PhoneTb"/>
            </div>
            <div class="mb-3">
                  <label for="" class="form-label text-success">密码</label>
                  <input type="text" placeholder="" autocomplete="off" class ="form-control" runat="server" id ="PassTb"/>
            </div>

            <div class="row">
                <asp:Label runat="server" ID="ErrMsg" class="text-danger text-center"></asp:Label>
                <div class="col-md-4">  <asp:Button Text="编辑" id ="EditBtn" runat="server" Class="btn-warning btn-block btn" Width="100px" OnClick="EditBtn_Click"/></div>
                <div class="col-md-4">  <asp:Button Text="保存" id ="SaveBtn" runat="server" Class="btn-success btn-block btn" Width="100px" OnClick="SaveBtn_Click"/></div>
                <div class="col-md-4">  <asp:Button Text="删除" id ="DeleteBtn" runat="server" Class="btn-danger btn-block btn" Width="100px" OnClick="DeleteBtn_Click"/></div>
            </div>
        </div>
        <div class="col-md-8">
            <asp:GridView ID="CustomerList" runat="server" class ="table" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateSelectButton="True" OnSelectedIndexChanged="CustomerList_SelectedIndexChanged">
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
