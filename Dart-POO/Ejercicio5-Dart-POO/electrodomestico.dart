abstract class Electrodomestico{
  // Atributos de la clase.
  double precioBase;
  String color;
  String consumoEnergetico;
  double peso;

  // Constructor de la clase.
  Electrodomestico.defecto({
    this.precioBase = 100.0,
    this.color = 'Blanco',
    this.consumoEnergetico = 'F',
    this.peso = 0,
  });

  // Constructor con el precio y el peso. El resto por defecto.
  Electrodomestico.precioPeso({
    this.precioBase = 100.0,
    required this.color,
    required this.consumoEnergetico,
    this.peso = 0,
  });

  // Constructor con todos los atributos.
  Electrodomestico.completo({
    required this.precioBase,
    required this.color,
    required this.consumoEnergetico,
    required this.peso,
  });

  // Metodo que comprobará que la letra del consumo sea correcta.
  bool comprobarConsumoEnergetico( String letra );

  // Metodo que comprueba si el color esta dentro del rango de colores.
  bool comprobarColor( String color );

  // Método que según el consumo energético y tamaño que tenga, aumentará su precio.
  void precioFinal();
  
}