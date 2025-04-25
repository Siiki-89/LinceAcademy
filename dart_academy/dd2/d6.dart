import 'dart:collection';

//Classe que representa uma carta
class Carta {
  final String valor;
  final String naipe;

  Carta({required this.valor, required this.naipe}) {
    //Valida se o naipe é válido
    const naipesValidos = ['♣', '♥', '♠', '♦'];
    if (!naipesValidos.contains(naipe)) {
      throw ArgumentError('Naipe inválido: $naipe');
    }
  }

  @override
  String toString() => '$valor $naipe';
}

//Classe que representa o baralho
class Baralho {
  final Queue<Carta> _cartas = Queue<Carta>();

  //Empilha uma carta no topo do baralho
  void empilhar(Carta carta) {
    _cartas.addFirst(carta);
  }

  //Remove uma carta do topo do baralho
  Carta removerCartaDoTopo() {
    if (_cartas.isEmpty) {
      throw StateError('Baralho vazio!');
    }
    return _cartas.removeFirst(); // remove do topo (início)
  }

  //Verifica se o baralho está vazio
  bool get vazio => _cartas.isEmpty;

  //Exibe o estado atual do baralho
  void exibir() {
    print('Baralho atual:');
    if (_cartas.isEmpty) {
      print('O baralho está vazio.');
    } else {
      for (var carta in _cartas) {
        print(carta);
      }
    }
    print('');
  }
}

void main() {
  final baralho = Baralho();

  //Adicionando as cartas ao baralho na ordem especificada
  baralho.empilhar(Carta(valor: 'A', naipe: '♣')); // Paus (U+2663)
  baralho.empilhar(Carta(valor: 'A', naipe: '♥')); // Copas (U+2665)
  baralho.empilhar(Carta(valor: 'A', naipe: '♠')); // Espadas (U+2660)
  baralho.empilhar(Carta(valor: 'A', naipe: '♦')); // Ouros (U+2666)

  //Exibindo o baralho inicial
  print('Estado inicial do baralho');
  baralho.exibir();

  //Estrutura de repetição para remover todas as cartas do baralho
  print('Removendo cartas do baralho');
  while (!baralho.vazio) {
    final cartaRemovida = baralho.removerCartaDoTopo();
    print('Carta removida: $cartaRemovida');
  }

  //Exibindo o estado final do baralho
  print('\nEstado final do baralho');
  baralho.exibir();
}