<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PersonelTanimlama.aspx.cs" Inherits="KartOkuyucu.PersonelTanimlama" %>
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
                                Personel Kayıt Formu
                            </h1>
                        </div>


                        <div class="col-12 col-xl-auto mt-4">
                            <asp:Button class=" float-right form-control form-control-solid " ID="btnYeni" runat="server" Text="Yeni Kayıt" OnClick="btnYeni_Click" />

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
                                        <asp:Label class="text-gray-600 small" ID="Label10" runat="server" Text="Kart Numarası"></asp:Label><asp:TextBox class="form-control form-control-solid" ID="tbKartNumarasi" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group ">
                                        <asp:Label class="text-gray-600 small" ID="Label12" runat="server" Text="Ad"></asp:Label><asp:TextBox class="form-control form-control-solid" ID="tbAd" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <asp:Label class="text-gray-600 small" ID="Label3" runat="server" Text="Soyad"></asp:Label><asp:TextBox onkeypress="return SayiGirme(event)" class="form-control form-control-solid" ID="tbSoyad" runat="server"></asp:TextBox>
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
                                        <asp:Button CssClass="form-control btn btn-outline-success" ID="Button1" runat="server" Text="Kaydet" OnClick="Button1_Click" />
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>

                </div>

            </div>



            <div class="card-body mb-2  ">

             
                <asp:Panel ID="pnlGiysiSat" runat="server" Visible="true">
                   
                        <div class="card mb-4">
                            <div class="card-body" style="overflow: auto">
                                <div class="datatable">
                                    <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th scope="col"></th>

                                                <th scope="col">Kart Numarası</th>
                                                <th scope="col">Ad</th>
                                                <th scope="col">Soyad</th>
                                               <%-- <th scope="col">Toplam Fiyat</th>

                                                <th scope="col">Açıklama</th>--%>

                                            </tr>
                                        </thead>



                                        <tbody>
                                            <%--<asp:Repeater ID="Repeater1" OnItemCommand="MyButtonCommandEvent" runat="server">--%>
                                            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="repeater1_ItemCommand" >
                                                <ItemTemplate>
                                                    <tr>
                                                        <td>
                                                            <asp:HiddenField ID="KartNo" runat="server" Value='<%# Eval("KartNo") %>' />
                                                            <asp:HiddenField ID="Ad" runat="server" Value='<%# Eval("Ad") %>' />
                                                            <asp:HiddenField ID="Soyad" runat="server" Value='<%# Eval("Soyad") %>' />
                                                            <asp:HiddenField ID="Id" runat="server" Value='<%# Eval("Id") %>' />

                                                            <asp:LinkButton ID="LinkButton1" CommandName="Update" runat="server">Göster</asp:LinkButton>
                                                            <asp:LinkButton ID="LinkButton2" CommandName="Delete" runat="server" OnClientClick="return confirm('Ürün Alış Kaydını Silmek İstediğinizden Emin Misiniz?');">Sil</asp:LinkButton>

                                                        </td>


                                                        <td><%#Eval("KartNo")%></td>
                                                        <td><%#Eval("Ad")%></td>
                                                        <td><%#Eval("Soyad")%></td>
                                                        <%--<td><%#Eval("ToplamFiyat")%></td>

                                                        <td><%#Eval("Aciklama")%></td>--%>

                                                    </tr>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </tbody>
                                    </table>
                                </div>

                            </div>
                        </div>
                    <%--<><asp:Label class="text-gray-600 small" ID="Label2" runat="server" Text="Ad"></asp:Label><asp:TextBox class="form-control form-control-solid" ID="TextBox1" runat="server"></asp:TextBox>--%>

                </asp:Panel>



                <asp:Panel ID="pnlMesaj" runat="server" Visible="false">

                    <div class="card-body mb-2  ">

                        <div class="card mb-4">
                            <div class="card-body">
                                <div class="form-row">


                                    <div class="col-md-6">
                                        <!-- Form Group (first name)-->
                                        <div class="form-group">
                                            <asp:Label class="text-gray-600 small" ID="Label1" runat="server" Text="Mesaj"></asp:Label>
                                            <asp:TextBox class="form-control form-control-solid small" Style="padding: 10px;" ID="tbMesaj" runat="server" aria-haspopup="true" aria-expanded="false" DataTextField="ad" DataValueField="Id">
                                    
                                            </asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="col-md-3">

                                        <div class="form-group">
                                            <asp:Label class="text-gray-600 small" ID="Label28" runat="server" Text="&nbsp"></asp:Label>
                                            <asp:Button CssClass="form-control btn btn-outline-success" ID="btnMesaj" runat="server" Text="Gönder" />
                                        </div>
                                    </div>

                                    <div class="col-md-3" style="padding-top: 9px">
                                        <div class="form-group">
                                            <br />
                                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            <asp:Label class="text-green" ID="lbMesajGonder" runat="server" Text="&nbsp"></asp:Label>

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
                                                <th scope="col">Tarih</th>
                                                <th scope="col">Mesaj</th>
                                                <th scope="col">Gönderen</th>
                                            </tr>
                                        </thead>



                                        <tbody>
                                            <%--<asp:Repeater ID="Repeater1" OnItemCommand="MyButtonCommandEvent" runat="server">--%>
                                            <asp:Repeater ID="Repeater2" runat="server">
                                                <ItemTemplate>
                                                    <tr>
                                                        <td><%#Eval("createDate")%></td>
                                                        <td><%#Eval("Mesaj")%></td>
                                                        <td><%#Eval("Gonderen")%></td>
                                                    </tr>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </tbody>
                                    </table>
                                </div>

                            </div>
                        </div>
                    </div>

                </asp:Panel>

                <asp:Panel ID="pnlTahsilat" runat="server" Visible="false">
                    <div class="card-body mb-2  ">


                        <div class="card mb-4">
                            <div class="card-body">
                                <div class="form-row">

                                    <div class="col-md-3">
                                        <!-- Form Group (first name)-->
                                        <div class="form-group">
                                            <asp:Label class="text-gray-600 small" ID="Label20" runat="server" Text="Dönem"></asp:Label>
                                            <asp:TextBox class="form-control form-control-solid small" Style="padding: 10px;" ID="tbDonem" runat="server" aria-haspopup="true" aria-expanded="false">
                                    
                                            </asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <!-- Form Group (first name)-->
                                        <div class="form-group">
                                            <asp:Label class="text-gray-600 small" ID="Label26" runat="server" Text="Borç"></asp:Label>
                                            <asp:TextBox class="form-control form-control-solid small" Style="padding: 10px;" ID="tbBorc" runat="server" aria-haspopup="true" aria-expanded="false">
                                    
                                            </asp:TextBox>
                                        </div>
                                    </div>


                                    <div class="col-md-3">
                                        <!-- Form Group (first name)-->
                                        <div class="form-group">
                                            <asp:Label class="text-gray-600 small" ID="Label21" runat="server" Text="Ödenen"></asp:Label>
                                            <asp:TextBox class="form-control form-control-solid small" Style="padding: 10px;" ID="tbOdenen" runat="server" aria-haspopup="true" aria-expanded="false">
                                    
                                            </asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <!-- Form Group (first name)-->
                                        <div class="form-group">
                                            <asp:Label class="text-gray-600 small" ID="Label23" runat="server" Text="Peşin/Banka"></asp:Label>
                                           <asp:DropDownList class="form-control form-control-solid small" Style="padding: 10px;" ID="dlTur" runat="server" aria-haspopup="true" aria-expanded="false" DataTextField="ad" DataValueField="Id"  >
                                        </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">

                                        <div class="form-group">
                                            <asp:Label class="text-gray-600 small" ID="Label27" runat="server" Text="&nbsp"></asp:Label>
                                            <asp:Button CssClass="form-control btn btn-outline-success" ID="btnTahsilat" runat="server" Text="Kaydet"/>
                                        </div>
                                    </div>

                                    <div class="col-md-3" style="padding-top: 9px">
                                        <div class="form-group">
                                            <br />
                                            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            <asp:Label class="text-green" ID="Label29" runat="server" Text="&nbsp"></asp:Label>

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
                                                <th></th>
                                                <th scope="col">Dönem</th>
                                                <th scope="col">Borc</th>
                                                <th scope="col">Ödenen</th>
                                                <th scope="col">Kalan</th>
                                                <th scope="col">Ödeme Tarihi</th>
                                                <th scope="col">Peşin/Banka</th>
                                            </tr>
                                        </thead>



                                        <tbody>
                                            <%--<asp:Repeater ID="Repeater1" OnItemCommand="MyButtonCommandEvent" runat="server">--%>
                                            <asp:Repeater ID="rptTahsilat" runat="server">
                                                <ItemTemplate>
                                                    <tr>
                                                         <td>
                                                            <asp:HiddenField ID="TahsilatId" runat="server" Value='<%# Eval("Id") %>' />

                                                            <asp:LinkButton ID="LinkButton2" CommandName="Update" runat="server">Göster</asp:LinkButton>
                                                            <asp:LinkButton ID="LinkButton1" CommandName="Delete" runat="server" OnClientClick="return confirm('Üye Kaydını Silmek İstediğinizden Emin Misiniz?');">Sil</asp:LinkButton>


                                                        </td>
                                                        <td><%#Eval("Donem")%></td>
                                                        <td><%#Eval("Borc")%></td>
                                                        <td><%#Eval("Odenen")%></td>
                                                        <td><%#Eval("Kalan")%></td>
                                                        <td><%#Eval("OdemeTarihi")%></td>
                                                        <td><%#Eval("Tur")%></td>



                                                    </tr>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </tbody>
                                    </table>
                                </div>

                            </div>
                        </div>
                    </div>
                </asp:Panel>














            </div>
            <%--</ContentTemplate>
            </asp:UpdatePanel>--%>
    </form>

    <%--  //----resim yukleme popup div--%>
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Kameranızı hazırlayınız</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                </div>
                <div class="modal-body">
                    <table>
                        <tr>
                            <td style="width: 100%;">
                                <div id="webcam"></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <img src="#" class="form-control" id="imgCapture" />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="button" class="btn btn-primary form-control" id="btnCapture" value="RESİM ÇEK" />
                            </td>
                        </tr>
                    </table>

                </div>
            </div>
        </div>
    </div>
    <%--  //----resim yukleme popup div--%>
</asp:Content>
