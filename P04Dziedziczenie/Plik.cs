using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace P04Dziedziczenie
{
    internal abstract class Plik
    {
        public string Zawartosc;
        public string Nazwa;

        // pozwalam na nadpisywanie tej metody 
        public virtual void Zapisz()
        {
            File.WriteAllText(Nazwa, Zawartosc);
        }

        public override string ToString()
        {
            return Zawartosc;
        }


    }
}
