import 'dart:math';

void main(){
  final random = Random();
  
  List <int> lista = List.generate(10,(index) => random.nextInt(100));

  for (int i = 0; i < lista.length; i++){
    print ('Indice: $i, Valor: ${lista[i]}');
  }
}