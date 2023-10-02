import 'electrodomestico.dart';

class Television extends Electrodomestico{
  // Atributos de la clase.
  double resolucion;
  bool sintonizadorTdt;

  // Constructores de la clase.
  Television.defecto({ this.resolucion = 20, this.sintonizadorTdt = false }) : super.defecto();
  Television.precioPeso({ this.resolucion = 20, this.sintonizadorTdt = false, required super.color, required super.consumoEnergetico}) : super.precioPeso();
  Television.completo({ required this.resolucion, required this.sintonizadorTdt, required super.precioBase, required super.color, required super.consumoEnergetico, required super.peso}) : super.completo();

  // Metodo que nos aumentara el precio un 30% si las pulgadas son >40 y si tiene sintonizador, nos lo incrementara 50€ mas.
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
      case >=0 && <= 19: 
        this.precioBase += 10;
      break;
      case >= 20 && <= 49: 
        this.precioBase += 50;
      break;
      case >= 50 && <= 79: 
        this.precioBase += 80;
      break;
      case > 80: 
        this.precioBase += 100;
      break;
    }
    if ( this.resolucion > 40 && this.sintonizadorTdt == true)
      this.precioBase += this.precioBase * 0.3 + 50;
    else if ( this.sintonizadorTdt == true ){
      this.precioBase += 50;
    }
  }
  
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
    return {'Resolucion : ${resolucion}, Sintonizador TDT: ${sintonizadorTdt}, Color: ${color}, Consumo energetico: ${consumoEnergetico}, Peso: ${peso}, Precio base: ${precioBase}'}.toString();
  }
}