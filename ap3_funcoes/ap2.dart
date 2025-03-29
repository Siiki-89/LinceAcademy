import 'dart:math';

void main() {
  int vlr1 = funcaoA(funcaoB);
  int vlr2 = funcaoA(funcaoC);
  
  print('$vlr1');
  print('$vlr2');
}
int funcaoA (int Function (int) funcao){
  final random = Random();
  int n1 = random.nextInt(100);
  int n2 = random.nextInt(100);
  
  int result1 = funcao(n1);
  int result2 = funcao(n2);
  
  return result1+result2;
}
int funcaoB (int numero){
  return numero * 4;
}
int funcaoC (int numero){
  return numero * 2;
}