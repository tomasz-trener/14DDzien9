using P04AplikacjaZawodnicy.Core.Repositories;
using P04AplikacjaZawodnicy.Core.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace P01AplikacjaZawodnicy
{
    public partial class ZawodnicyTableView : System.Web.UI.Page
    {
        public ZawodnikVM[] Zawodnicy;
        protected void Page_Load(object sender, EventArgs e)
        {
            //TableRow wiersz = new TableRow();
            //wiersz.Cells.Add(new TableCell() { Text = "ala" });
            //wiersz.Cells.Add(new TableCell() { Text = "ma" });
            //wiersz.Cells.Add(new TableCell() { Text = "kota" });
            //tblZawodnicy.Rows.Add(wiersz);

            //TableRow wiersz2 = new TableRow();
            //wiersz2.Cells.Add(new TableCell() { Text = "ala" });
            //wiersz2.Cells.Add(new TableCell() { Text = "ma" });
            //wiersz2.Cells.Add(new TableCell() { Text = "kota" });
            //tblZawodnicy.Rows.Add(wiersz2);

            // nie rozwijam tego rozwizania dalej bo customowe dostosowanie tej tabeli do wygladu jaki 
            // wymyslimy jest trudne a czasami bedzie niemozliwe 

            // zamiast tego zastosujemy dynimaczne generowanie treci html z poziomu c# poprzez wstawki 

            ZawodnicyRepository zr = new ZawodnicyRepository();
            ZawodnicyResultVM wynik = zr.Szukaj("", 1);
            Zawodnicy = wynik.Zawodnicy.Select(x => new ZawodnikVM(x)).ToArray();


        }
    }
}