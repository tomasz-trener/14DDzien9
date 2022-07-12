using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace P04Dziedziczenie
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Plik[] pliki = new Plik[]
            {
                new PlikHTML(){ Nazwa="p1", Zawartosc="ala ma kota"},
                new PlikSQL() { Nazwa = "p2", Zawartosc ="ala ma kota"}
            };

            foreach (var p in pliki)
                p.Zapisz();


            //Plik p2 = new Plik();
            // nie moge stworzyc nowej instancji klasy typu abstract 
            // bo abstract ozanza, ze rola klasy abstrakcyjnej
            // jest tylko bycie szablonem dla innych klas
            // ale nie ma sensu tworzenie nowej instancji 


            string s = pliki[0].ToString();
            Console.WriteLine(s);

            //foreach (var p in pliki)
            //    if(p is PlikHTML)
            //        ((PlikHTML)p).Zapisz();
            //    else if (p is PlikSQL)
            //        ((PlikSQL)p).Zapisz();


            // new : 

            // jezeli mamy plikSQL traktowany jako plikSQL to wywolaj Zapisz z plikSQL
            // jezeli mamy plikSQL traktowany jako plik to wywolaj metode Zapisz z plik

            // override :

            // jezeli mamy plikSQL traktowany jako plikSQL to wywolaj Zapisz z plikSQL
            // jezeli mamy plikSQL traktowany jako plik to wywolaj metode Zapisz z plikSQL
        }
    }
}
