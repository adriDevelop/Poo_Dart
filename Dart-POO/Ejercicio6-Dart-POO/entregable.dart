interface class Entregable{
  // Metodo que nos permitira entregar.
  void entregar(){}

  // Metodo que nos permite alquilar.
  void alquilado(){}

  // Metodo que nos devuelve el estado del atributo prestado.
  bool isEntregado(){
    return false;
  }

  // Metodo compareTo(Object a), compara las horas estimadas en los videojuegos y en las series el numero de temporadas.
  compareTo(Object a){}
}