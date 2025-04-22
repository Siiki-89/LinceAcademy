
class Musica {
  final String titulo;
  final String artista;
  final String album;
  final int tempSegundos;

  Musica({
    required this.titulo,
    required this.artista,
    required this.album,
    required this.tempSegundos,
  });
}
class BibliotecaDeMusica {
  final _musicas = <Musica> [];
  //Adicionar musica a classe Musica
  void adicionarMusica (Musica musica) => _musicas.add(musica);

  void imprimirBiblioteca () {
    print('Biblioteca de musicas: ');
    //Imprimir lista de musicas
    for(Musica musica in _musicas){
      print('Titulo: ${musica.titulo}, artista: ${musica.artista}, album: ${musica.album}, segundos ${musica.tempSegundos}');
    }
    print('Quantidade de musicas: ${_musicas.length}');
    
    //Contar a quantidade total de segundos
    final tempoTotalSegundos =
        _musicas.fold(0, (total, musica) => total + musica.tempSegundos);

    //Convertendo para horas
    print('Tempo total: ${(tempoTotalSegundos / 3600).toStringAsFixed(2)} horas');

  }
  void buscarTitulo (String buscar){
    //Buscar o titulo
    final resultado = _musicas.where((r) => r.titulo.toLowerCase() == buscar.toLowerCase()).toList();
    //Verificar se foi encontrado
    gerarResultado(resultado, 'titulo');
  }
  void buscarArtista (String buscar){
    //Buscar o artista
    final resultado = _musicas.where((r) => r.artista.toLowerCase() == buscar.toLowerCase()).toList();
    //Verificar se foi encontrado
    gerarResultado(resultado, 'artista');
  }
  void buscarAlbum (String buscar){
    //Buscar o artista
    final resultado = _musicas.where((r) => r.album.toLowerCase() == buscar.toLowerCase()).toList();
    //Verificar se foi encontrado
    gerarResultado(resultado, 'album');
  }
  //Gerar resultado da pesquisa
  void gerarResultado (List<Musica> resultado, String texto){
    if(resultado.isEmpty){
      print('Nenhum resultado obtido buscando pelo $texto');
    } else {
      for(Musica musica in resultado){
        print('Titulo: ${musica.titulo}, artista: ${musica.artista}, album: ${musica.album}, segundos ${musica.tempSegundos}');
      }
    }
  }
}
void main (){
  final biblioteca = BibliotecaDeMusica();

  // Adicionando músicas
  biblioteca.adicionarMusica(Musica(
    titulo: 'Blinding Lights',
    artista: 'The Weeknd',
    album: 'After Hours',
    tempSegundos: 200,
  ));

  biblioteca.adicionarMusica(Musica(
    titulo: 'Clair de Lune',
    artista: 'Claude Debussy',
    album: 'Suite Bergamasque',
    tempSegundos: 300,
  ));

  biblioteca.adicionarMusica(Musica(
    titulo: 'Lose Yourself',
    artista: 'Eminem',
    album: '8 Mile',
    tempSegundos: 326,
  ));

  biblioteca.adicionarMusica(Musica(
    titulo: 'Garota de Ipanema',
    artista: 'Tom Jobim',
    album: 'Getz/Gilberto',
    tempSegundos: 275,
  ));

  biblioteca.imprimirBiblioteca();
  biblioteca.buscarTitulo('xablau');
  biblioteca.buscarAlbum('Suite Bergamasque');
  biblioteca.buscarArtista('Eminem');
}
