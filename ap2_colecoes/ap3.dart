import 'dart:math';

void main(){
  final random = Random();
  List<int> lista = List.generate(50, (index) => random.nextInt(10)+12);

  print('Lista original: $lista');

  Set<int> unicos = lista.toSet();
  print('Itens únicos: $unicos');
}