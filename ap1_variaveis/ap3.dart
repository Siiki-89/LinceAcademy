import 'dart:math';
void main() {
  final random = Random();
  int n1 = random.nextInt(100);
  int n2 = random.nextInt(100);

  print('Os valroes são: $n1, $n2');

  int temporario = n1;
  n1 = n2;
  n2 = temporario;

  print('Os valores invertidos: $n1, $n2');
  
}