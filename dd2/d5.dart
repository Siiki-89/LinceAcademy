import 'dart:math';

class Item {
  final String nome;
  final int quantidade;
  
  Item(this.nome, this.quantidade);
  
  @override
  String toString() => '$quantidade x $nome';
}

class ListaCompras {
  final List<Item> _desejados = [];
  final List<Item> _comprados = [];
  final List<Item> _semEstoque = [];
  
  //Inclui novos itens desejados
  void incluirItem(String nome, int quantidade) {
    _desejados.add(Item(nome, quantidade));
  }
  
  //Marca item como comprado
  void marcarComoComprado(int index) {
    if (index >= 0 && index < _desejados.length) {
      _comprados.add(_desejados.removeAt(index));
    }
  }
  
  //Marca item como sem estoque
  void marcarSemEstoque(int index) {
    if (index >= 0 && index < _desejados.length) {
      _semEstoque.add(_desejados.removeAt(index));
    }
  }
  
  //Exibe itens desejados
  void exibirItensDesejados() {
    print('\nItens a comprar:');
    for (int i = 0; i < _desejados.length; i++) {
      print('${i+1}. ${_desejados[i]}');
    }
  }
  
  //escolhe um item pendente aleatoriamente
  Item? escolherItemAleatorio() {
    if (_desejados.isEmpty) return null;
    final random = Random();
    return _desejados[random.nextInt(_desejados.length)];
  }
  
  //Mostra indicador de progresso
  void mostrarProgresso() {
    final total = _desejados.length + _comprados.length + _semEstoque.length;
    final concluidos = _comprados.length + _semEstoque.length;
    print('\nProgresso: $concluidos/$total');
  }
  
  //Métodos adicionais para exibir todas as listas
  void exibirResumo() {
    exibirItensDesejados();
    
    print('\nItens comprados:');
    _comprados.forEach((item) => print('✓ ${item}'));
    
    print('\nItens sem estoque:');
    _semEstoque.forEach((item) => print('✗ ${item}'));
    
    mostrarProgresso();
  }
}

void main() {
  final lista = ListaCompras();
  
  //Adicionando itens à lista
  lista.incluirItem('Arroz', 2);
  lista.incluirItem('Feijão', 1);
  lista.incluirItem('Macarrão', 3);
  lista.incluirItem('Carne', 1);
  lista.incluirItem('Leite', 4);
  
  print('Lista de compras inicial');
  lista.exibirResumo();
  
  //Simulando compra de itens
  print('\nMarcando itens comprados');
  lista.marcarComoComprado(0); // Arroz
  lista.marcarComoComprado(1); // Macarrão (índice mudou após remoção do Arroz)
  
  //Simulando item sem estoque
  print('\nItens sem estoque');
  lista.marcarSemEstoque(1); // Leite (índices mudaram após remoções anteriores)
  
  //Escolhendo item aleatório
  final itemAleatorio = lista.escolherItemAleatorio();
  print('\nItem aleatório pendente: ${itemAleatorio?.nome ?? "Nenhum item pendente"}');
  
  //Exibindo situação final
  print('\nSituação final');
  lista.exibirResumo();
}