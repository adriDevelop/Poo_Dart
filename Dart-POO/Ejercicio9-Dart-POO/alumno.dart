import '../Ejercicio9-Dart-POO/persona.dart';
import 'profesor.dart';

class Alumno implements Persona{
  // Atributos de la clase.
  @override
  int edad;
  @override
  String sexo;
  @override
  String nombre;
  int horasClase;
  Materias materias;
  int horasFaltadas;
  bool falta;
  int calificacionActual;

  // Constructor de la clase.
  Alumno.defecto({
    required this.nombre,
    required this.edad,
    required this.sexo,
    required this.calificacionActual,
    required this.horasClase,
    required this.materias,
    required this.horasFaltadas,
    required this.falta,
  });

  // Metodo que nos dice si el alumno ha faltado a clase.
  @override
  bool faltaAClase() {
    this.falta = true;
    return falta;
  }

  // Metodo que nos dice si el alumno ha sobrepasado el limite de horas.
  @override
  String pasaPorcentaje() {
    if ( this.horasFaltadas > (this.horasClase * 0.5))
      return '¡HA SOBREPASADO EL LIMITE DE HORAS!';
    else return 'Se encuentra dentro del limite de horas.';
  }

  //  toString().
  @override
  String toString() {
    return {'Nombre del Alumno: ${nombre}, Edad del Alumno: ${edad}, Sexo del Alumno: ${sexo}, Calificación del alumno: ${calificacionActual}, ¿Ha faltado?: ${falta}'}.toString();
  }
  
}