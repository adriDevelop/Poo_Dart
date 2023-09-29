import 'cuenta.dart';

void main(){

  Cuenta c1 = new Cuenta(titular: 'Adrian Velasco Carrasco');
  Cuenta c2 = new Cuenta(titular: 'Andrea Nuñez Roldan', cantidad: 2000);

  print(c1);
  print(c2);

  print('Vamos a hacer un ingreso en la cuenta de Adrian Velasco Carrasco que tiene ${c1.cantidad}');
  c1.ingresar(1000);
  print(c1);

  print('Vamos a hacer un ingreso en negativo en la cuenta de Adrian Velasco Carrasco que tiene ${c1.cantidad}');
  c1.ingresar(-100);
  print(c1);

  print('Vamos hacer una retirada en la cuenta de Andrea Nuñez Roldan que actualmente tiene ${c2.cantidad}');
  c2.retirar(1900);
  print(c2);
  
}