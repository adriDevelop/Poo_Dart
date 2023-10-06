import '../Ejercicio9-Dart-POO/profesor.dart';
import '../Ejercicio9-Dart-POO/alumno.dart';

class Aula{
  // Atributos de la clase.
  Profesor profe;
  List<Alumno> alumnos = [];
  Materias materia;

  // Constructor de la clase.
  Aula.defecto({
    required this.profe,
    required this.materia,
    required this.alumnos
  });

  // Metodo que cuenta los alumnos que estan y los que han faltado.
  int alumnosEnClase(){
    int alumnosFaltan = 0;
    // Contamos los alumnos que han faltado a clase.
    for( int i = 0; i < alumnos.length; i++){
        alumnosFaltan++;
    }
    return alumnosFaltan;
  }

  // Metodo que comprueba si se puede dar clase en el aula.
  String sePuedeDarClase(){
    if ( this.profe.materias == this.materia && this.profe.disponible == true && alumnosEnClase() < this.alumnos.length + 1)
      return 'Si se puede dar clase';
    else return 'No es posible dar clase';
  }



}