import 'dart:math';

class Persona {
  // Atributos de la clase.
  String nombre;
  int edad;
  String dni;
  String sexo;
  double peso;
  double altura;

  // Constructor por defecto.
  Persona.defecto({
    this.dni = '',
    this.nombre = "",
    this.edad = 0,
    this.sexo = "H",
    this.peso = 0,
    this.altura = 0
  });

  // Constructor con todos los parametros.
  Persona.completo({
    this.dni = '',
    required this.nombre,
    required this.edad,
    required this.sexo,
    required this.peso,
    required this.altura
  });

  // Metodo que calcula el Indice de masa corporal.
  int calcularIMC(){
    double resultado = this.peso/pow(this.altura, 2);
    if ( resultado < 20 )
      return -1;
    else if ( resultado >= 20 || resultado <=25 )
      return 0;
    else return 1;
  }

  // Metodo que comprueba si la persona es mayor de edad.
  bool esMayorDeEdad(){
    if ( this.edad < 18 )
      return false;
    else return true; 
  }

  // Metodo que comprueba si el sexo introducido es correcto.
  void comprobarSexo(String sexo){
    if (sexo.toLowerCase() == 'h' || sexo.toLowerCase() == 'm'){
      this.sexo = sexo;
    }
    this.sexo = 'h';
  }

  // Metodo que generea un DNI.
  String generarDni(){
    var numerosDni = Random().nextInt( 99999999 );
    List<String> letrasDni = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'];
    String letraSeleccionada = letrasDni[Random().nextInt(letrasDni.length)];
    String numerosDniToString = numerosDni.toString();
    String dniGenerado = numerosDniToString + letraSeleccionada;
    this.dni = dniGenerado;
    return dniGenerado;
  }
  
  // Metodo toString().
  @override
  String toString() {
    return {'Nombre: ${nombre}, Dni: ${dni}, Edad: ${edad}, Sexo: ${sexo}, Peso: ${peso}, Altura: ${altura}'}.toString();
  }


}