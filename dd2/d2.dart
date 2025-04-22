import 'dart:math';

void main() {
  final pessoa = Pessoa();
  final fornecedores = [
      FornecedorDeSanduiches(),
      FornecedorDeBolos(),
      FornecedorDeSaladas(),
      FornecedorDePetiscos(),
      FornecedorDeUltraCaloricos(),
    ];


  //Realizando refeições até que a pessoa esteja satisfeita ou em excesso de calorias
  while (pessoa.precisaDeRefeicao) {
    final fornecedorAleatorio = fornecedores[Random().nextInt(fornecedores.length)];
    pessoa.refeicao(fornecedorAleatorio);
  }

  pessoa.informacoes();

}

//Enum de status calórico
enum StatusCalorico {
  deficitExtremo,
  deficit,
  satisfeito,
  excesso
}

//Interface do fornecedor 
abstract class Fornecedor {
  final _random = Random();
  late List<Produto> _produtosDisponiveis;

  Produto fornecer() {
    return _produtosDisponiveis[_random.nextInt(_produtosDisponiveis.length)];
  }
}

class Produto {
  Produto(this.nome, this.calorias);

  /// Nome deste produto
  final String nome;

  /// Total de calorias
  final int calorias;
}

class FornecedorDeBebidas {
  final _bebidasDisponiveis = <Produto>[
    Produto('Agua', 0),
    Produto('Refrigerante', 200),
    Produto('Suco de fruta', 100),
    Produto('Energetico', 135),
    Produto('Cafe', 60),
    Produto('Cha', 35),
  ];
}
//Novos fornecedores
class FornecedorDeSanduiches extends Fornecedor {
  final _sanduiches = <Produto> [
    Produto('Sanduíche de carne assada', 400),
    Produto('Sanduíche de atum', 250),
    Produto('Sanduíche de presento', 270)
  ];
}
class FornecedorDeBolos extends Fornecedor {
  final _bolos = <Produto> [
    Produto('Bolo Maria', 230),
    Produto('Bolo de formigueiro', 200),
    Produto('Bolo de fuba', 220)
  ];
}
class FornecedorDeSaladas extends Fornecedor {
  final _saladas = <Produto> [
    Produto('Salada caesar', 100),
    Produto('Salada caprese', 120),
    Produto('Salada grega', 130)
  ];

}
class FornecedorDePetiscos extends Fornecedor {
  final _petiscos = <Produto> [
    Produto('Batata frita', 300),
    Produto('Filezinho de fragon', 250),
    Produto('Coxinha', 200)
  ];
}
class FornecedorDeUltraCaloricos extends Fornecedor {
  final _ultraCaloricos = <Produto> [
    Produto('Bacon frito', 400),
    Produto('Camarão empanado', 450),
    Produto('Onion rings', 410)
  ];
}

class Pessoa {
  final _random = Random();
  int _caloriasConsumidas = 0;
  int _numeroRefeicoes = 0;

  //Definindo nível inicial de calorias
  Pessoa() {
    _caloriasConsumidas = _random.nextInt(3000);
  }

  //status de calorias
  StatusCalorico get status {
    if (_caloriasConsumidas <= 500) {
      return StatusCalorico.deficitExtremo;
    } else if (_caloriasConsumidas <= 1800) {
      return StatusCalorico.deficit;
    } else if (_caloriasConsumidas <= 2500) {
      return StatusCalorico.satisfeito;
    } else {
      return StatusCalorico.excesso;
    }
  }

  //Verifica se a pessoa precisa de refeições
  bool get precisaDeRefeicao {
    return status == StatusCalorico.deficitExtremo || status == StatusCalorico.deficit;
  }

  //Consome um produto e atualiza informações
  void refeicao(Fornecedor fornecedor) {
    final produto = fornecedor.fornecer();
    print('Consumindo ${produto.nome} (${produto.calorias} calorias)');
    _caloriasConsumidas += produto.calorias;
    _numeroRefeicoes++;
  }

  //Imprime as informações da pessoa
  void informacoes() {
    print('Calorias consumidas: $_caloriasConsumidas');
    print('Número de refeições: $_numeroRefeicoes');
    print('Status: $status');
  }
}