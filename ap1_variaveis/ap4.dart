import 'dart:math';

void main() {
  //Inicializando as variáveis
  final random = Random();
  int n1 = random.nextInt(100);
  int n2 = random.nextInt(100);

  //Obtendo a divisão
  double resultado = n1/n2;

  //Obter inteira e decimal
  int inteira = resultado.truncate();
  double decimal = resultado - inteira;

  //Imprimir valores
  print('Aleatorio 1: $n1 \n'
  'Aleatorio 2: $n2 \n'
  'Inteira: $inteira \n'
  'Decimal: $decimal \n'
  'Divisão $resultado'); 
}