class Libro{
  // Atributos de la clase.
  String isbn;
  String titulo;
  String autor;
  int numeroPaginas;

  // Constructor completo.
  Libro({
    required this.isbn,
    required this.titulo,
    required this.autor,
    required this.numeroPaginas,
  });

  // Getters y Setters.
  String get getIsbn => this.isbn;

  set setIsbn(String isbn) => this.isbn = isbn;

  get getTitulo => this.titulo;

  set setTitulo( titulo) => this.titulo = titulo;

  get getAutor => this.autor;

  set setAutor( autor) => this.autor = autor;

  get getNumeroPaginas => this.numeroPaginas;

  set setNumeroPaginas( numeroPaginas) => this.numeroPaginas = numeroPaginas;

  // toString().
  @override
  String toString() {
    return {'El libro ${titulo} con ISBN: ${isbn} creado por el Autor: ${autor}, tiene ${numeroPaginas} paginas.'}.toString();
  }

  // Metodo que compara dos libros.
  String comparaPaginas( Libro a ){
    if (a.numeroPaginas > this.numeroPaginas)
      return 'El libro ${a.titulo} tiene mas paginas que ${this.titulo}';
    else if (a.numeroPaginas < this.numeroPaginas)
      return 'El libro ${this.titulo} tiene mas paginas que ${a.titulo}';
    else return 'Los dos libros tienen el mismo numero de paginas.';
  }

}