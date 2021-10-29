<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="KartOkuyucu.login" %>
  
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Personel Takip Sistemi | Big-A Yazılım & Veri Analizi</title>
        <link href="Content/css/styles.css" rel="stylesheet" />
        <link rel="icon" type="image/x-icon" href="Content/assets/img/favicon.png" />
        <script data-search-pseudo-elements defer src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.28.0/feather.min.js" crossorigin="anonymous"></script>
</head>
<body   style="background-color:white">
    <div id="layoutAuthentication">
        <div id="layoutAuthentication_content">
            <main>
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-5">
                            <!-- Basic login form-->
                            <div class="card shadow-lg border-0 rounded-lg mt-5">
                                <div class="card-header justify-content-center" style="background-color:white;text-align:center ">
                              
                                 <h3 class="font-weight-light my-1">   <img width="50%" src="images/logo.png" /></h3>

                                </div>
                                <div class="card-body">
                                    <form id="form2" runat="server">
                                        <!-- Form Group (email address)-->
                                       
                                        
                                        <div class="form-group">
                                            <label class="small mb-1" for="KullaniciAdı">Kullanıcı Adı</label> 
                                            <asp:TextBox class="form-control" placeholder="Kullanıcı Adınızı Giriniz" ID="tbAd" Text="user"  runat="server"></asp:TextBox>
                                            
                                            
                                     
                                        <!-- Form Group (password)-->
                                        <div class="form-group">
                                            <label class="small mb-1" for="Sifre">Sifre</label> 
                                            <asp:TextBox class="form-control" ID="tbSifre" type="password" placeholder="Şifrenizi Giriniz" Text="123123" runat="server"></asp:TextBox>
                                            
                                        </div>
                                        <!-- Form Group (remember password checkbox)-->
                                        <%--<div class="form-group">
                                            <div class="custom-control custom-checkbox">
                                                <input class="custom-control-input" id="rememberPasswordCheck" type="checkbox" />
                                                <label class="custom-control-label" for="rememberPasswordCheck">Şifremi Hatırla</label>
                                            </div> 
                                        </div>--%>
                                        <!-- Form Group (login box)-->
                                        <div class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
                                            <%--<a class="small" href="auth-password-basic.html">Forgot Password?</a>--%>
                                            
                                            <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Giriş" OnClick="Button1_Click" /> 

                                             </div><asp:Label ID="Label1" runat="server" Text=""></asp:Label>

                                            
                                        </div>
                                    </form>
                                </div>
                                <div class="card-footer text-center">
                                    <div class="small">
                                        <%--<a href="auth-register-basic.html">Need an account? Sign up!</a>--%>
                                        <label class="small mb-1"</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
        <div id="layoutAuthentication_footer">
            <footer class="footer mt-auto footer-dark">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-6 small">Copyright &copy; </div>
                        <%--<div class="col-md-6 text-md-right small">
                            <a href="#!">Privacy Policy</a>
                            &middot;
                               
                            <a href="#!">Terms &amp; Conditions</a>
                        </div>--%>
                    </div>
                </div>
            </footer>
        </div>
    </div>
       <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="Content/js/scripts.js"></script>
</body>

     
</html>

