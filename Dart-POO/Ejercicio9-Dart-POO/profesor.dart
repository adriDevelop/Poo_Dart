import '../Ejercicio9-Dart-POO/persona.dart';

enum Materias { matematicas, filosofia, fisica }

class Profesor implements Persona{
  // Atributos de la clase.
  @override
  int edad;
  @override
  String nombre;
  @override
  String sexo;
  Materias materias;
  int horasFaltadas;
  int horasAnuales;
  bool disponible;
  
  
  // Constructor de la clase.
  Profesor.defecto({
    required this.materias,
    required this.horasFaltadas,
    required this.horasAnuales,
    required this.disponible,
    required this.nombre,
    required this.edad,
    required this.sexo,
    });
  
  // Metodo que nos dice que el profesor ha faltado.
  @override
  void faltaAClase() {
    this.disponible = false;
    horasFaltadas++;
  }
  
  // Metodo que muestra si el profesor pasa de las horas que tiene disponibles para faltar.
  @override
  String pasaPorcentaje() {
    if ( horasFaltadas > (this.horasAnuales * 0.2) )
      return '¡PASA LAS HORAS!';
    else return 'Sigue dentro de las horas';
  }
  
}