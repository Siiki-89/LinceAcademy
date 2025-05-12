import 'package:flutter/material.dart';

import '../modelos/pessoa.dart';

class EstadoListaDePessoas with ChangeNotifier {
  final _listaDePessoas = <Pessoa>[];

  List<Pessoa> get pessoas => List.unmodifiable(_listaDePessoas);

  void incluir(Pessoa pessoa) {
    _listaDePessoas.add(pessoa);
    notifyListeners();
  }

  void excluir(Pessoa pessoa) {
    _listaDePessoas.remove(pessoa);
    notifyListeners();
  }

  void editar(Pessoa antiga, Pessoa nova) {
    final i = _listaDePessoas.indexOf(antiga);
    if (i != -1) {
      _listaDePessoas[i] = nova;
      notifyListeners();
    }
  }

  List<Pessoa> filtrar(String filtro) {
    return _listaDePessoas
        .where((p) => p.nome.toLowerCase().contains(filtro.toLowerCase()))
        .toList();
  }
}
