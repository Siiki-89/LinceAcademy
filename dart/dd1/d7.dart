void main (){
  //Inicializando numeros
  List<int> numeros = [10, 35, 999, 126, 95, 7, 348, 462, 43, 109];

  //Imprimindo soma
  print('Soma com for: ${somaFor(numeros)}');
  print('Soma com while: ${somaWhile(numeros)}');
  print('Soma com recursão: ${somaRecursiva(numeros)}');
  print('Soma com reduce: ${somaComReduce(numeros)}');
}

//metodo usando for
int somaFor(List<int> lista){
  int somaTotal = 0;

  for(int numero in lista){
    somaTotal+=numero;
  }

  return somaTotal;
}

//metodo usando while
int somaWhile (List<int> lista){
  int i = 0;
  int somaTotal = 0;

  while(i<lista.length){
    somaTotal+=lista[i];
    i++;
  }

  return somaTotal;
}

//metodo usando recursão
int somaRecursiva(List<int> lista, [int index = 0]) {
  if (index >= lista.length) return 0;
  return lista[index] + somaRecursiva(lista, index + 1);
}

//metodo usando reduce
int somaComReduce(List<int> lista) => lista.reduce((a, b) => a + b);