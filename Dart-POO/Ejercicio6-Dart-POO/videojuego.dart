import 'entregable.dart';

class Videojuego implements Entregable{
  // Atributos de la clase.
  String titulo;
  double horasEstimadas;
  bool entregado;
  String compania;

  // Constructor por defecto.
  Videojuego.defecto({
    this.titulo = '',
    this.horasEstimadas = 10,
    this.entregado = false,
    this.compania = '',
  });

  // Constructor con titulo y horas estimadas. El resto por defecto.
  Videojuego.tituloHoras({
    required this.titulo,
    required this.horasEstimadas,
    this.entregado = false,
    this.compania = '',
  });

  // Constructor con todos los atributos, excepto de entregado.
  Videojuego.exceptoEntr({
    required this.titulo,
    required this.horasEstimadas,
    this.entregado = false,
    required this.compania,
  });

  // Getters y Setters.
  String get getTitulo => this.titulo;

  set setTitulo(String titulo) => this.titulo = titulo;

  get getHorasEstimadas => this.horasEstimadas;

  set setHorasEstimadas( horasEstimadas) => this.horasEstimadas = horasEstimadas;

  get getCompania => this.compania;

  set setCompania( compania) => this.compania = compania;

  // toString().
  @override
  String toString() {
    return {'Titulo: ${titulo}, Horas estimadas: ${horasEstimadas}, Entregado: ${entregado}, Compañia: ${compania}'}.toString();
  }
  
  @override
  void alquilado() {
    this.entregado = false;
  }

  @override
  void entregar() {
    this.entregado = true;
  }
  
  @override
  @override
  int compareTo(Object otro) {
    otro as Videojuego;
    if (this.horasEstimadas > otro.horasEstimadas) {
      return 1;
    } else if (this.horasEstimadas < otro.horasEstimadas) {
      return -1;
    } else {
      return 0;
    }
  }

  @override
  bool isEntregado() {
    return this.entregado;
  }
}