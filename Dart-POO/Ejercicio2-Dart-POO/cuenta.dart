class Cuenta{
  // Atributos de la clase.
  String titular;
  double cantidad;

  // Constructor de la clase.
  Cuenta({
    required this.titular,
    this.cantidad = 0,
  });

  // Getters y Setters.
  String get getTitular{
    return this.titular;
  }

  set setTitular( String pTitular ){
    this.titular = pTitular;
  }

  double get getCantidad{
    return this.cantidad;
  }

  set setCantidad( double pCantidad ){
    this.cantidad = pCantidad;
  }

  @override
  String toString() {
    return {'Nombre del titular de la cuenta: ${titular}, Cantidad restante en la cuenta: ${cantidad}'}.toString();
  }

  // Metodos especiales de la clase.

  // Metodo que ingresa dinero en la cuenta del titular.
  void ingresar( double ingreso ){
    if ( ingreso > 0)
      this.cantidad += ingreso;
  }

  // Metodo para retirar dinero de la cuenta del titular.
  void retirar( double retirada ){
    if (retirada < 0) {
      throw 'La cantidad a retirar, es negativa. No operamos con valores negativos.';
    }
    else if ( this.cantidad - retirada < 0)
      this.cantidad = 0;
    else
      this.cantidad -= retirada;
  }

}