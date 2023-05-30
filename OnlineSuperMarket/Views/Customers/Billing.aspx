<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Customers/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="Billing.aspx.cs" Inherits="OnlineSuperMarket.Views.Customers.Billing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type ="text/javascript">
        function PrintBill() {
            var PGrid = document.getElementById('<%=ShoppingCartList.ClientID%>');
            PGrid.bordr = 0;
            var PWin = window.open('', 'PrintGrid', 'left=100, top=100, width=1024, height=768, tollvar=0, scrollbars = 1, status= 0, resizable=1');
            PWin.document.write(PGrid.outerHTML);
            PWin.document.close();
            PWin.focus();
            PWin.print();
            PWin.close();
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <div class="container-fluid">
        <div class="row">
        </div>
        <div class="row">
            <div class="col-md-5">
                <h3 class="text-center" style="color: teal">商品选购</h3>
                <div class="row">
                    <div class="col">
                        <div class="mt-3">
                            <label for="" class="form-label text-success">商品名称</label>
                            <input type="text" placeholder="" autocomplete="off" class="form-control" runat="server" id="PNameTb" />
                        </div>
                    </div>
                    <div class="col">
                        <div class="mt-3">
                            <label for="" class="form-label text-success">价格</label>
                            <input type="text" placeholder="" autocomplete="off" class="form-control" runat="server" id="PriceTb" />
                        </div>
                    </div>
                    <div class="col">
                        <div class="mt-3">
                            <label for="" class="form-label text-success">数量</label>
                            <input type="text" placeholder="" autocomplete="off" class="form-control" runat="server" id="QtyTb" />
                        </div>
                    </div>
                    <div class="row mt-3 mb-3">
                        <div class="col d-grid">
                            <asp:Button Text="加入购物车" runat="server" ID="AddTobillBtn" Class="btn-warning btn-block btn" OnClick="AddTobillBtn_Click" />
                        </div>
                    </div>
                </div>
                <div class="row mt-5">
                    <h4 class="text-center" style="color: teal">商品列表</h4>
                    <div class="col">
                        <asp:GridView ID="ProductList" runat="server" class="table" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateSelectButton="True" OnSelectedIndexChanged="ProductList_SelectedIndexChanged">
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
            </div>
            <div class="col-md-7">
                <h4 class="text-center" style="color: firebrick">购物车</h4>
                <div class="col">
                    <asp:GridView ID="ShoppingCartList" runat="server" class="table" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="ProductList_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="SlateBlue" Font-Bold="false" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                    <div class="row">
                        <div class=" row">
                            <div class ="col-md-5">

                            </div>
                            <div class="col-md-1">
                                <asp:Label runat="server" ID="RMBLabel" class="text-danger text-center"></asp:Label>
                            </div>
                            <div class="col-md-6">
                                <asp:Label runat="server" ID="GrdTotalTb" class="text-danger text-center"></asp:Label><br />
                            </div>
                        </div>
                        <div class=" row"> 
                            <asp:Button Text="结算" runat="server" ID="PrintBtn" OnClientClick ="PrintBill()" Class="btn-warning btn-block btn" OnClick="PrintBtn_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
