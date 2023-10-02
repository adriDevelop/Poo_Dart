import 'serie.dart';
import 'videojuego.dart';

void main(){
  // Creamos dos arrays, uno de Series y otro de Videojuegos, de 5 posiciones cada uno.
  List<Serie> series = [];
  List<Videojuego> videojuegos = [];

  for (int i = 0; i < 5; i++){
    series.add(new Serie.exceptoEnt(titulo: 'Mujeres desesperadas', numeroTemporadas: 8, genero: 'Comedia', creador: 'Michael Schumaker'));
    videojuegos.add(new Videojuego.exceptoEntr(titulo: 'Starfield', horasEstimadas: 100, compania: 'Bethesda'));
  }

  videojuegos.add(new Videojuego.exceptoEntr(titulo: 'Fallout 2', horasEstimadas: 250, compania: 'Bethesda'));
  videojuegos.add(new Videojuego.exceptoEntr(titulo: 'Fallout 3', horasEstimadas: 150, compania: 'Bethesda'));

  // Entregamos algunos videojuegos y algunas series.
  series.first.entregar();
  series.last.entregar();

  videojuegos.first.entregar();
  videojuegos.last.entregar();

  // Vamos a contar cuantos Videojuegos y cuantas Series hay entregados. Al contarlos, los devolveremos.
  int seriesDevueltas = 0;
  int videojuegosDevueltos = 0;
  for (int i = 0; i < 5; i++){
    if ( series[i].isEntregado() == true )
      seriesDevueltas++;
    if ( videojuegos[i].isEntregado() == true ){
      videojuegosDevueltos++;
    }
  }

  print('Numero de series devueltas: ${seriesDevueltas}');
  print('Numero de videojuegos devueltos: ${videojuegosDevueltos}');

  // Indicamos cual es el videojuego que tiene mas horas estimadas y la serie con mas temporadas.
  Videojuego masHoras = Videojuego.defecto();

  for ( int i = 0; i < videojuegos.length; i++ ){
      if (videojuegos[i].compareTo(masHoras) > 0) {
      masHoras = videojuegos[i];
    }
  }

  print(masHoras.toString());

}