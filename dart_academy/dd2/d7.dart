import 'dart:collection';
import 'dart:math';

//Classe para gerar nomes aleatórios
class GeradorNomesAleatorios {
  static final List<String> _nomes = [
    'Aureliano', 'Berenice', 'Clementino', 'Doralice', 'Eustáquio', 
    'Florisbela', 'Gervásio', 'Hermenegildo', 'Iracema', 'Jucundino',
    'Leocádia', 'Memé', 'Narciso', 'Ondina', 'Percival', 
    'Quirina', 'Rogério', 'Simeão', 'Terebentina', 'Ubaldo',
    'Vivaldina', 'Waldir', 'Xênia', 'Yolanda', 'Zózimo'
  ];
  
  static final List<String> _sobrenomes = [
    'Peregrino', 'Tertuliano', 'Quaresma', 'Solimões', 'Ventania',
    'Luar do Sertão', 'Cascavel', 'Brotinho', 'Trevoso', 'Alvoroço',
    'Pamonha', 'Bafafá', 'Ziguezague', 'Xodó', 'Bambolê',
    'Tiquinho', 'Vira-Lata', 'Zabumba', 'Xaxado', 'Banguela',
    'Fuxico', 'Zunzum', 'Quindim', 'Tremembé', 'Borborema'
  ];
  
  static String gerarNomeAleatorio() {
    final random = Random();
    final nome = _nomes[random.nextInt(_nomes.length)];
    final sobrenome = _sobrenomes[random.nextInt(_sobrenomes.length)];
    return '$nome $sobrenome';
  }
}

//Classe para controlar a fila do mercado
class FilaMercado {
  final Queue<String> _fila = Queue();
  
  //adiciona uma pessoa na fila
  void entrarNaFila() {
    final pessoa = GeradorNomesAleatorios.gerarNomeAleatorio();
    _fila.addLast(pessoa);
    print('*($pessoa) entrou na fila');
  }
  
  //Atende a próxima pessoa da fila
  void atenderProximo() {
    if (_fila.isEmpty) {
      print('A fila está vazia!');
      return;
    }
    
    final pessoa = _fila.removeFirst();
    print('*($pessoa) foi atendido(a)');
  }
  
  //Verifica se a fila está vazia
  bool get estaVazia => _fila.isEmpty;
}

void main() {
  final fila = FilaMercado();
  
  //Popula a fila com 10 pessoas
  print('Pessoas entrando na fila');
  for (int i = 0; i < 10; i++) {
    fila.entrarNaFila();
  }
  
  //Atende todas as pessoas da fila
  print('\nAtendendo as pessoas');
  while (!fila.estaVazia) {
    fila.atenderProximo();
  }
  
  print('\nTodas as pessoas foram atendidas!');
}