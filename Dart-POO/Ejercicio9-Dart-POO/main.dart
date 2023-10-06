import '../Ejercicio9-Dart-POO/alumno.dart';
import '../Ejercicio9-Dart-POO/profesor.dart';
import 'aula.dart';


void main(){
  // Creamos al profesor y el aula donde se impartiran las clases.
  Profesor profe1 = new Profesor.defecto(materias: Materias.matematicas, horasFaltadas: 0, horasAnuales: 350, disponible: true, nombre: 'Andrea Nuñez Roldan', edad: 22, sexo: 'm');
  Aula aula1 = new Aula.defecto(profe: profe1, materia: Materias.matematicas, alumnos: [Alumno.defecto(nombre: 'Adrian', edad: 23, sexo: 'H', calificacionActual: 10, horasClase: 200, materias: Materias.matematicas, horasFaltadas: 0, falta: false),Alumno.defecto(nombre: 'Andrea', edad: 22, sexo: 'M', calificacionActual: 10, horasClase: 200, materias: Materias.matematicas, horasFaltadas: 0, falta: false) ]);

  // Creamos los alumnos que se encuentran dentro de la clase.
  print(aula1.alumnosEnClase());
  // Hacmos la prueba de que el profesor falta para comprobar que no se puede dar clase en ese caso.
  // aula1.profe.faltaAClase();
  aula1.alumnos[0].faltaAClase();
  // Comprobamos si se puede o no dar clase.
  print(aula1.sePuedeDarClase());
  // Imprimo los alumnos que hay en el aula para pasar lista.
  print(aula1.alumnos);
}

// Le asignamos al array de alumnos, alumnos creados.
  