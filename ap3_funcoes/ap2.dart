import 'dart:math';

void main() {
  //Inicializando as variáveis
  int vlr1 = funcaoA(funcaoB);
  int vlr2 = funcaoA(funcaoC);
  
  //Imprimindo os valores
  print('$vlr1');
  print('$vlr2');
}

//Função que utiliza outra função como parametro
int funcaoA (int Function (int) funcao){
  final random = Random();
  int n1 = random.nextInt(100);
  int n2 = random.nextInt(100);
  
  int result1 = funcao(n1);
  int result2 = funcao(n2);
  
  return result1+result2;
}

//Funções A e B
int funcaoB (int numero){
  return numero * 4;
}
int funcaoC (int numero){
  return numero * 2;
}