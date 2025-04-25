void main(){
  //Criando lista
  final List<String> lista = [
    '10',
    '2XXL7',
    'JOJ0',
    '99',
    '381',
    'AD44',
    '47',
    '2B',
    '123',
    '78'];
  
  //Chamando função para converter o texto
  converterLista(lista);
}

void converterLista(List<String> lista){
  List <int?> listaConvertida = [];

  //O que for String == 0;
  for(String texto in lista){
    listaConvertida.add(int.tryParse(texto) ?? 0);
  } 
  //Imprimindo resultado 
  print('Lista convertida: ${listaConvertida.join(', ')}');
}
