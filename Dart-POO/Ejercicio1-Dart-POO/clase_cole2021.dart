import 'dart:io';
import 'clase_actividad.dart';
import 'clase_alumno.dart';
import 'clase_profesor.dart';

// Main.
  void main(){

    // Atributos de la clase.
    int numProfesActivos = 0;
    int numAlumnosActivos = 0;

    // Incrementa a los profesores conforme se crean.
    void incrementaProfesores(){
      numProfesActivos++;
    }

    // Incrementa a los alumnos conforma se crean.
    void incrementaAlumnos(){
      numAlumnosActivos++;
    }

    List<Profesor> profesores = [];
    List<Alumno> alumnos = [];

    bool hola = true;
    while(hola){
      print("Bienvenido, por favor, seleccione opción...");
      print('1. Crear profesor.');
      print('2. Crear Alumno y asignarle profesor.');
      print('3. Crear Actividad y asignar a alumno.');
      print('4. Listar Alumnos de un profesor, a partir de la posición en el array.');
      print('5. Listar actividades de un alumno.');
      print('6. Listar todos los profesores.');
      print('7. Salir.');
      String value = stdin.readLineSync() as String;
      int opcion = int.parse(value);
        switch(opcion){
          case 1: 
            print('Creemos un nuevo profesor');

            print('Paseme dni del profesor:');
            String dniProfe = stdin.readLineSync() as String;
            while (dniProfe == ""){
              print('El dni no puede ser vacio, por favor, paseme dni del profesor:');
              dniProfe = stdin.readLineSync() as String;
            }

            print('Paseme nombre del profesor:');
            String nombreProfe = stdin.readLineSync() as String;
            while (nombreProfe == ""){
              print('El nombre no puede ser vacio, por favor, paseme nombre del profesor:');
              nombreProfe = stdin.readLineSync() as String;
            }
            
            print('Paseme Apellidos del profesor:');
            String apellidosProfe = stdin.readLineSync() as String;
            while (apellidosProfe == ""){
              print('Los apellidos no pueden ser vacios, por favor, paseme los apellidos del profesor:');
              apellidosProfe = stdin.readLineSync() as String;
            }

            print('Paseme el curso del profesor:');
            String cursoProfe = stdin.readLineSync() as String;
            while (cursoProfe == ""){
              print('El dni no puede ser vacio, por favor, paseme dni del profesor:');
              cursoProfe = stdin.readLineSync() as String;
            }
            
            print('Paseme la letra del curso del profesor:');
            String letraCursoProfe = stdin.readLineSync() as String;
            while (letraCursoProfe == ""){
              print('El dni no puede ser vacio, por favor, paseme dni del profesor:');
              letraCursoProfe = stdin.readLineSync() as String;
            }

            Profesor p1 = new Profesor(dni: dniProfe, nombre: nombreProfe, apellidos: apellidosProfe, curso: cursoProfe, letra: letraCursoProfe);
            profesores.add(p1);
            incrementaProfesores();

            print("Profesor creado correctamente. Ahora mismo tenemos ${numProfesActivos} profesores activos.");

          break;

          case 2: 
            print('Creemos un alumno:');

            print('Paseme el Codigo del Alumno:');
            int codigoAlumno = int.parse(stdin.readLineSync() as String);
            while (codigoAlumno == 0){
              print('El codigo proporcionado, no es correcto. Por favor, paseme el codigo del Alumno.');
              codigoAlumno = int.parse(stdin.readLineSync() as String);
            }

            print('Paseme el Nombre del Alumno:');
            String nombreAlumno = stdin.readLineSync() as String;
            while(nombreAlumno == ''){
              print('El nombre del alumno no puede ser vacio. Por favor, introduzca un nombre de Alumno válido.');
              nombreAlumno = stdin.readLineSync() as String;
            }

            print('Paseme los Apellidos del Alumno:');
            String apellidosAlumno = stdin.readLineSync() as String;
            while(apellidosAlumno == ''){
              print('El nombre del alumno no puede ser vacio. Por favor, introduzca un nombre de Alumno válido.');
              apellidosAlumno = stdin.readLineSync() as String;
            }

            print('Paseme la edad del Alumno:');
            String valueEdadAlumno = stdin.readLineSync() as String;
            int edadAlumno = int.parse(valueEdadAlumno);
            while(edadAlumno == ''){
              print('El nombre del alumno no puede ser vacio. Por favor, introduzca un nombre de Alumno válido.');
              valueEdadAlumno = stdin.readLineSync() as String;
              edadAlumno = int.parse(valueEdadAlumno);
            }

            Alumno a1 = new Alumno(codMatricula: codigoAlumno, nombre: nombreAlumno, apellidos: apellidosAlumno, edad: edadAlumno);
            
            alumnos.add(a1);

            incrementaAlumnos();

            print('¿A que profesor quiere asignarle este alumno? (Pase solo el dni del profesor.)');
            print(profesores.toList());

            String profesorDni = stdin.readLineSync() as String;
            Profesor profesorEncontrado = profesores.firstWhere((element) => element.dni == profesorDni);

            a1.profesor = profesorEncontrado;
            
            profesorEncontrado.alumnos.add(a1);

            print('Alumno creado correctamente!. Actualmente contamos con ${numAlumnosActivos}.');

          break;

          case 3:

            print('Vamos a crear una nueva Actividad para un alumno...');

            print('Por favor, introduce el numero de la actividad:');
            String valueNumeroActividad = stdin.readLineSync() as String;
            int numActividad = int.parse(valueNumeroActividad);
            while( numActividad == 0 ){
              print('Lo siento, no ha introducido correctamente el numero de la actividad. Introduzca un numero de actividad valido');
              valueNumeroActividad = stdin.readLineSync() as String;
              numActividad = int.parse(valueNumeroActividad);
            }

            print('Introduce el nombre de la actividad:');
            String nombreActividad = stdin.readLineSync() as String;
            while( nombreActividad == '' ){
              print('Lo sentimos, el campo del nombre no puede ir vacío. Por favor, introduzca un nombre de actividad valido');
              nombreActividad = stdin.readLineSync() as String;
            }

            print('Por favor, introduce la descripción de la asignatura.');
            String descripcionActividad = stdin.readLineSync() as String;
            while( descripcionActividad == '' ){
              print('No es posible poner ese nombre de descripción. Por favor, introduzca uno valido.');
              descripcionActividad = stdin.readLineSync() as String;
            }

            print('Introduce el numero de matricula del alumno al que quieras asignarle la actividad.');
            String valueAlumnoEncomendado = stdin.readLineSync() as String;
            int alumnoEncomendado = int.parse(valueAlumnoEncomendado);
            while( alumnoEncomendado == 0 ){
              print('No es posible poner ese numero de alumno. Introduzca uno valido por favor.');
              valueAlumnoEncomendado = stdin.readLineSync() as String;
              alumnoEncomendado = int.parse(valueAlumnoEncomendado);
            }

            Actividades act1 = new Actividades(numeroActividad: numActividad, titulo: nombreActividad, descripcion: descripcionActividad);

            Alumno alumnoEncontrado = alumnos.firstWhere((element) => element.codMatricula == alumnoEncomendado);

            alumnoEncontrado.actividades.add(act1);

            print('Actividad creada y asignada al alumno designado.');

          break;

          case 4:
          
            print('Introduzca el dni del profesor del que quiera saber los alumnos...');
            String dniProfesor = stdin.readLineSync() as String;

            Profesor profEncontrado = profesores.firstWhere((element) => element.dni == dniProfesor);

            print(profEncontrado.alumnos.toString());
          
          break;

          case 5:
          
            print('Introduzca el numero del Alumno del que quiera saber las actividades...');
            String valueNumeroAlumno = stdin.readLineSync() as String;
            int numeroAlumno = int.parse(valueNumeroAlumno);

            
            Alumno alumnEncontrado = alumnos.firstWhere((element) => element.codMatricula == numeroAlumno);

            print(alumnEncontrado.actividades.toString());
          
          break;

          case 6:

            print('Mostrando todos los profesores...');
            print(profesores.toString());

          break;

          case 7:

            hola = false;

          break;
        }
    }
  }

