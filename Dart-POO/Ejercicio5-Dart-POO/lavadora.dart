import 'electrodomestico.dart';

class Lavadora implements Electrodomestico{
  // Atributos de la clase.
  double carga;
  @override
  String color;
  @override
  String consumoEnergetico;
  @override
  double peso;
  @override
  double precioBase;

  // Constructores de la clase.
  Lavadora.defecto({
    this.carga = 5,
    this.precioBase = 100.0,
    this.color = 'Blanco',
    this.consumoEnergetico = 'F',
    this.peso = 0,
  });

  Lavadora.precioPeso({ 
    required this.carga, 
    this.precioBase = 100.0,
    required this.color,
    required this.consumoEnergetico,
    this.peso = 0,
  });

  Lavadora.completo({ 
    required this.carga, 
    required this.precioBase, 
    required this.color, 
    required this.consumoEnergetico, 
    required this.peso
  });
  
  // Metodo que nos incrementará el precio en 50€ en caso de que nuestra carga sea >30 kg.
  void precioFinal(){
    switch(this.consumoEnergetico.toUpperCase()){
      case 'A': 
        this.precioBase += 100;
      break;
      case 'B': 
        this.precioBase += 80;
      break;
      case 'C': 
        this.precioBase += 60;
      break;
      case 'D': 
        this.precioBase += 50;
      break;
      case 'E': 
        this.precioBase += 30;
      break;
      case 'F': 
        this.precioBase += 10;
      break;
    }
    switch(this.peso){
      case (>=0 && <= 19):
        this.precioBase += 10;
      break;
      case (>= 20 && <= 49): 
        this.precioBase += 50;
      break;
      case >= 50 && <= 79: 
        this.precioBase += 80;
      break;
      case > 80: 
        this.precioBase += 100;
      break;
    }
    if ( this.carga > 30 )
      this.precioBase += 50;
  }
  
  // Getter.
  double get getCarga => this.carga;
  
  @override
  // Metodo que comprueba si el color esta dentro del rango de colores.
  bool comprobarColor( String color ){
    if ( color.toLowerCase().contains('[blanco, negro, rojo, azul, gris]')){
      return true;
    } else {
      this.color = 'blanco';
      return false;
    }
  }
  
  @override
  // Metodo que comprobará que la letra del consumo sea correcta.
  bool comprobarConsumoEnergetico( String letra ){
    if ( letra.toUpperCase().contains('[A-F]')){
      return true;
    }else {
      this.consumoEnergetico = 'F';
      return false;
    }
  }

  @override
  String toString() {
    return {'Carga: ${carga}, Color: ${color}, Consumo energetico: ${consumoEnergetico}, Peso: ${peso}, Precio base: ${precioBase}'}.toString();
  }
}