<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="BelajarAspx.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <title>HOME PAGE</title>
    <link href="additional-file/css/global.css" rel="stylesheet" />
    <link href="bootstrap4/css/bootstrap.css" rel="stylesheet" />
    <link href="additional-file/css/jquery.dataTables.min.css" rel="stylesheet" />
    <link href="additional-file/img/logo/logofilm.png" rel="shortcut icon" />

</head>
<body>
    <form id="form1" runat="server">
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-primary">
                <!-- Brand -->
              <a class="navbar-brand text-white font-weight-bold" href="#">
                  <img class="shadow col-5" src="additional-file/img/logo/logofilm.png"/>
                  APFI
              </a>

                <!-- Toggle -->
              <button class="navbar-toggler text-white" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon text-white"></span>
              </button>

                <!-- MenuBar -->
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle font-weight-bold text-white" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      SOSIAL MEDIA
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <a class="dropdown-item" href="#">Facebook</a>
                      <a class="dropdown-item" href="#">Youtube</a>
                      <a class="dropdown-item" href="#">Instagram</a>
                      <a class="dropdown-item" href="#">Git Hub</a>
                      <div class="dropdown-divider"></div>
                      <asp:Button ID="btnLogout" CssClass="btn btn-danger btn-block text-center" OnClick="BtnLogOut_Click" runat="server" Text="KELUAR" />
                    </div>
                   
                  </li>
                </ul>
                <div class="form-inline my-2 my-lg-0">
                  <input class="form-control mr-sm-2" type="search" placeholder="Cari Film" aria-label="Cari Film"/>
                  <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Cari</button>
                </div>
              </div>
                <!-- / Brand -->

            </nav>
        </header>
        <main role="main">
            <div class="container mt-5 mb-5">
                <asp:Repeater ID="RptTampilBarang" runat="server">
                    <HeaderTemplate>
                        <table id="myTable" class="table table-striped table-hover table-borderless">
                        <thead>
                            <tr>
                                <th>Kode Film</th>
                                <th>Nama Film</th>
                                <th>Kategori</th>
                                <th>Harga Sewa</th>
                                <th>Detail</th>
                            </tr>
                        </thead>
                    <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("Kodebarang") %></td>
                            <td><%# Eval("NamaBarang") %></td>
                            <td><%# Eval("Satuan") %></td>
                            <td><%# Eval("Kategory") %></td>
                            <td>
                                <a id="Edit_Barang" data-toggle="modal" data-target="#ModalEdit" data-id="<%# Eval("Kodebarang") %>"
                                data-nama="<%# Eval("NamaBarang") %>" data-satuan="<%# Eval("Satuan") %>" data-kateg="<%# Eval("Kategory") %>" 
                                class="btn btn-warning btn-sm">Detail</a>
                            </td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                            </tbody>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
               <button class="btn btn-primary" type="button" data-target="#ModalTambah" data-toggle="modal">Tambah Film</button>
            </div>

            <!-- Modal Tambah -->
            <div class="modal fade" id="ModalTambah" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header alert-primary">
                    <h5 class="modal-title" id="exampleModalLabel">Form Tambah Film</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="Nama Film"></asp:Label>
                        <asp:TextBox ID="TxtNamaBarang" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="Kategori"></asp:Label>
                        <asp:DropDownList ID="DdlSatuan" CssClass="form-control" runat="server">
                            <asp:ListItem>--Pilih Kategori--</asp:ListItem>
                            <asp:ListItem>Action</asp:ListItem>
                            <asp:ListItem>Drama</asp:ListItem>
                            <asp:ListItem>Horor</asp:ListItem>
                            <asp:ListItem>Komedi</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Text="Total Harga"></asp:Label>
                        <asp:TextBox ID="txtKategory" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                      <asp:Button ID="BtnSave" OnClick="BtnSave_Click" CssClass="btn btn-primary" runat="server" Text="Simpan" />
                  </div>
                </div>
              </div>
            </div>

             <!-- Modal Edit -->
            <div class="modal fade" id="ModalEdit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header alert-primary">
                    <h5 class="modal-title" >Form Edit Film</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <div class="form-group">
                        <asp:Label ID="Label7" runat="server" Text="Kode Film"></asp:Label>
                        <asp:TextBox ClientIDMode="Static" ID="TxtEditKode" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" Text="Nama Film"></asp:Label>
                        <asp:TextBox ID="TxtEditNama" ClientIDMode="Static" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label5" runat="server" Text="Kategori"></asp:Label>
                        <asp:DropDownList ClientIDMode="Static" ID="DdlEditSatuan" CssClass="form-control" runat="server">
                            <asp:ListItem>--Pilih Kategori--</asp:ListItem>
                            <asp:ListItem>Action</asp:ListItem>
                            <asp:ListItem>Drama</asp:ListItem>
                            <asp:ListItem>Horor</asp:ListItem>
                            <asp:ListItem>Komedi</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label6" runat="server" Text="Total Harga"></asp:Label>
                        <asp:TextBox ID="TxtEditKategory" ClientIDMode="Static" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                  </div>
                  <div class="modal-footer">
                      <asp:Button ID="BtnHapus" OnClick="BtnHapus_Click" CssClass="btn btn-danger" runat="server" Text="Hapus" />
                      <asp:Button ID="BtnEdit" OnClick="BtnEdit_Click" CssClass="btn btn-primary" runat="server" Text="Simpan" />
                  </div>
                </div>
              </div>
            </div>
        </main>
        <footer class="bg-dark rounded-top text-white p-4">
            <div class="row">
                <div class="col-md-3">
                    <h5>CARA PENGGUNAAN APLIKASI</h5>
                    <ul>
                        <li>Masukkan Nama FILM</li>
                        <li>Masukkan Harga Sewa</li>
                        <li>Masukkan Harga Total</li>
                        <li>Simpan atau Cari Film</li>
                    </ul>
                </div>
                <div class="col-md-3">
                    <h5>TENTANG PERFILMAN</h5>
                    <p>
                       Film, juga dikenal sebagai movie, gambar hidup, film teater atau 
                        foto bergerak, merupakan serangkaian gambar diam, yang ketika 
                        ditampilkan pada layar akan menciptakan ilusi gambar bergerak 
                        karena efek fenomena phi.
                    </p>
                </div>
                <div class="col-md-3">
                    <h5>UNIVERSITAS NASIONAL</h5>
                    <img class="col-5" src="additional-file/img/150px-Logo_Universitas_Nasional.gif" />
                    <ul>
                        <li><u><b>Jurusan Terkait</b></u></li>
                        <li>Teknik Informatika</li>
                        <li>Sistem Informasi</li>
                        <li>Ilmu Komputer dan Jaringan</li>
                    </ul>
                </div>
                <div class="col-md-3">
                    <h5>HUBUNGI SAYA</h5>
                    <ul>
                        <li><u><b>Putri Amelia</b></u></li>
                        <li>197006516057</li>
                        <li>085697736681</li>
                        <li>pa70458@gmail.com</li>
                        <li>Jl. Kebagusan Wates No. 60</li>
                    </ul>
                </div>
    
                <div class="col-md-3"></div>
                <div class="col-md-3"></div>
                <div class="col-md-3"></div>
            </div>
        </footer>
    <div class="copyright text-center text-white font-weight-bold bg-primary p-2">
        <p>UAS Praktikum Pemrograman Visual<i class="far fa-copyright"></i> 2021</p>
    </div>
    </form>
    <script src="additional-file/js/jquery-3.5.1.slim.min.js"></script>
    <script src="additional-file/js/popper.min.js"></script>
    <script src="bootstrap4/js/bootstrap.min.js"></script>
    <script src="additional-file/js/jquery.dataTables.min.js"></script>

    <script>
        $(document).ready(function () {
            $('#myTable').DataTable();
        });

        $(document).on("click", "#Edit_Barang", function () {
            var _kode = $(this).data("id");
            var _nama = $(this).data("nama");
            var _satuan = $(this).data("satuan");
            var _kateg = $(this).data("kateg");

            $("#ModalEdit #TxtEditKode").val(_kode);
            $("#ModalEdit #TxtEditNama").val(_nama);
            $("#ModalEdit #DdlEditSatuan").val(_satuan);
            $("#ModalEdit #TxtEditKategory").val(_kateg);
            $("#ModalEdit #TxtEditKode").attr("ReadOnly", true);

        })
    </script>
</body>
</html>
