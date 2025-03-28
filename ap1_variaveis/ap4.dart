import 'dart:math';

void main() {
  final random = Random();
  int n1 = random.nextInt(100);
  int n2 = random.nextInt(100);

  double resultado = n1/n2;

  

  int inteira = resultado.truncate();
  double decimal = resultado - inteira;

  print('Parte inteira: $inteira \nDecimal: $decimal'); 
  print('$resultado'); 
}