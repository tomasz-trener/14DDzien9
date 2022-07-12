using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace P04Dziedziczenie
{
    internal class PlikSQL : Plik
    {
        public new void Zapisz()
        {
            Nazwa += ".sql";
            base.Zapisz();
        }
    }
}
