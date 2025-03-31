import 'dart:math';

void main(){
  //Inicializando as variáveis
  final random = Random();
  final List <int> lista = List.generate(50, (index) => random.nextInt(15));

  //Imprimindo lista original
  print('Lista original: $lista');

  //Removendo números pares e imprimindo-os
  lista.removeWhere((numero) => numero % 2 == 0);
  print('Lista atualizada: $lista');
}