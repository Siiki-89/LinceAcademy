import 'dart:math';
void main() {
  //Inicializando as variáveis
  final random = Random();
  int n1 = random.nextInt(100);
  int n2 = random.nextInt(100);

  //Imprimindo os números aleatorios
  print('Os valores são: $n1, $n2');

  //Invertendo os números
  final int temporario = n1;
  n1 = n2;
  n2 = temporario;
  
  //Imprimir valores invertidos
  print('Os valores invertidos: $n1, $n2');
  
}