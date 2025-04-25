void main(){
  //Inicializa Lista vazia
  List<int> numImpar = [];

  //Chamando funções
  numImpar = numerosImpar(5);

  //Imprimi os dados da lista
  numImpar.forEach((Impar) =>print('Impar: $Impar'));

}

//Obtem os números impares da lista
List <int> numerosImpar (int num) {
  final List <int> numImpar = [];
  for(int i=1;i<=num;i+=2){
    numImpar.add(i);
  }
  return numImpar;
}


  