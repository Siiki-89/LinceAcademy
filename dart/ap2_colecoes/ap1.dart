import 'dart:math';

void main(){
  //Inicializando variável
  final random = Random();

  //Obtendo lista aleatoria
  final List <int> lista = List.generate(10,(index) => random.nextInt(100));

  //Imprimindo posição e valor
  for (int i = 0; i < lista.length; i++){
    print ('Indice: $i, Valor: ${lista[i]}');
  }
}