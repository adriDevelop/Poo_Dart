import 'clase_actividad.dart';
import 'clase_profesor.dart';

class Alumno {
  // Atributos de la clase.
  int codMatricula;
  String nombre;
  String apellidos;
  int edad;
  Profesor? profesor;
  List<Actividades> actividades = [];

  // Constructor de la clase.
  Alumno({
    required this.codMatricula,
    required this.nombre,
    required this.apellidos,
    required this.edad
  });

  // Getters y Setters.
  int get getCodMatricula{
    return this.codMatricula;
  }

  set setCodMatricula( int pCodMatricula ){
    if ( pCodMatricula >= 11111 ){
      throw 'Lo sentimos, el codigo de matricula es erroneo';
    }
    codMatricula = pCodMatricula;
  }

  String get getNombre{
    return this.nombre;
  }

  set setNombre( String pNombre ){
    if ( pNombre == "" ){
      throw 'Lo sentimos, el nombre no puede ir vacio';
    }
    nombre = pNombre;
  }

  String get getApellidos{
    return this.apellidos;
  }

  set setApellidos( String pApellidos ){
    if ( pApellidos == "" ){
      throw 'Lo sentimos, los apellidos no pueden ser vacios';
    }
    apellidos = pApellidos;
  }

  int get getEdad{
    return this.edad;
  }

  set setEdad( int pEdad ){
    if ( pEdad == 0){
      throw 'Lo sentimos, la edad no coincide con las admitidas en el colegio';
    }
    edad = pEdad;
  }

  // toString().
  @override
  String toString() {
    return {'Codigo de matricula del alumno: ${codMatricula}, Nombre del Alumno: ${nombre}, Apellidos del Alumno: ${apellidos}, Edad del Alumno: ${edad}. Su profesor asignado es ${profesor}'}.toString();
  }

  // Metodo que crea una actividad individual en el array del alumno. Tendra un maximo de 50 actividades individuales.
  void crearActividad( Actividades pActividad ){
    if (actividades.length == 50 ){
      throw 'Lo sentimos, ha alcanzado el numero maximo de actividades';
    }
    // Agregamos la nueva activiadad al array de actividades del alumno.
    actividades.add(pActividad);  
  }

  // Metodo que lista todas las actividades que tiene el alumno.
  String listarActividades(){
    final actividadesAlumno = actividades.where((element) => element.numeroAlumno == this.codMatricula).toString();
    return actividadesAlumno.toString();
  }

  // Metodo que comprueba si el alumno pasado es igual que el que llama al metodo.
  bool iguales( Alumno pAlumno ){
    if ( this == pAlumno )
      return true;
    else 
      return false;
  }

  // Metodo que comprueba si el codMatricula del alumno pasado es igual que el codMatricula del Objeto que llama al metodo.
  bool igualesCodMatricula( Alumno pAlumno ){
    if ( this.codMatricula == pAlumno.codMatricula )
      return true;
    else 
      return false;
  }

}



