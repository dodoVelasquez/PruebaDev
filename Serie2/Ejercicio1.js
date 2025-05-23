function esTelefonoValido(cadena) {
    /* Expresion regular para validar entrada */
    const regex = /^\(\d{3}\) \d{3}-\d{4}$/;

    return regex.test(cadena);
}

/* Test */
console.log(esTelefonoValido("(123) 456-7890")); // true
console.log(esTelefonoValido("(1111) 555 2345")); // false
console.log(esTelefonoValido("(098) 123 4567")); // false
