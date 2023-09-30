import 'dart:io';

import 'password.dart';

void main(){
  print('Indiquenos cuantas claves quiere generar: ');
  int numClaves = int.parse(stdin.readLineSync() as String);
  print('¿Con qué longitud?:');
  int longitudClaves = int.parse(stdin.readLineSync() as String);
  // Vamos a crear una array de Passwords.
  List<Password> passwords = [];
  // Vamos a crear un array de booleanos, que nos dira para cada clave si es fuerte o no la clave.
  List<bool> esFuerte = List<bool>.filled(numClaves, false);

  for ( int i = 0; i < numClaves; i++ ){
    passwords.add(new Password.aleatorio(longitud: longitudClaves));
    if ( passwords[i].esFuerte() )
      esFuerte[i] = true;
    print('Contraseña: ${passwords[i]}, Es Fuerte: ${esFuerte[i]}');
  }
  
}