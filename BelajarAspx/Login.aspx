<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BelajarAspx.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Halaman Login</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link href="bootstrap4/css/bootstrap.min.css" rel="stylesheet" />
    <link href="additional-file/css/global.css" rel="stylesheet" />
    <link href="additional-file/img/logo/logofilm.png" rel="shortcut icon" />

</head>
<body>
    <div class="container-fluid bg">
        <h1 class="text-center text-white font-weight-bold bg-dark rounded-bottom border border-white">APLIKASI PENYEWAAN PERFILMAN INTERNATIONAL</h1>
        <div class="row">
            <div class="col-md-4 col-sm-12"></div>
            <div class="col-md-4 col-sm-12">
                 <form class="container-form text-white font-weight-bold" runat="server">
                     <h2 class="text-center mb-3">Silahkan Login</h2>
                  <div class="form-group">                    
                      <label for="exampleInputEmail1">Email address</label>
                      <asp:TextBox ID="TxtUser" CssClass="form-control" placeholder="Masukkan Email" runat="server"></asp:TextBox>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                      <asp:TextBox ID="TxtPassword" TextMode="Password" CssClass="form-control" placeholder="Masukkan Password" runat="server"></asp:TextBox>
                  </div>
                     <asp:Button ID="BtnLogin" OnClick="BtnLogin_Click"  CssClass="btn btn-dark btn-block mt-4 font-weight-bold text-whute" runat="server" Text="MASUK" />
                     <asp:Label ID="LblWarning" CssClass="text-danger" runat="server" Text=""></asp:Label>
                 </form>
            </div>
            <div class="col-md-4 col-sm-12"></div>
        </div>
    </div>
    <script src="bootstrap4/js/bootstrap.min.js"></script>
</body>
</html>
