using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace P04Dziedziczenie
{
    internal class PlikHTML : Plik
    {
        public override void Zapisz()
        {
            Nazwa += ".html";
            base.Zapisz();

        }
    }
}
