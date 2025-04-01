import 'dart:math';

void main() {
  //Inicializando as variáveis
  final random = Random();

  List<int> lista1 = List.generate(5, (index) => random.nextInt(100));
  List<int> lista2 = List.generate(5, (index) => random.nextInt(100));

  //Chamando função para imprimir lista
  imprimirLista(lista1);
  imprimirLista(lista2);

  //Inicilizando variável soma e imprindo-a
  List<int> listaSoma = imprimirSoma(lista1, lista2);
  imprimirLista(listaSoma);
}

//Metodo para obter os valores de uma lista e transforma-los em uma unica String (join)
void imprimirLista(List<int> lista) {
  print('Lista: ' + lista.join(', '));
}

//Percorre as listas e adiciona a soma em outra temporaria
List<int> imprimirSoma(List<int> lista1, List<int> lista2) {
  List<int> listaTemp = [];
  for (int i = 0; i < lista1.length; i++) {
    listaTemp.add(lista1[i] + lista2[i]);
    print('${lista1[i]} + ${lista2[i]}');
  }
  return listaTemp;
}
