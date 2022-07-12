using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace P03OperatorZnakZapytania
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Zawodnik z = new Zawodnik();

            string s = z.Imie;
            string i = "xx";
            i = z.Waga.ToString();

            string i2 = z.Waga.ToString();

            string i4 = z.Trener?.Imie;
            int? i5 = z.Trener?.Wzorst;
            string i6 = z.Trener?.ToString();

            string i3 = z.Trener.Imie;

          

        }
    }
}
