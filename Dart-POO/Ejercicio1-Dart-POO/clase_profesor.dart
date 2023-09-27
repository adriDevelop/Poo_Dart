import 'clase_alumno.dart';

class Profesor{
  // Atributos de la clase.
  String dni;
  String nombre;
  String apellidos;
  String curso;
  String letra;
  List<Alumno> alumnos = [];

  // Constructor de la clase.
  Profesor({
    required this.dni,
    required this.nombre,
    required this.apellidos,
    required this.curso,
    required this.letra,
  });

  // Getters y Setters.
  String get getDniProfesor{
    return this.dni;
  }

  set setDniProfesor( String pDniProfesor ){
    if ( pDniProfesor == "" ){
      throw "Lo sentimos, ha introducido un dni que no es valido";
    }
    dni = pDniProfesor;
  }

  String get getNombreProfesor{
    return this.nombre;
  }

  set setNombreProfesor( String pNombreProfesor ){
    if ( pNombreProfesor == "" ){
      throw "Lo sentimos, ha introducido un nombre que no es valido";
    }
    nombre = pNombreProfesor;
  }

  String get getApellidosProfesor{
    return this.apellidos;
  }

  set setApellidosProfesor( String pApellidosProfesor ){
    if ( pApellidosProfesor == "" ){
      throw "Lo sentimos, ha introducido unos apellidos que no son validos";
    }
    apellidos = pApellidosProfesor;
  }

  String get getCurso{
    return this.curso;
  }

  set setCursoProfesor( String pCursoProfesor ){
    if ( pCursoProfesor == "" ){
      throw "Lo sentimos, ha introducido un curso que no es valido";
    }
    curso = pCursoProfesor;
  }

  String get getLetra{
    return this.letra;
  }

  set setLetraProfesor( String pLetraProfesor ){
    if ( pLetraProfesor == "" ){
      throw "Lo sentimos, ha introducido una letra que no es valida";
    }
  }

  // toString().
  @override
  String toString() {
    return {'Dni del Profesor: ${dni}, Nombre del Profesor: ${nombre}, Apellidos del Profesor: ${apellidos}, Curso del Profesor: ${curso}, Letra del Profesor: ${letra}'}.toString();
  }

  // Metodos de la clase.
  String buscarAlumno( int codigoMatriculaAlumno ){
    final alumnoEncontrado = alumnos.where((element) => element.codMatricula == codigoMatriculaAlumno);
    return alumnoEncontrado.toString();
  }
}