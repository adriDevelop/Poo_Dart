import 'dart:io';

import 'persona.dart';

void main(){

  print('Indiqueme nombre: ');
  String nombre = stdin.readLineSync() as String;
  print('Indiqueme la edad: ');
  int edad = int.parse(stdin.readLineSync() as String);
  print('Indiqueme el sexo (h o m): ');
  String sexo = stdin.readLineSync()?.toLowerCase() as String;
  print('Indiqueme peso: ');
  double peso = double.parse(stdin.readLineSync() as String );
  print('Indiqueme altura: ');
  double altura = double.parse(stdin.readLineSync() as String);

  Persona p1 = Persona.completo(dni: '', nombre: nombre, edad: edad, sexo: sexo, peso: peso, altura: altura);
  p1.generarDni();

  print(p1);
  print(p1.calcularIMC());
  print(p1.esMayorDeEdad());

}