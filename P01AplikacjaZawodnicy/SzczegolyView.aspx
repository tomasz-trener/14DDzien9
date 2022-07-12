<%@ Page Title="" Language="C#" MasterPageFile="~/StronaWzrocowa.Master" AutoEventWireup="true" CodeBehind="SzczegolyView.aspx.cs" Inherits="P01AplikacjaZawodnicy.SzczegolyView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphGlownaTresc" runat="server">
      <div class="row">
          <div class="col-md-8">
            <div class="card">
              <div class="card-header">
                <h5 class="title">Edit Profile</h5>
              </div>
              <div class="card-body">
                <form runat="server">
                  <div class="row">
                    <div class="col-md-2 pr-1">
                      <div class="form-group">
                        <label>Id</label>
                        <input type="text" class="form-control" disabled=""   value="<%= ZawodnikVM?.Id %>">
                      </div>
                    </div>
                    <div class="col-md-3 px-1">
                      <div class="form-group">
                        <label>Imie</label>
                        <%--<input type="text" name="txtImie" class="form-control"  value="<%= ZawodnikVM.Imie %>">--%>
                          <asp:TextBox ID="txtImie" CssClass="form-control" runat="server"></asp:TextBox>
                      </div>
                    </div>
                    <div class="col-md-3 pl-1">
                      <div class="form-group">
                        <label for="exampleInputEmail1">Nazwisko</label>
                       <%-- <input type="text" class="form-control" value="<%= ZawodnikVM.Nazwisko %>"  >--%>
                           <asp:TextBox ID="txtNazwisko" CssClass="form-control" runat="server"></asp:TextBox>
                      </div>
                    </div>

                     <div class="col-md-4 pl-1">
                      <div class="form-group">
                        <label for="exampleInputEmail1">Kraj</label>
                        <%--<input type="text" class="form-control" value="<%= ZawodnikVM.Kraj %>"  >--%>
                           <asp:TextBox ID="txtKraj" CssClass="form-control" runat="server"></asp:TextBox>
                      </div>
                    </div>
                  </div>
                 
                  <div class="row">
                    <div class="col-md-4 pr-1">
                      <div class="form-group">
                        <label>Data urodzenia</label>
                        <%--<input type="text" class="form-control"   value="<%= ZawodnikVM.DataUrFormat %>">--%>
                           <asp:TextBox ID="txtDataUr" CssClass="form-control" runat="server"></asp:TextBox>
                      </div>
                    </div>
                    <div class="col-md-4 px-1">
                      <div class="form-group">
                        <label>Wzrost</label>
                      <%--  <input type="number" class="form-control"  value="<%= ZawodnikVM.Wzrost %>">--%>
                          <asp:TextBox ID="txtWzrost" type="number" CssClass="form-control" runat="server"></asp:TextBox>
                      </div>
                    </div>
                    <div class="col-md-4 pl-1">
                      <div class="form-group">
                        <label>Waga</label>
                          <asp:TextBox ID="txtWaga" type="number" CssClass="form-control" runat="server"></asp:TextBox>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12">
                      <div class="form-group">
                        <label>About Me</label>
                        <textarea rows="4" cols="80" class="form-control" placeholder="Here can be your description" value="Mike"><%= ZawodnikVM?.Opis %></textarea>
                      </div>
                    </div>
                  </div>

                  <%-- <input type="submit" value="Zapisz" class="btn btn-primary" />--%>
                    <asp:Button Text="Zapisz" ID="btnZapisz" CssClass="btn btn-primary" OnClick="btnZapisz_Click" runat="server" />
                    <asp:Button Text="Usun" Visible="false" ID="btnUsun" CssClass="btn btn-primary" OnClick="btnUsun_Click" runat="server" />


                </form>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="card card-user">
              <div class="image">
                <img src="../assets/img/bg5.jpg" alt="...">
              </div>
              <div class="card-body">
                <div class="author">
                  <a href="#">
                    <img class="avatar border-gray" src="../assets/img/mike.jpg" alt="...">
                    <h5 class="title">Mike Andrew</h5>
                  </a>
                  <p class="description">
                    michael24
                  </p>
                </div>
                <p class="description text-center">
                  "Lamborghini Mercy
                  <br> Your chick she so thirsty
                  <br> I'm in that two seat Lambo"
                </p>
              </div>
              <hr>
              <div class="button-container">
                <button href="#" class="btn btn-neutral btn-icon btn-round btn-lg">
                  <i class="fab fa-facebook-f"></i>
                </button>
                <button href="#" class="btn btn-neutral btn-icon btn-round btn-lg">
                  <i class="fab fa-twitter"></i>
                </button>
                <button href="#" class="btn btn-neutral btn-icon btn-round btn-lg">
                  <i class="fab fa-google-plus-g"></i>
                </button>
              </div>
            </div>
          </div>
        </div>
</asp:Content>

<asp:Content ID="contentMenu" ContentPlaceHolderID="menu" runat="server"> 
          <ul class="nav">
          <li class="active ">
            <a href="./SzczegolyView.aspx">
              <i class="now-ui-icons users_single-02"></i>
              <p><asp:Label ID="lblTytul" Text="Nowy zawodnik" runat="server"></asp:Label></p>
            </a>
          </li>
          <li >
            <a href="./ZawodnicyTableView.aspx">
              <i class="now-ui-icons design_bullet-list-67"></i>
              <p>Lista Zawodnikow</p>
            </a>
          </li>
         
        </ul>


</asp:Content>