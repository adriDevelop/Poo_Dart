import 'clase_alumno.dart';

class Actividades {
  // Atributos de la clase.
  int numeroActividad;
  String titulo;
  String descripcion;
  List<Alumno> numeroAlumno = [];

  // Constructor de la clase.
  Actividades({
    required this.numeroActividad,
    required this.titulo,
    required this.descripcion,
  });

  // Getters y Setters.
  int get getNumeroActividad{
    return this.numeroActividad;
  }

  set setNumeroActividad( int pNumeroActividad ){
    if ( pNumeroActividad >=0 ){
      throw 'Lo sentimos, pero ha introducido un numero de actividad erroneo.';
    }
    numeroActividad = pNumeroActividad;
  }

  String get getTitulo{
    return this.titulo;
  }

  set setTitulo( String pTitulo ){
    if ( pTitulo == '' ){
      throw 'Lo sentimos, pero el titulo no puede ser vacio';
    }
    titulo = pTitulo;
  }

  // Metodo toString.
  @override
  String toString() {
    return {'Numero de la actividad: ${numeroActividad}, Titulo: ${titulo}, Descripcion: ${descripcion}'}.toString();
  }

}