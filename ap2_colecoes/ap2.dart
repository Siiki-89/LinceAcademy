import 'dart:math';

void main(){
  final random = Random();
  List <int> lista = List.generate(50, (index) => random.nextInt(15));
  print('Lista original: $lista');
(
  lista.removeWhere((numero) => numero % 2 == 0));
  print('Lista atualizada: $lista');
}