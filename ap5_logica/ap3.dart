import 'dart:math';

void main(){
  //Chamando Random e inicializando função com número aleatorio entra 100 a 1000
  final random = Random();
  int num = random.nextInt(901)+100;

  //Imprimindo soma dos números pares
  print("A soma dos números pares entre 0 e $num e ${somaPar(num)}");
}

//Função para obter a soma dos números pares
int somaPar(int num){
  int soma=0;
  for(int i=2; i<=num;i+=2){
    soma+=i;
  }
  return soma;
}