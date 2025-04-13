void main (){
  String paragrafo = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis nunc et posuere vehicula. Mauris lobortis quam id lacinia porttitor.';

  
  print('Parágrafo: $paragrafo');
  

  print('Número de palavras ${obterPalavras(paragrafo)}');
  print('Tamanho do texto: ${obterTexto(paragrafo)}');
  print('Numero de frases: ${obterFrases(paragrafo)}');
  print('Numero de vogais: ${obterVogais(paragrafo)}');
  print('Consoantes encontradas: ${obterConsoantes(paragrafo).join(', ')}');
}

int obterPalavras(String texto) => texto.split(' ').length;

int obterTexto(String texto) => texto.split('').length;

int obterFrases(String texto) => texto.split('.').length;

int obterVogais (String texto){
  String vogais = 'aeiouAEIUO';

  int numVogais = 0;
  for(String letra in texto.split('')){
    if(vogais.contains(letra)){
      numVogais++;
    }
  }
  return numVogais;
}
List<String> obterConsoantes (String texto){
  Set<String> consoantesSet = {};
  String consoantes = 'bcdfghjklmnpqrstvwxyz';

  for(String letra in texto.split('')){
    if(consoantes.contains(letra.toLowerCase())){
      consoantesSet.add(letra.toLowerCase());
    }
  }
  return consoantesSet.toList();
}