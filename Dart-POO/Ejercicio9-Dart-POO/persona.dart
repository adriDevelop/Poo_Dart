abstract class Persona{
  // Atributos de la clase.
  String nombre;
  int edad;
  String sexo;

  // Constructor de la clase.
  Persona.defecto({
    required this.nombre,
    required this.edad,
    required this.sexo,
  });

  // Metodo que nos indica si la persona falta a clase.
  void faltaAClase(){}

  // Metodo que indique si se sobrepasa del porcentaje de horas que pueden faltar.
  String pasaPorcentaje(){ return '';}
}