void main (){
  //Inicializando lista
  List<String> estados = ['SC', 'SP', 'MG', 'PA'];

  //Chamando função e imprimindo o retorno
  print(retirarElemento(estados, null));

}

//Função onde filtra e remove o elementro passado por parametro caso tiver
List<String> retirarElemento(List<String>? estados, String? elemento) => 
  (estados ?? []).where((e)=> e != elemento).toList();
