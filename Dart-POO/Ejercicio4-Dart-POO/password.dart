import 'dart:math';

class Password{
  // Atributos de la clase.
  int longitud;
  String contrasenia;

  // Constructor por defecto.
  Password.defecto({
    this.longitud = 8,
    required this.contrasenia,
  }){
    this.contrasenia = generarPassword(this.longitud);
  }

  // Constructor con la longitud que nosotros le pasemos.
  Password.aleatorio({
    required this.longitud,
    this.contrasenia = '0',
  }){
    this.contrasenia = generarPassword(this.longitud);
  }

  // Metodo que genera una constraseña aleatoria.
  String generarPassword( int pLongitud ){
    List<String> letrasDni = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'];
    // Seleccionamos las 3 letras que necesitamos.
    List<String> letras = [];
    for ( int i = 0; i < 3; i++ ){
      letras.add(letrasDni[Random().nextInt(letrasDni.length)]);
    }
    // Creamos la constraseña con la longitud que queramos.
    List<String> contraseniaList = [];
    for ( int i = 0; i < pLongitud-3; i++ ){
      contraseniaList.add(Random().nextInt(pLongitud - 3).toString());
    }
    // Añadimos las dos primeras letras del array y las ponemos mayusculas.
    for( int i = 0; i < letras.length - 1; i++ ){
      contraseniaList.add(letras[i].toUpperCase());
    }
    // Añadimos la ultima letra que nos faltaba para que tengamos ya las 3 letras de nuestra constraseña.
    contraseniaList.add(letras.last);

    String contrasenia = '';

    for ( int i = 0; i < pLongitud; i++ ){
      contrasenia = contrasenia + contraseniaList[i];
    }

    return contrasenia;
  }

  // Metodo que nos dice si la contraseña es fuerte, dependiendo de cuantas letras mayusculas, minusculas y numeros tenga la clave.
  bool esFuerte() {
  int mayusculas = 0;
  int minusculas = 0;
  int numeros = 0;

  for (int i = 0; i < this.contrasenia.length; i++) {
    var caracter = this.contrasenia.codeUnitAt(i);
    if (caracter >= 65 && caracter <= 90) { 
      mayusculas++;
    } else if (caracter >= 97 && caracter <= 122) { 
      minusculas++;
    } else if (caracter >= 48 && caracter <= 57) { 
      numeros++;
    }
  }

  return (mayusculas >= 2 && minusculas >= 1 && numeros >= 5);
}

  // Metodo toString().
  @override
  String toString() {
    return {'Contraseña generada: ${contrasenia}, Longitud de la contraseña: ${longitud}'}.toString();
  }

}