import 'electrodomestico.dart';
import 'lavadora.dart';
import 'television.dart';

void main(){
  // Sumas de los distintos electrodomesticos.
  double sumaTelevisores = 0;
  double sumaLavadoras = 0;
  double totalElectrodomesticos = 0;

  List<Electrodomestico> electrodomesticos = [];

  for ( int i = 0; i < 10 ; i++ ){
    if ( i < 5 )
      electrodomesticos.add(new Lavadora.completo(carga: 20, precioBase: 120, color: 'rojo', consumoEnergetico: 'F', peso: 81));
    else 
      electrodomesticos.add(new Television.completo(resolucion: 41, sintonizadorTdt: false, precioBase: 250, color: 'gris', consumoEnergetico: 'B', peso: 40));
  }

  for ( int i = 0; i < 10 ; i++ ){
      electrodomesticos[i].precioFinal();
      print(electrodomesticos[i]);
  }

  for ( int i = 0; i < 10 ; i++ ){
      if ( electrodomesticos[i] is Lavadora )
        sumaLavadoras += electrodomesticos[i].precioBase;
      else 
        sumaTelevisores += electrodomesticos[i].precioBase;
  }

  totalElectrodomesticos = sumaLavadoras + sumaTelevisores;

  print('La suma total de los precios de las lavadoras es: ${sumaLavadoras}');
  print('La suma total de los precios de los televisores es: ${sumaTelevisores}');
  print('La suma total de los precios totales es: ${totalElectrodomesticos}');

}