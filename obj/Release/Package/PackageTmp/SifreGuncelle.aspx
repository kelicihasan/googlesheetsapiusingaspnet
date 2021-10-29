<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SifreGuncelle.aspx.cs" Inherits="KartOkuyucu.SifreGuncelle" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cnt1" runat="server">
    <form id="form1" runat="server">

        <header class="page-header page-header-dark bg-green pb-10">


            <div class="contabiner">
                <div class="page-header-content pt-4">
                    <div class="row align-items-center justify-content-between">
                        <div class="col-auto mt-4">

                            <h1 class="page-header-title">

                                <div class="page-header-icon"><i data-feather="activity"></i></div>
                                Şifre Güncelleme Formu
                            </h1>
                        </div>

                    </div>
                </div>
            </div>
        </header>


        <div class="card-body mb-2   mt-n15">
            <div class="card mb-12">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card-body">
                            <div class="form-row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <asp:Label class="text-gray-600 small" ID="Label12" runat="server" Text="Mevcut Şifre"></asp:Label><asp:TextBox TextMode="Password" class="form-control form-control-solid" ID="tbAd" runat="server"></asp:TextBox>

                                    </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <asp:Label class="text-gray-600 small" ID="Label1" runat="server" Text="Yeni Şifre"></asp:Label><asp:TextBox TextMode="Password" class="form-control form-control-solid" ID="TextBox1" runat="server"></asp:TextBox>

                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <asp:Label class="text-gray-600 small" ID="Label2" runat="server" Text="Yeni Şifre Tekrar"></asp:Label><asp:TextBox TextMode="Password" class="form-control form-control-solid" ID="TextBox2" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <br />
                                            <asp:Button ID="Button1" runat="server" CssClass="form-control" Text="Güncelle" OnClick="Button1_Click" />
                                        </div>
                                    </div>
                                   <div class="col-md-3">

                                        <div class="form-group">
                                            <asp:Label ID="Label3" runat="server" Width="500" Text=" "></asp:Label>

                                        </div>
                                    </div>
                                </div>

                            </div>








                        </div>
                    </div>
                </div>

            </div>
    </form>


</asp:Content>

