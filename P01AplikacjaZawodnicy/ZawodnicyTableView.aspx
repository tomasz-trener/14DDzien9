<%@ Page Title="" Language="C#" MasterPageFile="~/StronaWzrocowa.Master" AutoEventWireup="true" CodeBehind="ZawodnicyTableView.aspx.cs" Inherits="P01AplikacjaZawodnicy.ZawodnicyTableView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphGlownaTresc" runat="server">


      <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h4 class="card-title"> Simple Table</h4>
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  

                   <%-- <asp:Table ID="tblZawodnicy" CssClass="table" runat="server"></asp:Table>--%>
                    
                      <table class="table">
                    <thead class=" text-primary">
                      <th>
                        Imie i Nazwisko
                      </th>
                      <th>
                        Kraj
                      </th>
                      <th>
                        Wzrost
                      </th>
                      <th>
                        Data urodzenia
                      </th>
                      <th>
                            Trener
                      </th>
                    </thead>
                    <tbody>
                        <% foreach (var z in Zawodnicy)
                            {%>

                            <tr>
                                <td><a href="SzczegolyView.aspx?id=<%= z.Id %>"> <%=z.ImieNazwisko %></a></td>
                                <td><%= z.Kraj %></td>
                                <td><%= z.Wzrost %></td>
                                <td><%= z.DataUrFormat %></td>
                                <td><%= z.ImieNazwiskoTrenera %></td>
                            </tr>

                        <%  } %>
                    </tbody>
                  </table>



                </div>
              </div>
            </div>
          </div>
      
        </div>



</asp:Content>

<asp:Content ID="contentMenu" ContentPlaceHolderID="menu" runat="server"> 
          <ul class="nav">
          <li>
            <a href="./SzczegolyView.aspx">
              <i class="now-ui-icons users_single-02"></i>
                <p>Nowy zawodnik</p>
            </a>
          </li>
          <li class="active ">
            <a href="./ZawodnicyTableView.aspx">
              <i class="now-ui-icons design_bullet-list-67"></i>
              <p>Lista Zawodnikow</p>
            </a>
          </li>
         
        </ul>


</asp:Content>