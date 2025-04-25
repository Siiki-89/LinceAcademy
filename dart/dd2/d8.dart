import 'dart:collection';
import 'dart:math';

//Classe que representa uma Figura
class Figura {
  final String nome;
  final int codigo;
  
  Figura(this.nome, this.codigo);
  
  @override
  String toString() => '$codigo - $nome';
}

//Classe que gerencia o Álbum
class AlbumFiguras {
  final Set<Figura> _figurasColadas = {}; //Usando Set para evitar repetições
  final List<Figura> _figurasRepetidas = []; //Lista de repetidas (permite List aqui)
  
  //Adiciona figuras ao álbum (retorna quantas eram repetidas)
  int colarFiguras(Iterable<Figura> figuras) {
    int repetidas = 0;
    
    for (var figura in figuras) {
      if (!_figurasColadas.add(figura)) {
        _figurasRepetidas.add(figura);
        repetidas++;
      }
    }
    
    return repetidas;
  }
  
  //Verifica se o álbum está completo
  bool get estaCompleto => _figurasColadas.length == 20;
  
  //Imprime as figuras coladas em ordem de código
  void imprimirAlbum() {
    print('\nAlbum de figuras');
    final figurasOrdenadas = _figurasColadas.toList()
      ..sort((a, b) => a.codigo.compareTo(b.codigo));
    
    for (var figura in figurasOrdenadas) {
      print(figura);
    }
  }
  
  //Getter para figuras repetidas
  int get totalRepetidas => _figurasRepetidas.length;
}

//Classe que representa um pacote de figuras
class PacoteFiguras {
  static final List<Figura> _todasFiguras = _criarListaFiguras();
  
  //Cria a lista com 20 figuras únicas
  static List<Figura> _criarListaFiguras() {
    return [
      Figura('Pelé', 1),
      Figura('Maradona', 2),
      Figura('Messi', 3),
      Figura('Cristiano Ronaldo', 4),
      Figura('Ronaldo Fenômeno', 5),
      Figura('Zidane', 6),
      Figura('Ronaldinho Gaúcho', 7),
      Figura('Beckham', 8),
      Figura('Neymar', 9),
      Figura('Mbappé', 10),
      Figura('Salah', 11),
      Figura('Van Dijk', 12),
      Figura('Lewandowski', 13),
      Figura('Haaland', 14),
      Figura('Modric', 15),
      Figura('Kane', 16),
      Figura('De Bruyne', 17),
      Figura('Courtois', 18),
      Figura('Benzema', 19),
      Figura('Mané', 20),
    ];
  }
  
  //Gera um pacote com 4 figuras aleatórias
  static Queue<Figura> gerarPacote() {
    final random = Random();
    final figurasDisponiveis = List<Figura>.from(_todasFiguras); //Cópia
    final pacote = Queue<Figura>();
    
    for (int i = 0; i < 4; i++) {
      if (figurasDisponiveis.isEmpty) break;
      
      final index = random.nextInt(figurasDisponiveis.length);
      pacote.addLast(figurasDisponiveis.removeAt(index));
    }
    
    return pacote;
  }
}

void main() {
  final album = AlbumFiguras();
  int pacotesGerados = 0;
  
  print('Iniciando colagem no album');
  
  while (!album.estaCompleto) {
    final pacote = PacoteFiguras.gerarPacote();
    pacotesGerados++;
    
    final repetidas = album.colarFiguras(pacote);
    print('Pacote $pacotesGerados: ${4 - repetidas} figuras novas, $repetidas repetidas');
  }
  
  print('\nAlbum completo!');
  print('Total de pacetes gerados: $pacotesGerados');
  print('Total de figuras repetidas: ${album.totalRepetidas}');
  
  album.imprimirAlbum();
}