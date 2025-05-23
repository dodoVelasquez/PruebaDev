using Humanizer;

/* Utilizando en paquete nuget Humanizer facilita trabajar con numeros*/

int number = 1000;
string roman = number.ToRoman();  // "M"
Console.WriteLine(roman);