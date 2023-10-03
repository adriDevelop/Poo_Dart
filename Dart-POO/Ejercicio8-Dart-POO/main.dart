import 'raices.dart';

void main(){
  Raices r1 = new Raices(a: 1, b: -4, c: 7);
  Raices r2 = new Raices(a: 1, b: 3, c: -4);

  print('La raiz numero 1 ${r1.caulcular()}');
  print('La raiz numero 2 ${r2.caulcular()}');
}