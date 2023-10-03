import 'libro.dart';

void main(){
  // Creamos dos objetos Libro con los valores que queramos y mostrarlos por pantalla.
  Libro l1 = new Libro(isbn: '12345-67890-09876-54321', titulo: 'Nacidos de la bruma', autor: 'Brandom Sanderson', numeroPaginas: 670);
  Libro l2 = new Libro(isbn: '09876-54321-12345-67890', titulo: 'Kika super bruja', autor: 'Kika', numeroPaginas: 160);

  print(l1);
  print(l2);

  // Mostramos cual de los dos tiene mas paginas.
  print(l1.comparaPaginas(l2));
}