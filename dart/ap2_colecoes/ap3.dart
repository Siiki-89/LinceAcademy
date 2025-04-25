import 'dart:math';

void main(){
  //Inicializando as variáveis
  final random = Random();
  final List<int> lista = List.generate(50, (index) => random.nextInt(12)+10);

  //Imprimindo números de 10 a 21
  print('Lista original: $lista');

  //Obtendo valores únicos e imprimindo-os
  Set<int> unicos = lista.toSet();
  print('Itens únicos: $unicos');
}