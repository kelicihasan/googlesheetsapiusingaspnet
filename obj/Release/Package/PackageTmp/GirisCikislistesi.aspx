<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="GirisCikislistesi.aspx.cs" Inherits="KartOkuyucu.GirisCikislistesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cnt1" runat="server">
 <form id="form1" runat="server">
        <%--<asp:UpdatePanel ID="UpdatePanel1" runat="server" ChildrenAsTriggers="false" UpdateMode="Conditional">
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click" />
                    <asp:AsyncPostBackTrigger ControlID="btnYeni" EventName="Click" />
                </Triggers>
                <ContentTemplate>--%>
        <header class="page-header page-header-dark bg-green pb-10">


            <div class="container">
                <div class="page-header-content pt-4">
                    <div class="row align-items-center justify-content-between">
                        <div class="col-auto mt-4">
                            <h1 class="page-header-title">
                                <div class="page-header-icon"><i data-feather="activity"></i></div>
                                Giriş - Çıkışlar 
                                        
                            </h1>
                        </div>
                        <div class="col-12 col-xl-auto mt-4">
                              
                                    <input type="button" id="btnSmsGonder" value="SMS Gönder" class="btn bg-white" />
                                

                            <asp:Button class="btn bg-white" ID="btnYeni" runat="server" Text="Yeni Kayıt" />
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <!-- Grid Burda-->
        <div class="card-body mb-2  mt-n15">
            <div class="card mb-4">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card-body">
                            <div class="form-row">

                                
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <asp:Label class="text-gray-600 small" ID="Label3" runat="server" Text="Tarih"></asp:Label><asp:TextBox  type="date" onkeypress="return SayiGirme(event)" class="form-control form-control-solid" ID="tbTarih" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                               <%-- <div class="col-md-3">
                                    <div class="form-group">
                                        <asp:Label class="text-gray-600 small" ID="Label1334" runat="server" Text="Ad"></asp:Label><asp:TextBox class="form-control form-control-solid" ID="tbAd" runat="server"></asp:TextBox>
                                    </div>
                                </div>--%>
                                

                                  

                                <div class="col-md-3">
                                    <div class="form-group" >
                                        <br />
                                        <asp:Button CssClass="form-control btn btn-outline-success" ID="Button1" runat="server" Text="Göster" Onclick="Button1_Click" />
                                    </div>
                                </div>

                                <div class="col-md-3" style="padding-top: 9px">
                                    <div class="form-group">
                                        <br />
                                        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                        <asp:Label class="text-green" ID="lbMesaj" runat="server" Text="&nbsp"></asp:Label>

                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>

            </div>
             <div class="card mb-4">

                <div class="card-body" style="overflow: auto">
                    <div class="datatable">

                        <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">TARİH</th>
                                    <th scope="col">ZAMAN</th>
                                    <%--<th scope="col">KIMLIK_ID</th>--%>
                                    <th scope="col">ISIM SOYISIM</th>

                                </tr>
                            </thead>

                            <tbody>
                                <asp:Repeater ID="rptGirisCikis" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                           
                                            <td><%#Eval("ID")%></td>
                                            <td><%#Eval("DATE")%></td>
                                            <td><%#Eval("TIME")%></td>
                                           <%-- <td><%#Eval("KIMLIK_ID")%></td>--%>
                                            <td><%#Eval("ISIM_SOYISIM")%></td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>
        </div>
    </form>
</asp:Content>
