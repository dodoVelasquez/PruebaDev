using System;
using System.Linq;

public class Program
{
    public static void Main()
    {
        string oracion = "vvwxyz abcdefgh nopqrstuv ijklm ñÑ pangrama ";

        Console.WriteLine(EsPangrama(oracion));

        string otra = "vvwxy abcdefgh nopqrstuv ijklm ñÑ No pangrama";
        Console.WriteLine(EsPangrama(otra));
    }

    public static bool EsPangrama(string texto)
    {
        texto = texto.ToLower();//Estandariza a minusculas

        /* Filtro a - z*/
        var letras = texto.Where(c => (c >= 'a' && c <= 'z') || c == 'ñ').Distinct();

        /* Verificar si contiene las 26 letras del alfabeto */
        return letras.Count() == 27;
    }

}
