import 'dart:math';

class Raices{
  // Atributos de la clase.
  double a;
  double b;
  double c;

  // Constructor de la clase.
  Raices({
    required this.a,
    required this.b,
    required this.c,
  });

  // Metodo que devolverá los distintos resultados de las raices.
  String obtenerRaices(){
    double x1 = (-b+sqrt(getDiscriminante()))/2*a;
    double x2 = (-b-sqrt(getDiscriminante()))/2*a;
    
    return """

  Solucion 1:
  ${x1};
  Solucion 2:
  ${x2}
      """;
  }

  // Metodo que solo devolverá una única raíz, que será solo cuando tenga una solución posible.
  String obtenerRaiz(){
    double x1 = (-b+sqrt(getDiscriminante()))/2*a;

    return """
    Solucion:
    ${x1}
     """;
  }

  // Devuelve el valor del discriminante (double).
  double getDiscriminante(){
    return pow(b, 2)-4*a*c;
  }

  // Devuelve un booleano indicando si tiene dos soluciones, para que esto ocurra el discriminante tiene que sea mayor o igual que 0.
  bool tieneRaices(){
    if ( getDiscriminante() >= 0 )
      return true;
    else return false;
  }

  // Devuelve un booleano indicando si tiene una única solución, para que esto ocurra el discriminante debe ser igual a 0.
  bool tieneRaiz(){
    if ( getDiscriminante() == 0)
      return true;
    else return false;
  }

  // Mostrará por consola las posibles solucines que tiene nuestra ecuación, en caso de no existir solución, mostrarlo también.
  String caulcular(){
    if (this.tieneRaices() == true)
      return obtenerRaices();
    else if (this.tieneRaices() == false && this.tieneRaiz() == true)
      return obtenerRaiz();
    else return 'No tiene solución';
  }


}