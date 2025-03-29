import 'dart:math';

void main() {
  final random = Random();

  List<int> lista1 = List.generate(5, (index) => random.nextInt(100));
  List<int> lista2 = List.generate(5, (index) => random.nextInt(100));

  imprimirLista(lista1);
  imprimirLista(lista2);

  List<int> listaSoma = imprimirSoma(lista1, lista2);
  imprimirLista(listaSoma);
}

void imprimirLista(List<int> lista) {
  print('Lista: ' + lista.join(', '));
}

List<int> imprimirSoma(List<int> lista1, List<int> lista2) {
  List<int> listaTemp = [];
  for (int i = 0; i < lista1.length; i++) {
    listaTemp.add(lista1[i] + lista2[i]);
    print('${lista1[i]} + ${lista2[i]}');
  }
  return listaTemp;
}
