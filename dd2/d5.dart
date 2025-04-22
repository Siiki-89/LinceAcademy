import 'dart:math';

//Classe que representa um item da lista de compras
class ItemDeCompra {
  final String nome;
  final int quantidade;
  bool comprado = false;
  bool semEstoque = false;

  ItemDeCompra({
    required this.nome,
    required this.quantidade,
  });

  @override
  String toString() => '$nome (x$quantidade)';
}

//Classe que gerencia a lista de compras
class ListaDeCompras {
  final List<ItemDeCompra> _itens = [];

  //Adicionar novos itens à lista de compras
  void adicionarItem(String nome, int quantidade) {
    //Valida se o item já está na lista para evitar duplicatas
    if (_itens.any((item) => item.nome.toLowerCase() == nome.toLowerCase())) {
      print('O item "$nome" já está na lista.');
    } else {
      _itens.add(ItemDeCompra(nome: nome, quantidade: quantidade));
    }
  }


  //Marcar um item como comprado
  void marcarComoComprado(String nome) {
    for (var item in _itens) {
      if (item.nome.toLowerCase() == nome.toLowerCase() && !item.comprado && !item.semEstoque) {
        item.comprado = true;
        break;
      }
    }
  }

  //Marcar um item como sem estoque
  void marcarSemEstoque(String nome) {
    for (var item in _itens) {
      if (item.nome.toLowerCase() == nome.toLowerCase() && !item.comprado && !item.semEstoque) {
        item.semEstoque = true;
        break;
      }
    }
  }

  //Exibir itens que ainda não foram comprados nem marcados como sem estoque
  void exibirListaDesejados() {
    print('Itens desejados');
    final listaPendentes = pendentes;
    if (listaPendentes.isEmpty) {
      print('Nenhum item pendente.\n');
    } else {
      for (var item in listaPendentes) {
        print(item);
      }
    }
    print('');
  }

  //Getter para itens comprados
  List<ItemDeCompra> get comprados => _itens.where((i) => i.comprado).toList();

  //Getter para itens sem estoque
  List<ItemDeCompra> get semEstoque => _itens.where((i) => i.semEstoque).toList();

  //Getter para itens pendentes
  List<ItemDeCompra> get pendentes => _itens.where((i) => !i.comprado && !i.semEstoque).toList();

  //Escolher um item pendente aleatoriamente
  ItemDeCompra? escolherItemAleatorioPendente() {
    final listaPendentes = pendentes;
    if (listaPendentes.isEmpty) return null;
    return listaPendentes[Random().nextInt(listaPendentes.length)];
  }

  //Exibir o progresso da compra
  void mostrarProgresso() {
    final progresso = (comprados.length / _itens.length) * 100;
    print(
      'Progresso: ${comprados.length}/${_itens.length} itens comprados (${progresso.toStringAsFixed(2)}%).\n',
    );
  }
}

void main() {
  final lista = ListaDeCompras();

  //Adicionando 3 itens na lista de compras
  lista.adicionarItem('Arroz', 2);
  lista.adicionarItem('Feijão', 1);
  lista.adicionarItem('Leite', 3);

  //Tentando adicionar um item repetido para demonstrar validação
  lista.adicionarItem('Arroz', 1);

  lista.exibirListaDesejados();

  //Marcando 2 itens como comprados
  lista.marcarComoComprado('Arroz');
  lista.marcarComoComprado('Feijão');

  // Marcando 1 item como sem estoque
  lista.marcarSemEstoque('Leite');

  //Exibindo itens comprados e sem estoque
  print('Itens comprados');
  for (var item in lista.comprados) {
    print(item);
  }

  print('\nItens sem estoque');
  for (var item in lista.semEstoque) {
    print(item);
  }

  print('');
  lista.mostrarProgresso();

  //Escolhendo um item pendente aleatório
  final escolhido = lista.escolherItemAleatorioPendente();
  if (escolhido != null) {
    print('Próximo item sugerido para compra: ${escolhido.nome}');
  } else {
    print('Nenhum item pendente para comprar.');
  }
}