using System;
using System.Linq;
using System.Collections.Generic;

public class Program
{
    public static bool Comp(int[] a, int[] b)
    {
        List<int> aSquared = a.Select(Square).OrderBy(CompareInt).ToList(); //Potencia y ordena lista
        List<int> bSorted = b.OrderBy(CompareInt).ToList(); //Ordena lista

        return aSquared.SequenceEqual(bSorted); // Compara listas
    }

    /* Potencia */
    public static int Square(int x)
    {
        return (int)Math.Pow(x, 2);
    }

    /* Comparacion */
    public static int CompareInt(int x)
    {
        return x;
    }

    public static void Main()
    {
        int[] a = { 121, 144, 19, 144, 19, 11 };
        int[] b = { 121, 14641, 20736, 361, 25921, 361, 20736, 361 };

        Console.WriteLine(Comp(a, b)); 
    }
}
