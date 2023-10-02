import 'entregable.dart';

class Serie implements Entregable{
  // Atributos de la clase.
  String titulo;
  int numeroTemporadas;
  bool entregado;
  String genero;
  String creador;

  // Constructor por defecto de la clase.
  Serie.defecto({
    this.titulo = '',
    this.numeroTemporadas = 3,
    this.entregado = false,
    this.genero = '',
    this.creador = '',
  });

  // Constructor con el titulo y el creador. El resto por defecto.
  Serie.tituloCreador({
    required this.titulo,
    this.numeroTemporadas = 3,
    this.entregado = false,
    this.genero = '',
    required this.creador,
  });

  // Constructor con todos los atributos, excepto entregado.
  Serie.exceptoEnt({
    required this.titulo,
    required this.numeroTemporadas,
    this.entregado = false,
    required this.genero,
    required this.creador,
  });

  // Getters y Setters.
  String get getTitulo => this.titulo;

  set setTitulo(String titulo) => this.titulo = titulo;

  get getNumeroTemporadas => this.numeroTemporadas;

  set setNumeroTemporadas( numeroTemporadas) => this.numeroTemporadas = numeroTemporadas;

  get getGenero => this.genero;

  set setGenero( genero) => this.genero = genero;

  get getCreador => this.creador;

  set setCreador( creador) => this.creador = creador;

  // toString().
  @override
  String toString() {
    return {'Titulo: ${titulo}, Numero de temporadas: ${numeroTemporadas}, Genero: ${genero}, Creador: ${creador}'}.toString();
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
  compareTo(Object a) {
    a as Serie;
    if ( a.numeroTemporadas > this.numeroTemporadas )
      print({'La serie ${a.titulo} tiene mas temporadas que ${this.titulo}'});
    else if ( a.numeroTemporadas < this.numeroTemporadas )
      print({'La serie ${this.titulo} tiene mas temporadas que ${a.titulo}'});
    else 
      print({'La serie ${this.titulo} tiene las mismas temporadas que ${a.titulo}'});
  }

  @override
  bool isEntregado() {
    return this.entregado;
  }

}