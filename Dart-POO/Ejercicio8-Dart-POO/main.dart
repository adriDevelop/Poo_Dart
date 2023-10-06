import 'raices.dart';

void main(){
  Raices r1 = new Raices(a: 1, b: -5, c: 6);
  Raices r2 = new Raices(a: 1, b: -4, c: 3);

  print('La raiz numero 1 ${r1.caulcular()}');
  print('La raiz numero 2 ${r2.caulcular()}');
}