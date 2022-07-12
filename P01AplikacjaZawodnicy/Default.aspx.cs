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
    public partial class Default : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Redirect("ZawodnicyTableView.aspx");


        }
    }
}